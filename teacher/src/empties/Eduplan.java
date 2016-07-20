package empties;

import java.util.Date;
//教学计划
public class Eduplan {
	//主键
	private long m_id;
	//课程
	private String m_course;
	//名称
	private String m_name;
	//类别  私有/公有
	private String m_class;
	// 时间  自动填充
	private Date m_date;
	// 分组 是/否
	private String m_statu;
	//说明
	private String m_describ;
	// 备注
	private String m_remark;
	
	//实验对应的课程id
	private int cid;
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public long getM_id() {
		return m_id;
	}
	public void setM_id(long m_id) {
		this.m_id = m_id;
	}
	public String getM_course() {
		return m_course;
	}
	public void setM_course(String m_course) {
		this.m_course = m_course;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_class() {
		return m_class;
	}
	public void setM_class(String m_class) {
		this.m_class = m_class;
	}
	public Date getM_date() {
		return m_date;
	}
	public void setM_date(Date m_date) {
		this.m_date = m_date;
	}
	public String getM_statu() {
		return m_statu;
	}
	public void setM_statu(String m_statu) {
		this.m_statu = m_statu;
	}
	 
	public String getM_describ() {
		return m_describ;
	}
	public void setM_describ(String m_describ) {
		this.m_describ = m_describ;
	}
	public String getM_remark() {
		return m_remark;
	}
	public void setM_remark(String m_remark) {
		this.m_remark = m_remark;
	}
	@Override
	public String toString() {
		return "Eduplan [m_id=" + m_id + ", m_course=" + m_course + ", m_name="
				+ m_name + ", m_class=" + m_class + ", m_date=" + m_date
				+ ", m_statu=" + m_statu + ", m_describ=" + m_describ
				+ ", m_remark=" + m_remark + ", cid=" + cid + "]";
	}
	
}
