package com.work.util;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import com.google.android.gcm.server.Message;
import com.google.android.gcm.server.MulticastResult;
import com.google.android.gcm.server.Result;
import com.google.android.gcm.server.Sender;

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
 *  공통으로 사용하기 위한 유틸 클래스 - Utility
 *  
 * 	getCurrentDate() : 기본 4자리 숫자형식의 문자열을 반환하는 메서드
 *	getSecureCode(length) : 전달받은 길이의 임의의 보안문자 반환
 *	getCurrentDate() : 현재 날짜를 입력받은 pattern 형식으로 반환 
 *	getCurrentDate(pattern) : 현재 날짜를 입력받은 pattern 형식으로 반환
 *  getCurrentHour() : 현재 시각의 시간만 반환
 *
 * @since 2015-11-02
 * @author 이동규
 * @version 1.0
 * </pre>
 * 
 */

public class Utility {
   
   /**
    * 기본 4자리 숫자형식의 문자열을 반환하는 메서드
    * @see java.lang.Math#random()
    * @see java.util.Random#nextInt()
    * @see java.lang.System.currentTimeMillis()
    * @see java.lang.StringBuilder
    * 
    * @return String : 4자리 숫자형식의 문자열
    */
   public static String getSecureCode() {
      return getSecureCode(4);
   }
   
   /** 
    * 전달받은 길이의 임의의 보안문자 반환
    * @param length
    * @return String : 전달받은 length 길이의 임의의 보안문자
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
    * 현재 날짜를 년도4자리/월2자리/일2자리 형식으로 반환
    * @see java.util.Date
    * @see java.text.SimpleDateFormat#format(java.util.Date)
    * @return String : yyyy/MM/dd 형식의 현재 날짜
    */
   public static String getCurrentDate() {
      return getCurrentDate("yyyy/MM/dd");
   }
   
   /**
    * 현재 날짜를 입력받은 pattern 형식으로 반환
    * @param pattern
    * @return String : 입력받은 pattern 형식의 현재 날짜
    */
   public static String getCurrentDate(String pattern) {
      Date date = new Date();
      SimpleDateFormat sdf  = new SimpleDateFormat(pattern);
      return sdf.format(date);
   }
   
	
	/**
	 * 현재 시간의 시간만 반환
	 * @return : int : 현재 시각의 시간
	 */
	public static int getCurrentHour(){
		long time = System.currentTimeMillis();
		SimpleDateFormat dayTime = new SimpleDateFormat("H");
		
		return Integer.parseInt(dayTime.format(new Date(time)));
	}
	
	public static double getDistnace(String senderAddrOld, String receiverAddrOld) throws IOException{
		senderAddrOld = senderAddrOld.replace(" ", "");
		receiverAddrOld = receiverAddrOld.replace(" ", "");
			
		String sLat = "";  //보내는 사람 위도
		String sLon = "";  //보내는 사람 경도
		String rLat = "";  //받는 사람 위도
		String rLon = "";  //받는 사람 경도
		
		String murl = ""; //연결할 URL
		String murl2 = "";
		
		String mapxml = ""; //받아온 xml
		String mapxml2 = "";

		 murl = "http://openapi.map.naver.com/api/geocode.php?key=c1b406b32dbbbbeee5f2a36ddc14067f&encoding=EUC-KR&coord=latlng&query="+senderAddrOld;
		 murl2 = "http://openapi.map.naver.com/api/geocode.php?key=c1b406b32dbbbbeee5f2a36ddc14067f&encoding=EUC-KR&coord=latlng&query="+receiverAddrOld;
		 
		URL mapXmlUrl = new URL(murl);  //URL연결하고 받아오고 하는 부분들은 import가 필요하다. java.net.*
		HttpURLConnection urlConn = (HttpURLConnection)mapXmlUrl.openConnection();
		urlConn.setDoOutput(true);
		urlConn.setRequestMethod("POST");

		URL mapXmlUrl2 = new URL(murl2);  //URL연결하고 받아오고 하는 부분들은 import가 필요하다. java.net.*
		HttpURLConnection urlConn2 = (HttpURLConnection)mapXmlUrl2.openConnection();
		urlConn2.setDoOutput(true);
		urlConn2.setRequestMethod("POST");
			 
		int len = urlConn.getContentLength();  //받아오는 xml의 길이
		int len2 = urlConn2.getContentLength();
		
		if(len > 0){ 
		       BufferedReader br = new BufferedReader(new InputStreamReader(urlConn.getInputStream(),"EUC-KR")); //BufferedReader : 라인단위로 읽음 InputStream : 한글자씩
		       String inputLine="";
		       while((inputLine = br.readLine())!=null){
		           mapxml += inputLine;  //한글자씩 읽어옵니다
		      }
		       
		       if(mapxml != null){
		            if(mapxml.indexOf("</item>") > -1 ){   //item이 있으면 좌표를 받아와야지
		                 int first = 1; 
		                 sLon = mapxml.substring( mapxml.indexOf("<x>")+3, mapxml.indexOf("</x>") ) ; //경도 잘라오기
		                 sLat = mapxml.substring( mapxml.indexOf("<y>")+3, mapxml.indexOf("</y>") ) ; //위도 잘라오기
		                 System.out.println("###"+sLon + sLat);
		             }
		       }
		       br.close();  //버퍼리더 닫기
		}
		if(len2 > 0){ 
			BufferedReader br = new BufferedReader(new InputStreamReader(urlConn2.getInputStream(),"EUC-KR"));
			String inputLine="";
			while((inputLine = br.readLine())!=null){
				mapxml2 += inputLine;  //한글자씩 읽어옵니다
			}
			
			if(mapxml2 != null){
				if(mapxml2.indexOf("</item>") > -1 ){   //item이 있으면 좌표를 받아와야지
					int first = 1; 
					rLon = mapxml2.substring( mapxml2.indexOf("<x>")+3, mapxml2.indexOf("</x>") ) ; //경도 잘라오기
					rLat = mapxml2.substring( mapxml2.indexOf("<y>")+3, mapxml2.indexOf("</y>") ) ; //위도 잘라오기
					System.out.println("###"+rLon + rLat);
				}
			}
			br.close();  //버퍼리더 닫기
		}
		
		double x = (Math.cos(Double.parseDouble(sLat))*6400*2*3.14/360)*Math.abs(Double.parseDouble(sLon)-Double.parseDouble(rLon));
		double y = 111*Math.abs(Double.parseDouble(sLat)-Double.parseDouble(rLat));
		double d = Math.sqrt(x*x+y*y);
		double distance = Double.parseDouble(String.format("%.2f", d));
		return distance;
	}
	
	//GCM
	public void sendMessage() throws IOException {

		Sender sender = new Sender("AIzaSyAXZCm3cKCA-ipzXeR3nVlh7ObgJd8A-UU");

		String regId = "APA91bHCprukKp0l3v0hFN8ZRd2xVvv817PK_Lqy3iV6QjZU4qtz_3pQ5PJQg9_ugyNbcFpFOsNm3A0KwcAUMco6Yov-kLnVpSLpshiQ8Re0g05QlT72YsIY2TZFwvG9BOokvbAdFef6";

		Message message = new Message.Builder().addData("msg", "Drone has departed!!").build();

		List<String> list = new ArrayList<String>();

		list.add(regId);

		MulticastResult multiResult = sender.send(message, list, 5);

		if (multiResult != null) {

			List<Result> resultList = multiResult.getResults();

			for (Result result : resultList) {

				System.out.println(result.getMessageId());
			}
		}
	}
}