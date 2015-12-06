package com.work.util;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

//import com.google.android.gcm.server.Message;
//import com.google.android.gcm.server.MulticastResult;
//import com.google.android.gcm.server.Result;
//import com.google.android.gcm.server.Sender;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
/**
 * <pre>
 *  �������� ����ϱ� ���� ��ƿ Ŭ���� - Utility
 *  
 * 	getCurrentDate() : �⺻ 4�ڸ� ���������� ���ڿ��� ��ȯ�ϴ� �޼���
 *	getSecureCode(length) : ���޹��� ������ ������ ���ȹ��� ��ȯ
 *	getCurrentDate() : ���� ��¥�� �Է¹��� pattern �������� ��ȯ 
 *	getCurrentDate(pattern) : ���� ��¥�� �Է¹��� pattern �������� ��ȯ
 *  getCurrentHour() : ���� �ð��� �ð��� ��ȯ
 *
 * @since 2015-11-02
 * @author �̵���
 * @version 1.0
 * </pre>
 * 
 */

public class Utility {
   
   /**
    * �⺻ 4�ڸ� ���������� ���ڿ��� ��ȯ�ϴ� �޼���
    * @see java.lang.Math#random()
    * @see java.util.Random#nextInt()
    * @see java.lang.System.currentTimeMillis()
    * @see java.lang.StringBuilder
    * 
    * @return String : 4�ڸ� ���������� ���ڿ�
    */
   public static String getSecureCode() {
      return getSecureCode(4);
   }
   
   /** 
    * ���޹��� ������ ������ ���ȹ��� ��ȯ
    * @param length
    * @return String : ���޹��� length ������ ������ ���ȹ���
    */
   public static String getSecureCode(int length) {
      Random random = new Random((long)(System.currentTimeMillis()*Math.random()));
      StringBuilder code = new StringBuilder();
      for(int i = 0; i < 4; i++){
         code.append(random.nextInt(10));
      }
      return code.toString();
   }
   
   /**
    * ���� ��¥�� �⵵4�ڸ�/��2�ڸ�/��2�ڸ� �������� ��ȯ
    * @see java.util.Date
    * @see java.text.SimpleDateFormat#format(java.util.Date)
    * @return String : yyyy/MM/dd ������ ���� ��¥
    */
   public static String getCurrentDate() {
      return getCurrentDate("yyyy/MM/dd");
   }
   
   /**
    * ���� ��¥�� �Է¹��� pattern �������� ��ȯ
    * @param pattern
    * @return String : �Է¹��� pattern ������ ���� ��¥
    */
   public static String getCurrentDate(String pattern) {
      Date date = new Date();
      SimpleDateFormat sdf  = new SimpleDateFormat(pattern);
      return sdf.format(date);
   }
   
	
	/**
	 * ���� �ð��� �ð��� ��ȯ
	 * @return : int : ���� �ð��� �ð�
	 */
	public static int getCurrentHour(){
		long time = System.currentTimeMillis();
		SimpleDateFormat dayTime = new SimpleDateFormat("H");
		
		return Integer.parseInt(dayTime.format(new Date(time)));
	}
	
