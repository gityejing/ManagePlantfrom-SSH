package com.haifeiWu.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.haifeiWu.entity.PHCSMP_CardReader;
import com.haifeiWu.service.CardReaderService;

@Controller
@RequestMapping("/CardReaderManage")
@Scope("prototype")
public class CardReaderManageAction {
	private Logger log = Logger.getLogger(CardReaderManageAction.class);
	@Autowired
	private CardReaderService cardReaderService;

	@RequestMapping(value = "/updateCardReader", method = RequestMethod.POST)
	public String updateCardReader(@RequestParam List<Integer> cardReader_ID,
			@RequestParam List<String> cardReader_Name,
			@RequestParam List<Integer> cardReader_Type,
			HttpServletRequest request) {
		// log.info("++++++++++++++进入函数+++++++++++++++++++++++++++++++");

		try {
			for (int i = 0; i < cardReader_ID.size(); i++) {

				cardReaderService.update(cardReader_Name.get(i),
						cardReader_Type.get(i), cardReader_ID.get(i));

			}

			return loadInfor(request);
		} catch (Exception e) {
			log.info("CardReaderManage updateCardReader" + e.getStackTrace());
			return "null";
		}
	}

	@RequestMapping(value = "/loadInfor")
	public String loadInfor(HttpServletRequest request) {
		try {
			List<PHCSMP_CardReader> cardReaderList = cardReaderService
					.findAllCardReader();
			request.setAttribute("cardReaderlist", cardReaderList);
			return "WEB-INF/jsp/devicesManage/cardReader";
		} catch (Exception e) {
			log.info("CardReaderManage loadInfor" + e.getStackTrace());
			return "null";
		}
	}

}
