package teacherDao;

import java.util.List;

import comment.BaseDao;
import empties.Title;

public class TitleDao extends BaseDao{

	public int addTitle(Title model) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("title.addTitle",model);
	}

	public List<Title> lookDetailTitleToTask(long t_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("title.lookDetailTitleToPlan",t_id);
	}
	
	public List<Title> lookDetailTitleToModel(long t_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("title.lookDetailTitleToModel",t_id);
	}
	public int deleteTitlePlan(long tit_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("title.deleteTitlePlan",tit_id);
	}

 
	
}
