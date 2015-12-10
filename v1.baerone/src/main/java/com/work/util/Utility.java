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
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
/**
 * <pre>
 *  占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙歐占� 占쏙옙占쏙옙 占쏙옙틸 클占쏙옙占쏙옙 - Utility
 *  
 * 	getCurrentDate() : 占썩본 4占쌘몌옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쌘울옙占쏙옙 占쏙옙환占싹댐옙 占쌨쇽옙占쏙옙
 *	getSecureCode(length) : 占쏙옙占쌨뱄옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占싫뱄옙占쏙옙 占쏙옙환
 *	getCurrentDate() : 占쏙옙占쏙옙 占쏙옙짜占쏙옙 占쌉력뱄옙占쏙옙 pattern 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙환 
 *	getCurrentDate(pattern) : 占쏙옙占쏙옙 占쏙옙짜占쏙옙 占쌉력뱄옙占쏙옙 pattern 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙환
 *  getCurrentHour() : 占쏙옙占쏙옙 占시곤옙占쏙옙 占시곤옙占쏙옙 占쏙옙환
 *
 * @since 2015-11-02
 * @author 占싱듸옙占쏙옙
 * @version 1.0
 * </pre>
 * 
 */

public class Utility {
   
   /**
    * 占썩본 4占쌘몌옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쌘울옙占쏙옙 占쏙옙환占싹댐옙 占쌨쇽옙占쏙옙
    * @see java.lang.Math#random()
    * @see java.util.Random#nextInt()
    * @see java.lang.System.currentTimeMillis()
    * @see java.lang.StringBuilder
    * 
    * @return String : 4占쌘몌옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쌘울옙
    */
   public static String getSecureCode() {
      return getSecureCode(4);
   }
   
   /** 
    * 占쏙옙占쌨뱄옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占싫뱄옙占쏙옙 占쏙옙환
    * @param length
    * @return String : 占쏙옙占쌨뱄옙占쏙옙 length 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占싫뱄옙占쏙옙
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
    * 占쏙옙占쏙옙 占쏙옙짜占쏙옙 占썩도4占쌘몌옙/占쏙옙2占쌘몌옙/占쏙옙2占쌘몌옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙환
    * @see java.util.Date
    * @see java.text.SimpleDateFormat#format(java.util.Date)
    * @return String : yyyy/MM/dd 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙짜
    */
   public static String getCurrentDate() {
      return getCurrentDate("yyyy/MM/dd");
   }
   
   /**
    * 占쏙옙占쏙옙 占쏙옙짜占쏙옙 占쌉력뱄옙占쏙옙 pattern 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙환
    * @param pattern
    * @return String : 占쌉력뱄옙占쏙옙 pattern 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙짜
    */
   public static String getCurrentDate(String pattern) {
      Date date = new Date();
      SimpleDateFormat sdf  = new SimpleDateFormat(pattern);
      return sdf.format(date);
   }
   
	
	/**
	 * 占쏙옙占쏙옙 占시곤옙占쏙옙 占시곤옙占쏙옙 占쏙옙환
	 * @return : int : 占쏙옙占쏙옙 占시곤옙占쏙옙 占시곤옙
	 */
	public static int getCurrentHour(){
		long time = System.currentTimeMillis();
		SimpleDateFormat dayTime = new SimpleDateFormat("H");
		
		return Integer.parseInt(dayTime.format(new Date(time)));
	}
	
