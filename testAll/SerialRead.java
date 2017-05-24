

import gnu.io.CommPortIdentifier;
import gnu.io.SerialPort;
import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;
import gnu.io.PortInUseException;
import gnu.io.UnsupportedCommOperationException;

import java.io.IOException;  
import java.io.InputStream;  
import java.util.Date;
import java.util.TooManyListenersException;  



public class SerialRead {
	public String retValue;
	public String data;
	public boolean isEmpty = true;
	public static Date nowTime = new Date();//褰撳墠鏃堕棿
	public static Date startTime = new Date();
	public static boolean isActive = false;//鏄惁琚Е鍙�
	public static boolean isFirstAction = true;
	public static String oldDeviceId = null;

	public void init() {  
	        try {  
	            
	            CommPortIdentifier portId = CommPortIdentifier.getPortIdentifier(ReadConfFile.getString("port"));  
	            // 鐩存帴鍙栧緱COM3绔彛  
	            System.out.println(portId.getName() + ":寮�鍚�");  
	            @SuppressWarnings("unused")
	            Read SerialRead = new Read(portId);
	        } catch (Exception ex) {  
	            ex.printStackTrace();  
	            System.out.println(ex.getMessage());
	        }  
	    }  
	 class Read implements  SerialPortEventListener {
	        InputStream inputStream;  
	        SerialPort serialPort;  
	        Thread readThread;  
	        public Read(CommPortIdentifier portId) throws InterruptedException {  
	            try {  
	                serialPort = (SerialPort) portId.open("MyReader", 2000);  
	                //portId.open("涓插彛鎵�鏈夎�呭悕绉�", 瓒呮椂绛夊緟鏃堕棿);  
	            } catch (PortInUseException e) {  
	                //濡傛灉绔彛琚崰鐢ㄥ氨鎶涘嚭杩欎釜寮傚父  
	                e.printStackTrace();
	                System.out.println(e.getMessage());
	            }  
	  
	            try {  
	                inputStream = serialPort.getInputStream();  
	                //浠嶤OM3鑾峰彇鏁版嵁      
	            } catch (IOException e) {  
	            	System.out.println(e.getMessage());
	            }  
	  
	            try {  
	                serialPort.addEventListener(this);  
	                //娣诲姞鐩戝惉鍣�  
	            } catch (TooManyListenersException e) {  
	            }  
	  
	            serialPort.notifyOnDataAvailable(true);  
	            /* 
	             * 渚﹀惉鍒颁覆鍙ｆ湁鏁版嵁,瑙﹀彂涓插彛浜嬩欢 
	             */  
	            try {  
	                serialPort.setSerialPortParams(9600,//娉㈢壒鐜�  
	                        SerialPort.DATABITS_8,//鏁版嵁浣嶆暟  
	                        SerialPort.STOPBITS_1,//鍋滄浣�  
	                        SerialPort.PARITY_NONE);//鏍￠獙  
	            } catch (UnsupportedCommOperationException e) {  
	            }  
	        }  
	  
	  
	        /** 
	         * BI -閫氳涓柇. CD -杞芥尝妫�娴�. CTS -娓呴櫎鍙戦��. DATA_AVAILABLE -鏈夋暟鎹埌杈�. DSR -鏁版嵁璁惧鍑嗗濂�. 
	         * FE -甯ч敊璇�. OE -婧綅閿欒. OUTPUT_BUFFER_EMPTY -杈撳嚭缂撳啿鍖哄凡娓呯┖. PE -濂囧伓鏍￠獙閿�. RI - 
	         * 鎸搩鎸囩ず. 涓�鑸渶甯哥敤鐨勫氨鏄疍ATA_AVAILABLE--涓插彛鏈夋暟鎹埌杈句簨浠躲�� 
	         */  
	        public void serialEvent(SerialPortEvent event) {  
	  
	            switch (event.getEventType()) {  
	                case SerialPortEvent.BI:  
	                case SerialPortEvent.OE:  
	                case SerialPortEvent.FE:  
	                case SerialPortEvent.PE:  
	                case SerialPortEvent.CD:  
	                case SerialPortEvent.CTS:  
	                case SerialPortEvent.DSR:  
	                case SerialPortEvent.RI:  
	                case SerialPortEvent.OUTPUT_BUFFER_EMPTY:  
	                    break;  
	                case SerialPortEvent.DATA_AVAILABLE:  
	                      try {  
		                    	int count=0;
		                    	int time=0;
		                    	byte[] readBuffer = new byte[20];
		                    	while(count<17){
		                    		while( inputStream.available()> 0) {
		                    			readBuffer[count]=(byte) inputStream.read();
	                        			count++;
		                    		}
		                    		if(count<17){
		                    			Thread.sleep(100);
		                    		}
		                    		time++;//统计分几次读取完
		                    	}
		                        	data = bytesToHexString(readBuffer,count);
		                        	System.out.println("----------------->data      "+data);
		                        	System.out.println("----------------->time      "+time);
		                        	String deviceId = data.substring(2,4);
		                        	String wristId = data.substring(4,28);
		                        	String checkSum = data.substring(30,32);
		                        	String requestStr = "deviceId="+ deviceId+"&wristId="+wristId;
		                        	//璇锋眰鏈嶅姟鍣紝鍚戞湇鍔″櫒鍙戦�佽澶囦俊鎭�
		                        	if(((new Date().getTime())-SerialRead.startTime.getTime())/1000>10){		                        	
			                            String s = HttpRequest.sendPost(ReadConfFile.getString("requestInterface"),requestStr );
										if(s.contains("operateSuccess")){
										
											try {
												int status=Runtime.getRuntime().exec("/home/pi/PI0/c.sh "+wristId).waitFor();
												System.out.println(" 脚本执行状态     "+status);		 
											} catch (Exception e) {
												e.printStackTrace();
											}
										}
			                            System.out.println(s);		                        	
		                        	}
		                        //清空InputStream
		                        if(inputStream.available()!=0){
		                        	while(inputStream.available()>0)
		                        		inputStream.read();
		                        }
		                    } catch (Exception e) {  
		                    	System.out.println(e.getMessage());
		                    }  
							
	                    break;    
	            }  
	        }  
	    }  
		
		 /**
		 * 鎶婂瓧鑺傛暟缁勮浆鎹㈡垚16杩涘埗瀛楃涓�
		 * @param bArray 闇�瑕佽杞崲鐨刡yte鏁扮粍
		 * @return 杞崲鎴�16杩涘埗瀛楃涓�
		 */
//		public static String bytesToHexString(byte[] bArray) {
//			StringBuffer sb = new StringBuffer(bArray.length);
//			String sTemp;
//			for (int i = 0; i < bArray.length; i++) {
//				sTemp = Integer.toHexString(0xFF & bArray[i]);
//				if (sTemp.length() < 2)
//					sb.append(0);
//				sb.append(sTemp.toUpperCase());
//			}
//			return sb.toString();
//		}
		public static String bytesToHexString(byte[] bArray,int count) {
			StringBuffer sb = new StringBuffer(bArray.length);
			String sTemp;
			for (int i = 0; i < count; i++) {
				sTemp = Integer.toHexString(0xFF & bArray[i]);
				if (sTemp.length() < 2)
					sb.append(0);
				sb.append(sTemp.toUpperCase());
			}
			return sb.toString();
		}
		
//		public boolean checkSum(byte[] readBuffer){
//			
//		}
		
}
