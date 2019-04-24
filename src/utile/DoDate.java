package utile;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DoDate {
	public  static Date getDate(String date){
		SimpleDateFormat sdf =new  SimpleDateFormat("yyyy-MM-dd");
		
		Date newdate = null;
		try {
			newdate = sdf.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return newdate;
	}
	//Date转字符串
	public static String datetostr(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if(date!=null) {
			return sdf.format(date);
		}
		return null;
		
	}
	//判断两个时间段有没有交错
	public static boolean checkDate(Date start,Date end,Date inday,Date outday) {
		
		Calendar incalendar = Calendar.getInstance();
		incalendar.setTime(inday);//预定开始
		Calendar outcalendar = Calendar.getInstance();
		outcalendar.setTime(outday);//预定离开
		
		Calendar startcalendar = Calendar.getInstance();
		startcalendar.setTime(start);//数据库开始
		Calendar endcalendar = Calendar.getInstance();
		endcalendar.setTime(end);//数据库离开
		//表示可以预定
		if(incalendar.compareTo(endcalendar)>=0 || startcalendar.compareTo(outcalendar)>=0) {
			return true;
		}
		
		//表示不能预定
		return false;
	}
	
	//计算两天之间的天数
	public static int numOfDay(Date start,Date end) {
		Calendar c = Calendar.getInstance();
		c.setTime(start);
		int count = 0;
		System.out.println(c.getTime().compareTo(end));
		while(c.getTime().compareTo(end)!=0) {
			c.add(Calendar.DATE, 1);
			count++;
		}
		return count;
	}
	
	public static void main(String[] args) {
		String string = DoDate.datetostr(new Date());
		System.out.println(string);
		Date date = DoDate.getDate(string);
		System.out.println(date);
	}
}
