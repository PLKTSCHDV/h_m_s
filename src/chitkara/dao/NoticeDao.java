package chitkara.dao;

public class NoticeDao {
private int notice_no;
private String notice;
private String subject;
private String date;
public int getNotice_no() {
	return notice_no;
}
public void setNotice_no(int notice_no) {
	this.notice_no = notice_no;
}
public String getNotice() {
	return notice;
}
public void setNotice(String notice) {
	this.notice = notice;
}
public String getSubject() {
	return subject;
}
public void setSubject(String subject) {
	this.subject = subject;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
}
