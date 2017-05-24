// package com.haifeiWu.MainApp;

import java.util.Date;
import java.io.*;
import java.net.*;


// import com.haifeiWu.dataColle.HttpRequest;
// import com.haifeiWu.dataColle.SerialRead;
// import com.haifeiWu.utils.ReadConfFile;


public class MainApp {
	public static void main(String[] args) {
		String requestStr = null;
    	SerialRead reader = new SerialRead();  
    	reader.init(); 
        while(true){
        	requestStr = "deviceId="+SerialRead.oldDeviceId+"&wristId=FFFFFFFF&txID=00";
        	System.out.println(requestStr);
        	if(SerialRead.isActive == true){
        		SerialRead.isActive = false;//将该激活码设置为false
        		SerialRead.startTime = new Date();//设置事件为当前时间
        		SerialRead.nowTime = new Date();//更新当前时间
        		System.out.println("SerialRead.isActive == true");
        	}else if(SerialRead.isFirstAction == false){//当事件未被触发时
        		System.out.println("SerialRead.isActive == false");
        		if(((new Date().getTime())-SerialRead.startTime.getTime())/1000>60){
        			//发送停止录像的请求信息
        			HttpRequest.sendPost(ReadConfFile.getString("requestInterface"), requestStr);
        			SerialRead.startTime = new Date();//更新时间为当前时间
        			System.out.println("超时……");
        		}
        	}/*else if(SerialRead.isSend == true){
				SerialRead.isSend = false;
				Socket socket=null;
				try { 
					//对服务端发起连接请求 
					socket=new Socket("192.168.1.83", 9800); 
					//给服务端发送响应信息
					OutputStream os=socket.getOutputStream();
					os.write("45678909876545678".getBytes());//ReadConfFile.getString("spkString")
					os.flush();
					System.out.println("haifeisi---------------------------->");
				} catch (IOException e) { 
					e.printStackTrace(); 
				}
			}*/
        	
        try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}//延时触发
        
        }
	}
}
