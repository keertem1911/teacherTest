package empties;

// 小组
public class Group {
	// 主键
	private long g_id;
	// 小组名
	private String g_name;
	// 项目名
	private String g_pname;
	// 小组成绩
	private String g_score;
	// 状态1 
	//  0/1    未录入/录入
	//	2/3	  未通过/通过 
	private String g_statu1="0";
	// 描述
	private String g_describ;
	// 小组组长 ID
	private long g_head;
	// 小组组长分工
	private String g_headdo;
	// 小组 成员1 ID
	private long g_member1;
	// 小组 成员1 分工
	private String g_member1do;
	// 小组 成员2 ID
	private long g_member2;
	// 小组 成员2 分工
	private String g_member2do;
	// 小组 成员3 ID
	private long g_member3;
	// 小组 成员3分工
	private String g_member3do;
	// 小组 成员4 ID
	private long g_member4;
	// 小组 成员4 分工
	private String g_member4do;
	//小组 组长姓名
	private String g_headName;
	// 状态 2 通过/未通过
	private String g_statu2;
	//实验报告 名称
	private String g_file;
	//
	private String g_disagree;


	public String getG_disagree() {
		return g_disagree;
	}
	public void setG_disagree(String g_disagree) {
		this.g_disagree = g_disagree;
	}
	public String getG_file() {
		return g_file;
	}
	public void setG_file(String g_file) {
		this.g_file = g_file;
	}
	public long getG_id() {
		return g_id;
	}
	public void setG_id(long g_id) {
		this.g_id = g_id;
	}
	 
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public String getG_pname() {
		return g_pname;
	}
	public void setG_pname(String g_pname) {
		this.g_pname = g_pname;
	}
	public String getG_score() {
		return g_score;
	}
	public void setG_score(String g_score) {
		this.g_score = g_score;
	}
	public String getG_statu1() {
		return g_statu1;
	}
	public void setG_statu1(String g_statu1) {
		this.g_statu1 = g_statu1;
	}
	public String getG_describ() {
		return g_describ;
	}
	public void setG_describ(String g_describ) {
		this.g_describ = g_describ;
	}
	public long getG_head() {
		return g_head;
	}
	public void setG_head(long g_head) {
		this.g_head = g_head;
	}
	public String getG_headdo() {
		return g_headdo;
	}
	public void setG_headdo(String g_headdo) {
		this.g_headdo = g_headdo;
	}
	public long getG_member1() {
		return g_member1;
	}
	public void setG_member1(long g_member1) {
		this.g_member1 = g_member1;
	}
	public String getG_member1do() {
		return g_member1do;
	}
	public void setG_member1do(String g_member1do) {
		this.g_member1do = g_member1do;
	}
	public long getG_member2() {
		return g_member2;
	}
	public void setG_member2(long g_member2) {
		this.g_member2 = g_member2;
	}
	public String getG_member2do() {
		return g_member2do;
	}
	public void setG_member2do(String g_member2do) {
		this.g_member2do = g_member2do;
	}
	public long getG_member3() {
		return g_member3;
	}
	public void setG_member3(long g_member3) {
		this.g_member3 = g_member3;
	}
	public String getG_member3do() {
		return g_member3do;
	}
	public void setG_member3do(String g_member3do) {
		this.g_member3do = g_member3do;
	}
	public long getG_member4() {
		return g_member4;
	}
	public void setG_member4(long g_member4) {
		this.g_member4 = g_member4;
	}
	public String getG_member4do() {
		return g_member4do;
	}
	public void setG_member4do(String g_member4do) {
		this.g_member4do = g_member4do;
	}
	public String getG_headName() {
		return g_headName;
	}
	public void setG_headName(String g_headName) {
		this.g_headName = g_headName;
	}
	public String getG_statu2() {
		return g_statu2;
	}
	public void setG_statu2(String g_statu2) {
		this.g_statu2 = g_statu2;
	}
	@Override
	public String toString() {
		return "Group [g_id=" + g_id + ", g_name=" + g_name + ", g_pname=" + g_pname + ", g_score=" + g_score
				+ ", g_statu1=" + g_statu1 + ", g_describ=" + g_describ + ", g_head=" + g_head + ", g_headdo="
				+ g_headdo + ", g_member1=" + g_member1 + ", g_member1do=" + g_member1do + ", g_member2=" + g_member2
				+ ", g_member2do=" + g_member2do + ", g_member3=" + g_member3 + ", g_member3do=" + g_member3do
				+ ", g_member4=" + g_member4 + ", g_member4do=" + g_member4do + ", g_headName=" + g_headName
				+ ", g_statu2=" + g_statu2 + ", g_file=" + g_file + ", g_disagree=" + g_disagree + "]";
	}
	
	
}
