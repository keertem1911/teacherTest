package empties;
// 模板对应的任务
public class TaskTomodel {
	//主键ID
	private long t_id;
	//模板 ID
	private long m_id;
	//任务序号
	private String t_order;
	//任务名称
	private String t_name;
	//任务详情
	private String t_detail;
	public long getT_id() {
		return t_id;
	}
	public void setT_id(long t_id) {
		this.t_id = t_id;
	}
	public long getM_id() {
		return m_id;
	}
	public void setM_id(long m_id) {
		this.m_id = m_id;
	}
	public String getT_order() {
		return t_order;
	}
	public void setT_order(String t_order) {
		this.t_order = t_order;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	public String getT_detail() {
		return t_detail;
	}
	public void setT_detail(String t_detail) {
		this.t_detail = t_detail;
	}
	@Override
	public String toString() {
		return "Task [t_id=" + t_id + ", m_id=" + m_id + ", t_order=" + t_order + ", t_name=" + t_name + ", t_detail="
				+ t_detail + "]";
	}
	
}
