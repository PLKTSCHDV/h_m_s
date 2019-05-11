package chitkara.dao;

public class ComplaintDao {
private String complaint;
private String date;
private String uid;
private String complaint_no;
public String getComplaint() {
	return complaint;
}
public void setComplaint(String complaint) {
	this.complaint = complaint;
	System.out.print("daocomplaint "+complaint);
}
public String getComplaint_no() {
	return complaint_no;
}
public void setComplaint_no(String complaint_no) {
	this.complaint_no = complaint_no;
}

public String getUid() {
	return uid;
}
public void setUid(String uid) {
	this.uid = uid;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
}
