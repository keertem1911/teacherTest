package empties;

public class Score {

	private int s_id;
	private int t_id;	//任务id
	private int g_id;	//小组id
	private String s_score;
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public int getT_id() {
		return t_id;
	}
	public void setT_id(int t_id) {
		this.t_id = t_id;
	}
	public int getG_id() {
		return g_id;
	}
	public void setG_id(int g_id) {
		this.g_id = g_id;
	}
	public String getS_score() {
		return s_score;
	}
	public void setS_score(String s_score) {
		this.s_score = s_score;
	}
	@Override
	public String toString() {
		return "Score [s_id=" + s_id + ", t_id=" + t_id + ", g_id=" + g_id
				+ ", s_score=" + s_score + "]";
	}
	
	
	
}
