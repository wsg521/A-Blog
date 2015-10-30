package wsg.util;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.conversion.impl.DefaultTypeConverter;

public class DateConverter extends DefaultTypeConverter {

	@Override
	public Object convertValue(Map<String, Object> context, Object value,
			Class toType) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		  if(toType==Timestamp.class){
			  String[] arr =(String[])value;
			  Date date = null;
			try {
				if (arr[0].length() >= 21) {
					format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");					
					date = format.parse(arr[0].substring(0, 19));
				} else {
					date = format.parse(arr[0]);
				} 
			} catch (ParseException e1) {
				e1.printStackTrace();
			}
			
			long l = date.getTime();
			return new Timestamp(l);
			  
		  }
		
		  if(toType==String.class){
			  Timestamp dateValue = (Timestamp)value;
			  return format.format(dateValue);
		  }
		
		return value;
	}
	

}
