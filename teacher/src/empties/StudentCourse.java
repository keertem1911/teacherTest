package empties;
//中间临时表 
public class StudentCourse {
	//
	private int s_id;
	private int c_id;
	private String s_name;
	private String c_name;
	private String s_no;
	private int u_id;
	private String name;
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getS_no() {
		return s_no;
	}
	public void setS_no(String s_no) {
		this.s_no = s_no;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "StudentCourse [s_id=" + s_id + ", c_id=" + c_id + ", s_name=" + s_name + ", c_name=" + c_name
				+ ", s_no=" + s_no + ", u_id=" + u_id + ", name=" + name + "]";
	}
	
}