	public static double getDistnace(String senderAddrOld, String receiverAddrOld) throws IOException{
		senderAddrOld = senderAddrOld.replace(" ", "");
		receiverAddrOld = receiverAddrOld.replace(" ", "");
			
		String sLat = "";  //������ ��� ����
		String sLon = "";  //������ ��� �浵
		String rLat = "";  //�޴� ��� ����
		String rLon = "";  //�޴� ��� �浵
		
		String murl = ""; //������ URL
		String murl2 = "";
		
		String mapxml = ""; //�޾ƿ� xml
		String mapxml2 = "";

		 murl = "http://openapi.map.naver.com/api/geocode.php?key=4602d17b97e6a0c993ff0b8a4a90ffe7&encoding=EUC-KR&coord=latlng&query="+senderAddrOld;
		 murl2 = "http://openapi.map.naver.com/api/geocode.php?key=4602d17b97e6a0c993ff0b8a4a90ffe7&encoding=EUC-KR&coord=latlng&query="+receiverAddrOld;
		 
		URL mapXmlUrl = new URL(murl);  //URL�����ϰ� �޾ƿ��� �ϴ� �κе��� import�� �ʿ��ϴ�. java.net.*
		HttpURLConnection urlConn = (HttpURLConnection)mapXmlUrl.openConnection();
		urlConn.setDoOutput(true);
		urlConn.setRequestMethod("POST");

		URL mapXmlUrl2 = new URL(murl2);  //URL�����ϰ� �޾ƿ��� �ϴ� �κе��� import�� �ʿ��ϴ�. java.net.*
		HttpURLConnection urlConn2 = (HttpURLConnection)mapXmlUrl2.openConnection();
		urlConn2.setDoOutput(true);
		urlConn2.setRequestMethod("POST");
			 
		int len = urlConn.getContentLength();  //�޾ƿ��� xml�� ����
		int len2 = urlConn2.getContentLength();
		
		if(len > 0){ 
		       BufferedReader br = new BufferedReader(new InputStreamReader(urlConn.getInputStream(),"EUC-KR")); //BufferedReader : ���δ����� ���� InputStream : �ѱ��ھ�
		       String inputLine="";
		       while((inputLine = br.readLine())!=null){
		           mapxml += inputLine;  //�ѱ��ھ� �о�ɴϴ�
		      }
		       
		       if(mapxml != null){
		            if(mapxml.indexOf("</item>") > -1 ){   //item�� ������ ��ǥ�� �޾ƿ;���
		                 int first = 1; 
		                 sLon = mapxml.substring( mapxml.indexOf("<x>")+3, mapxml.indexOf("</x>") ) ; //�浵 �߶����
		                 sLat = mapxml.substring( mapxml.indexOf("<y>")+3, mapxml.indexOf("</y>") ) ; //���� �߶����
		                 System.out.println("###"+sLon + sLat);
		             }
		       }
		       br.close();  //���۸��� �ݱ�
		}
		if(len2 > 0){ 
			BufferedReader br = new BufferedReader(new InputStreamReader(urlConn2.getInputStream(),"EUC-KR"));
			String inputLine="";
			while((inputLine = br.readLine())!=null){
				mapxml2 += inputLine;  //�ѱ��ھ� �о�ɴϴ�
			}
			
			if(mapxml2 != null){
				if(mapxml2.indexOf("</item>") > -1 ){   //item�� ������ ��ǥ�� �޾ƿ;���
					int first = 1; 
					rLon = mapxml2.substring( mapxml2.indexOf("<x>")+3, mapxml2.indexOf("</x>") ) ; //�浵 �߶����
					rLat = mapxml2.substring( mapxml2.indexOf("<y>")+3, mapxml2.indexOf("</y>") ) ; //���� �߶����
					System.out.println("###"+rLon + rLat);
				}
			}
			br.close();  //���۸��� �ݱ�
		}
		
		double x = (Math.cos(Double.parseDouble(sLat))*6400*2*3.14/360)*Math.abs(Double.parseDouble(sLon)-Double.parseDouble(rLon));
		double y = 111*Math.abs(Double.parseDouble(sLat)-Double.parseDouble(rLat));
		double d = Math.sqrt(x*x+y*y);
		double distance = Double.parseDouble(String.format("%.2f", d));
		return distance;
	}
	
	//GCM
//	public void sendMessage() throws IOException {
//
//		Sender sender = new Sender("AIzaSyAXZCm3cKCA-ipzXeR3nVlh7ObgJd8A-UU");
//
//		String regId = "APA91bHCprukKp0l3v0hFN8ZRd2xVvv817PK_Lqy3iV6QjZU4qtz_3pQ5PJQg9_ugyNbcFpFOsNm3A0KwcAUMco6Yov-kLnVpSLpshiQ8Re0g05QlT72YsIY2TZFwvG9BOokvbAdFef6";
//
//		Message message = new Message.Builder().addData("msg", "Drone has departed!!").build();
//
//		List<String> list = new ArrayList<String>();
//
//		list.add(regId);
//
//		MulticastResult multiResult = sender.send(message, list, 5);
//
//		if (multiResult != null) {
//
//			List<Result> resultList = multiResult.getResults();
//
//			for (Result result : resultList) {
//
//				System.out.println(result.getMessageId());
//			}
//		}
//	}
}