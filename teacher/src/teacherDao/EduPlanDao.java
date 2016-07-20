package teacherDao;

import java.util.Arrays;
import java.util.List;

import comment.BaseDao;
import empties.Eduplan;
import empties.TaskToplan;
import sun.net.www.content.text.plain;

public class EduPlanDao extends BaseDao{

	public List<Eduplan> selectEduPlan() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("eduPlan.selectEduPlan");
	}

	public List<TaskToplan> lookDetailTaskToEduplan(long m_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("eduPlan.lookDetailTaskToEduplan",m_id);
	}

	public int deleteEduPlan(long m_id) {
		 List<TaskToplan> pList=sqlSessionTemplate.selectList("eduPlan.findT_id",m_id);
		 int i1=0;
		 System.out.println(Arrays.asList(pList));
		 for (int i = 0; i < pList.size(); i++) {
			 	i1+=sqlSessionTemplate.delete("tasktoplan.deleteByTitle",pList.get(i).getT_id());
			   i1=sqlSessionTemplate.delete("eduPlan.deleteEduPlan3",pList.get(i).getT_id());
			}
			i1+=sqlSessionTemplate.delete("eduPlan.deleteEduPlan2",m_id);
			
		i1+=sqlSessionTemplate.delete("eduPlan.deleteEduPlan1",m_id);
		return  i1;
	}

	public Eduplan findEduPlanById(long m_id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("eduPlan.findEduPlanById",m_id);
	}

	public int updateEduPlan(Eduplan model) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("eduPlan.updateEduPlan",model);
	}

	public int addEduPlan(Eduplan model) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("eduPlan.addEduPlan",model);
	}

	public List<Eduplan> findEduPlanByCourse(int cid) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("eduPlan.findEduPlanByCourse",cid);
	}

}
