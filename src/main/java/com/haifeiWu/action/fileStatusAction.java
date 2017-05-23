package com.haifeiWu.action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;
import com.haifeiWu.service.ActivityRecordService;
import com.haifeiWu.service.BandService;
import com.haifeiWu.service.SuspectService;
import com.haifeiWu.utils.Video;

/**
 * 录波器上传结束接口
 * 
 */

@Controller
@Scope("prototype")
public class fileStatusAction {

	private HttpServletRequest request;
	private Logger log = Logger.getLogger(fileStatusAction.class);
	// 嫌疑人信息
	@Autowired
	private SuspectService suspectService;
	@Autowired
	private BandService bandService;
	// 活动记录实例类
	@Autowired
	private ActivityRecordService activityRecordService;

	@RequestMapping(value = "/fileStatus")
	public String fileStatus(HttpServletRequest request) throws IOException,
			InterruptedException {
		try {
			long getRequest = System.currentTimeMillis();
			long sendResponse;
			this.request = request;
			JSONObject jsonRequest = JSONObject.parseObject(this.getJsonData());
			// 获取json中参数
			int uploadType = Integer.parseInt(jsonRequest
					.getString("uploadType"));
			int bandId = Integer.parseInt(jsonRequest.getString("policeId"));
			String identificationCard = jsonRequest
					.getString("identificationCard");
			// request.setAttribute("uploadType", uploadType);
			// request.setAttribute("policeId", bandId);
			// request.setAttribute("identificationCard", identificationCard);
			System.out
					.println("fileStatus收到的数据 -------------------------------------------------------------------- "
							+ uploadType
							+ "     "
							+ bandId
							+ "     "
							+ identificationCard);
			// 查询
			if (uploadType == 0) {
				String result = Video.queryDownloadFileStatu(bandId,
						identificationCard);
				String fileName = Video.getSuccessFile(result);
				// 将fileName存到数据库
				suspectService.uploadSuccess(fileName, 1, bandId,
						identificationCard);
			}
			return "success";
		} catch (Exception e) {
			log.info("fileStatus " + e.getStackTrace());
			e.printStackTrace();
			return "null";
		}
	}

	/**
	 * 解析收到的JSON数据
	 * 
	 * @return
	 */
	private String getJsonData() {
		InputStream inputStream;
		String strResponse = "";
		try {
			inputStream = request.getInputStream();
			String strMessage = "";
			BufferedReader reader;
			reader = new BufferedReader(new InputStreamReader(inputStream,
					"utf-8"));
			while ((strMessage = reader.readLine()) != null) {
				strResponse += strMessage;
			}
			reader.close();
			inputStream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return strResponse;
	}
}
