package empties;
//  学生 与  选课 多对多中间表
public class StudentToCourse {
	//主键 ID
	private long id;
	// 外键 学生 ID
	private long s_id;
	//外键 课程  ID
	private long c_id;
	//作业成绩
	private int c_score;
	
	 
	public int getC_score() {
		return c_score;
	}
	public void setC_score(int c_score) {
		this.c_score = c_score;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getS_id() {
		return s_id;
	}
	public void setS_id(long s_id) {
		this.s_id = s_id;
	}
	public long getC_id() {
		return c_id;
	}
	public void setC_id(long c_id) {
		this.c_id = c_id;
	}
	@Override
	public String toString() {
		return "StudentToCourse [id=" + id + ", s_id=" + s_id + ", c_id=" + c_id + ", c_score=" + c_score + "]";
	}
	 
	 
	
}
