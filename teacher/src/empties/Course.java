package empties;

public class Course {
	//课程 ID
	private long c_id;
	//课程名称
	private String c_name;
	//教师 ID
	private long u_id;
	//开设学期
	private int schoolyear;
	//教学计划
	private String plan;
	
	public String getPlan() {
		return plan;
	}
	public void setPlan(String plan) {
		this.plan = plan;
	}
	public int getSchoolyear() {
		return schoolyear;
	}
	public void setSchoolyear(int schoolyear) {
		this.schoolyear = schoolyear;
	}
	public long getC_id() {
		return c_id;
	}
	public void setC_id(long c_id) {
		this.c_id = c_id;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public long getU_id() {
		return u_id;
	}
	public void setU_id(long u_id) {
		this.u_id = u_id;
	}
	
	@Override
	public String toString() {
		return "Course [c_id=" + c_id + ", c_name=" + c_name + ", u_id=" + u_id + ", schoolyear=" + schoolyear
				+ ", plan=" + plan + "]";
	}
	 
	
	
}
