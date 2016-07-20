package empties;

public class Question {
	// id
	private long id;
	//题目类型 1 单选 2 多选 3 其他（无选项）
	private String types;
	// 题目
	private String txt;
	//选择题 选项 
	private String idx_1;
	private String idx_2;
	private String idx_3;
	private String idx_4;
	private String idx_5;
	private String idx_6;
	private String answer;
	private String course;
	//外键 教师
	private String sno;
	
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
 
	 
	public String getTypes() {
		return types;
	}
	public void setTypes(String types) {
		this.types = types;
	}
	public String getTxt() {
		return txt;
	}
	public void setTxt(String txt) {
		this.txt = txt;
	}
	public String getIdx_1() {
		return idx_1;
	}
	public void setIdx_1(String idx_1) {
		this.idx_1 = idx_1;
	}
	public String getIdx_2() {
		return idx_2;
	}
	public void setIdx_2(String idx_2) {
		this.idx_2 = idx_2;
	}
	public String getIdx_3() {
		return idx_3;
	}
	public void setIdx_3(String idx_3) {
		this.idx_3 = idx_3;
	}
	public String getIdx_4() {
		return idx_4;
	}
	public void setIdx_4(String idx_4) {
		this.idx_4 = idx_4;
	}
	public String getIdx_5() {
		return idx_5;
	}
	public void setIdx_5(String idx_5) {
		this.idx_5 = idx_5;
	}
	public String getIdx_6() {
		return idx_6;
	}
	public void setIdx_6(String idx_6) {
		this.idx_6 = idx_6;
	}
	@Override
	public String toString() {
		return "Question [id=" + id + ", types=" + types + ", txt=" + txt + ", idx_1=" + idx_1 + ", idx_2=" + idx_2
				+ ", idx_3=" + idx_3 + ", idx_4=" + idx_4 + ", idx_5=" + idx_5 + ", idx_6=" + idx_6 + ", answer="
				+ answer + ", course=" + course + ", sno=" + sno + "]";
	}
	
	 
	
}
