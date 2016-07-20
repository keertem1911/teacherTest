package teacherDao;

import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import comment.BaseDao;
import empties.Course;
import empties.Model;
import empties.TaskTomodel;
import empties.TaskToplan;
import empties.Title;

public class ModelDao extends BaseDao{

	public List<Model> selectCourseLIst() {
		 
		return sqlSessionTemplate.selectList("model.selectCourseLIst");
	}
	public int addModel(Model model) {
		model.setM_date(new Date());
		int i=sqlSessionTemplate.insert("model.addModel",model);
		return i;
	}

	public int deleteModel(long m_id) {
		 
		 List<TaskTomodel> pList=sqlSessionTemplate.selectList("model.findT_id",m_id);
		 int i1=0;
		 System.out.println(Arrays.asList(pList));
		 for (int i = 0; i < pList.size(); i++) {
			   i1=sqlSessionTemplate.delete("model.deleteEduPlan3",pList.get(i).getT_id());
			}
			i1+=sqlSessionTemplate.delete("model.deleteEduPlan2",m_id);
			
		i1+=sqlSessionTemplate.delete("model.deleteEduPlan1",m_id);
		return  i1;
		 
	}

	public Model lookDetailModel(long m_id) {
		
		return sqlSessionTemplate.selectOne("model.lookDetailModel",m_id);
	}

	public List<TaskTomodel> lookDetailTaskToModel(long m_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("model.lookDetailTaskToModel",m_id);
	}

	public int addToPlan(long m_id) {
		Model model=sqlSessionTemplate.selectOne("model.lookDetailModel",m_id);
		 
		List<TaskTomodel> lists=sqlSessionTemplate.selectList("taskTomodel.findTaskByModel",m_id);
		int i =sqlSessionTemplate.insert("model.addToPlanModel",model);
		m_id=model.getM_id();
		int j=0;
		for (int j2 = 0; j2 < lists.size(); j2++) {
			List<Title> titles=sqlSessionTemplate.selectList("title.lookDetailTitleToModel",lists.get(j2).getT_id());
			lists.get(j2).setM_id(m_id);
			int j3=sqlSessionTemplate.insert("model.addToPlanTask",lists.get(j2));
			Long t_id=lists.get(j2).getT_id();
			for(int j4=0;j4<titles.size();++j4){
				titles.get(j4).setT_id(t_id);
				j3=sqlSessionTemplate.insert("model.addToTitlePlan",titles.get(j4));
			}			
			j+=j3;
		}
	
		return i+j;
	}
	public List<Course> findCourse() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("model.findCourse");
	}

}
