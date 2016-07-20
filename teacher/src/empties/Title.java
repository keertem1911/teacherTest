package empties;
// 题目
public class Title {
	//主键
	private long tit_id;
	//题目名字
	private String tit_name;
	//题目内容
	private String tit_content;
	//任务ID
	private long t_id;
	
	public String getTit_content() {
		return tit_content;
	}
	public void setTit_content(String tit_content) {
		this.tit_content = tit_content;
	}
	public long getTit_id() {
		return tit_id;
	}
	public void setTit_id(long tit_id) {
		this.tit_id = tit_id;
	}
	public String getTit_name() {
		return tit_name;
	}
	public void setTit_name(String tit_name) {
		this.tit_name = tit_name;
	}
	public long getT_id() {
		return t_id;
	}
	public void setT_id(long t_id) {
		this.t_id = t_id;
	}
	@Override
	public String toString() {
		return "Title [tit_id=" + tit_id + ", tit_name=" + tit_name + ", tit_content=" + tit_content + ", t_id=" + t_id
				+ "]";
	}
	 
}
