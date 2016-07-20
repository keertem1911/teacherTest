package teacherService;

import java.util.List;

import empties.Title;
import teacherDao.TitleDao;

public class TitleService {
	private TitleDao titleDao;
	public void setTitleDao(TitleDao titleDao) {
		this.titleDao = titleDao;
	}
	public TitleDao getTitleDao() {
		return titleDao;
	}
	public int addTitle(Title model) {
		// TODO Auto-generated method stub
		return titleDao.addTitle(model);
	}
	public List<Title> lookDetailTitleToTask(long t_id) {
		// TODO Auto-generated method stub
		return titleDao.lookDetailTitleToTask(t_id);
	}
	public List<Title> lookDetailTitleToModel(long t_id) {
		// TODO Auto-generated method stub
		return titleDao.lookDetailTitleToModel(t_id);
	}
	public int deleteTitlePlan(long tit_id) {
		// TODO Auto-generated method stub
		return titleDao.deleteTitlePlan(tit_id);
	}
	 
}
