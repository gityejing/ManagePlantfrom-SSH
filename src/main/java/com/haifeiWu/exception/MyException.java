package com.haifeiWu.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;

/**
 * 处理异常，将异常堆栈信息加到log.info中，方便错误分析
 * 
 * @author WXY
 * 
 */
public class MyException extends SimpleMappingExceptionResolver {
	private Logger log = Logger.getLogger(this.getClass());

	@Override
	protected ModelAndView doResolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex) {
		ex.printStackTrace();
		log.info("-----------进入我的Exception处理------------");

		// 处理exception
		log.info(request.getRequestURI() + "      " + ex.getMessage() + "     "
				+ ex.getStackTrace());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsp/error/null");
		return mav;
	}
}
