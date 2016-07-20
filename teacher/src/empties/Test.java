package empties;

public class Test {
	private String name;
	private String ids;
	private long id;
	private String sno;
	
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIds() {
		return ids;
	}
	public void setIds(String ids) {
		this.ids = ids;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Test [name=" + name + ", ids=" + ids + ", id=" + id + ", sno=" + sno + "]";
	}
	 
	
}
