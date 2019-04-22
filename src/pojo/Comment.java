package pojo;
//这个的属性没有和数据库的属性一一对应
import java.util.Date;

public class Comment {
	private int cid;//编号
	private String uname;//用户名
	private String upicture;//用户头像
	private String content;//内容
	private Date ctime;//时间
	
	
	@Override
	public String toString() {
		return "Comment [cid=" + cid + ", uname=" + uname + ", upicture=" + upicture + ", content=" + content
				+ ", ctime=" + ctime + "]\n";
	}
	public Comment() {
		super();
	}
	public Comment(int cid, String uname, String upicture, String content, Date ctime) {
		super();
		this.cid = cid;
		this.uname = uname;
		this.upicture = upicture;
		this.content = content;
		this.ctime = ctime;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpicture() {
		return upicture;
	}
	public void setUpicture(String upicture) {
		this.upicture = upicture;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCtime() {
		return ctime;
	}
	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}
	
	
}