	public static double getDistnace(String senderAddrOld, String receiverAddrOld) throws IOException{
		senderAddrOld = senderAddrOld.replace(" ", "");
		receiverAddrOld = receiverAddrOld.replace(" ", "");
			
		String sLat = "";  //占쏙옙占쏙옙占쏙옙 占쏙옙占� 占쏙옙占쏙옙
		String sLon = "";  //占쏙옙占쏙옙占쏙옙 占쏙옙占� 占썸도
		String rLat = "";  //占쌨댐옙 占쏙옙占� 占쏙옙占쏙옙
		String rLon = "";  //占쌨댐옙 占쏙옙占� 占썸도
		
		String murl = ""; //占쏙옙占쏙옙占쏙옙 URL
		String murl2 = "";
		
		String mapxml = ""; //占쌨아울옙 xml
		String mapxml2 = "";

		 murl = "http://openapi.map.naver.com/api/geocode.php?key=4602d17b97e6a0c993ff0b8a4a90ffe7&encoding=EUC-KR&coord=latlng&query="+senderAddrOld;
		 murl2 = "http://openapi.map.naver.com/api/geocode.php?key=4602d17b97e6a0c993ff0b8a4a90ffe7&encoding=EUC-KR&coord=latlng&query="+receiverAddrOld;
		 
		URL mapXmlUrl = new URL(murl);  //URL占쏙옙占쏙옙占싹곤옙 占쌨아울옙占쏙옙 占싹댐옙 占싸분듸옙占쏙옙 import占쏙옙 占십울옙占싹댐옙. java.net.*
		HttpURLConnection urlConn = (HttpURLConnection)mapXmlUrl.openConnection();
		urlConn.setDoOutput(true);
		urlConn.setRequestMethod("POST");

		URL mapXmlUrl2 = new URL(murl2);  //URL占쏙옙占쏙옙占싹곤옙 占쌨아울옙占쏙옙 占싹댐옙 占싸분듸옙占쏙옙 import占쏙옙 占십울옙占싹댐옙. java.net.*
		HttpURLConnection urlConn2 = (HttpURLConnection)mapXmlUrl2.openConnection();
		urlConn2.setDoOutput(true);
		urlConn2.setRequestMethod("POST");
			 
		int len = urlConn.getContentLength();  //占쌨아울옙占쏙옙 xml占쏙옙 占쏙옙占쏙옙
		int len2 = urlConn2.getContentLength();
		
		if(len > 0){ 
		       BufferedReader br = new BufferedReader(new InputStreamReader(urlConn.getInputStream(),"EUC-KR")); //BufferedReader : 占쏙옙占싸댐옙占쏙옙占쏙옙 占쏙옙占쏙옙 InputStream : 占싼깍옙占쌘억옙
		       String inputLine="";
		       while((inputLine = br.readLine())!=null){
		           mapxml += inputLine;  //占싼깍옙占쌘억옙 占싻억옙求占�
		      }
		       
		       if(mapxml != null){
		            if(mapxml.indexOf("</item>") > -1 ){   //item占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙표占쏙옙 占쌨아와억옙占쏙옙
		                 int first = 1; 
		                 sLon = mapxml.substring( mapxml.indexOf("<x>")+3, mapxml.indexOf("</x>") ) ; //占썸도 占쌩띰옙占쏙옙占�
		                 sLat = mapxml.substring( mapxml.indexOf("<y>")+3, mapxml.indexOf("</y>") ) ; //占쏙옙占쏙옙 占쌩띰옙占쏙옙占�
		                 System.out.println("###"+sLon + sLat);
		             }
		       }
		       br.close();  //占쏙옙占쌜몌옙占쏙옙 占쌥깍옙
		}
		if(len2 > 0){ 
			BufferedReader br = new BufferedReader(new InputStreamReader(urlConn2.getInputStream(),"EUC-KR"));
			String inputLine="";
			while((inputLine = br.readLine())!=null){
				mapxml2 += inputLine;  //占싼깍옙占쌘억옙 占싻억옙求占�
			}
			
			if(mapxml2 != null){
				if(mapxml2.indexOf("</item>") > -1 ){   //item占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙표占쏙옙 占쌨아와억옙占쏙옙
					int first = 1; 
					rLon = mapxml2.substring( mapxml2.indexOf("<x>")+3, mapxml2.indexOf("</x>") ) ; //占썸도 占쌩띰옙占쏙옙占�
					rLat = mapxml2.substring( mapxml2.indexOf("<y>")+3, mapxml2.indexOf("</y>") ) ; //占쏙옙占쏙옙 占쌩띰옙占쏙옙占�
					System.out.println("###"+rLon + rLat);
				}
			}
			br.close();  //占쏙옙占쌜몌옙占쏙옙 占쌥깍옙
		}
		
		double x = (Math.cos(Double.parseDouble(sLat))*6400*2*3.14/360)*Math.abs(Double.parseDouble(sLon)-Double.parseDouble(rLon));
		double y = 111*Math.abs(Double.parseDouble(sLat)-Double.parseDouble(rLat));
		double d = Math.sqrt(x*x+y*y);
		double distance = Double.parseDouble(String.format("%.2f", d));
		return distance;
	}
	

	//GCM 보내는사람에게 드론출발 알림
	public static void sendMessageToSender() throws IOException {

		Sender sender = new Sender("AIzaSyAXZCm3cKCA-ipzXeR3nVlh7ObgJd8A-UU");

		String regId = "APA91bGKQD33vzOA4ClfEWfzqIHY4yqs2RDWA739wlKGej8xiNBPFOZz-8e7nuczc888BrBLKFXRvGbZMrm22mkhwoX5FSkRfxKOt8InLmZwmuP62EfWb0JJQg-VEXDzW6Zsy5Ez7hEJ";

		int dronepw = 3820;
		
		Message message = new Message.Builder().addData("msg", URLEncoder.encode("<드론출발> 잠금장치 비밀번호 : "+dronepw,"EUC-KR")).build();

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