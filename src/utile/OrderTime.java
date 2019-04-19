package utile;

import java.util.Date;

public class OrderTime {
	private Date starttime;
	private Date endtime;
	
	
	public OrderTime() {
		super();
	}
	public OrderTime(Date starttime, Date endtime) {
		super();
		this.starttime = starttime;
		this.endtime = endtime;
	}
	public Date getStarttime() {
		return starttime;
	}
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	public Date getEndtime() {
		return endtime;
	}
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	
	
}
