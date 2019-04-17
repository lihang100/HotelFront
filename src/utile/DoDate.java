package utile;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DoDate {
	public  static Date getDate(String date){
		SimpleDateFormat sdf =new  SimpleDateFormat("yyyy-MM-dd");
		
		Date newdate = null;
		try {
			newdate = sdf.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return newdate;
	}

}
