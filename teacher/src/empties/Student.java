package empties;

public class Student {
	//学生 ID
	private long s_id;
	//学生 学号
	private String s_no;
	//学生姓名
	private String s_name;
	
	public long getS_id() {
		return s_id;
	}
	public void setS_id(long s_id) {
		this.s_id = s_id;
	}
	public String getS_no() {
		return s_no;
	}
	public void setS_no(String s_no) {
		this.s_no = s_no;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	@Override
	public String toString() {
		return "Student [s_id=" + s_id + ", s_no=" + s_no + ", s_name=" + s_name + "]";
	}
	 
	
}
