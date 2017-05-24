package com.haifeiWu.test;

import java.io.OutputStream;
import java.net.Socket;

public class testTCP {
	public static void main(String[] args) {
		Socket socket = null;
		while (true) {
			try {
				Thread.sleep(500);
				// 对服务端发起连接请求
				socket = new Socket("192.168.1.83", 9800);
				// 给服务端发送响应信息
				OutputStream os = socket.getOutputStream();
				os.write("45678909876545678".getBytes());// ReadConfFile.getString("spkString")
				os.flush();
				System.out.println("haifeisi---------------------------->");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
