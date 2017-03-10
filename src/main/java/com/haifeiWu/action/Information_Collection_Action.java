package com.haifeiWu.action;

import java.util.List;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.haifeiWu.base.BaseAction;
import com.haifeiWu.entity.PHCSMP_Dic_Collection_Item;
import com.haifeiWu.entity.PHCSMP_Information_Collection;
import com.haifeiWu.entity.PHCSMP_Staff;
import com.haifeiWu.entity.PHCSMP_Suspect;
import com.haifeiWu.service.InformationCollectionService;
import com.haifeiWu.service.RoomService;
import com.haifeiWu.service.SuspectService;
import com.haifeiWu.utils.CompleteCheck;

/**
 * 信息采集的action
 * 
 * @author wuhaifei
 * @d2016年8月14日
 */
@Controller
@Scope("prototype")
public class Information_Collection_Action extends
		BaseAction<PHCSMP_Information_Collection> {
	private static final long serialVersionUID = 1L;

	@Autowired
	private InformationCollectionService informationCollectionService;
	@Autowired
	private SuspectService suspectService;
	@Autowired
	private RoomService roomService;

	// 保存信息
	public String addInformationCollection() throws Exception {
		// 维护进出门的标志位
		int roomId = roomService.findbyIp(request.getRemoteAddr()).getRoom_ID();
		PHCSMP_Suspect SuspectInfor = suspectService.findByRoomID(roomId);
		SuspectInfor.setCardReader_Switch(1);
		suspectService.saveSuspect(SuspectInfor);
		// 通过反射加载身物品检查记录的类
		if (model == null) {// 当数据为空时
			return "NULL";
		}
		fullCheck();
		model.setIc_EndTime(new DateTime().toString("yyy-mm-dd HH:mm"));
		informationCollectionService.saveCollectionInfor(model);

		return "addInformationCollection";
	}

	// 加载信息，
	public String loadInfor() {// 注意处理房间号找不到异常，或者嫌疑人房间号为空的异常
		// 维护进出门的标志位
		int roomId = roomService.findbyIp(request.getRemoteAddr()).getRoom_ID();
		PHCSMP_Suspect SuspectInfor = suspectService.findByRoomID(roomId);
		suspectService.updateSwitch(1, SuspectInfor.getSuspect_ID());
		// 将嫌疑人信息存放到request中
		request.setAttribute("SuspectInfor", SuspectInfor);
		List<PHCSMP_Dic_Collection_Item> collectionItem = informationCollectionService
				.findAllCollectionItem();
		request.setAttribute("collectionItem", collectionItem);

		PHCSMP_Staff user = (PHCSMP_Staff) request.getSession().getAttribute(
				"user");
		if (user == null) {
			return "unLoginState";
		} else {
			return "loadInfor";
		}
	}

	public String unlogin_load() {

		return "unlogin_load";
	}

	// 返回修改信息采集信息
	public String updateInfor() {
		System.out.println("档案编号：" + request.getParameter("Suspect_ID"));
		System.out.println("updateInfor：修改信息采集信息！");
		return "updateInfor";
	}

	private void fullCheck() throws ClassNotFoundException {
		Class<?> c = Class.forName(PHCSMP_Information_Collection.class
				.getName());

		int count = CompleteCheck.IsEqualsNull(model, c);
		int fieldsNumber = CompleteCheck.getFieldsNumber(model, c);

		model.setFill_record(fieldsNumber - count - 3);// 设置已填写的字段数
		model.setTotal_record(fieldsNumber - 3);// 设置应填写的字段
		System.out.println("未填写的字段：" + count);
		System.out.println("总字段：" + (fieldsNumber - 3));
		System.out.println("房间号：" + model.getRoom_ID());
	}

}
