package teacherService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import empties.Group;
import empties.Student;
import teacherDao.GroupDao;

public class GroupService {
	private GroupDao groupDao;

	public GroupDao getGroupDao() {
		return groupDao;
	}

	public void setGroupDao(GroupDao groupDao) {
		this.groupDao = groupDao;
	}

	public List<Group> selectGroupAll() {
		// TODO Auto-generated method stub
		return groupDao.selectGroupAll();
	}

	public Group findGroupById(long id) {
		// TODO Auto-generated method stub
		return groupDao.findGroupById(id);
	}

	public int saveG_Score(long g_id, String g_score) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<>();
		map.put("g_id", g_id);
		map.put("g_score", g_score);
		return groupDao.saveG_Score(map);
	}

	public Map<String, Object> findDetailGroupById(long g_id) {
		Map<String , Object> map=new HashMap<>();
		Group group=groupDao.findGroupById(g_id);
		List<Long> list=new ArrayList<>();
		list.add(group.getG_member1());
		list.add(group.getG_member2());
		list.add(group.getG_member3());
		list.add(group.getG_member4());
		List<Student> students=groupDao.findStudentsById(list);
		map.put("groups", group);
		map.put("students", students);
		return map;
	}

	public int updateAgreeOrDis(Group model) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<>();
		map.put("g_id", model.getG_id());
		map.put("g_statu2", model.getG_statu2());
		map.put("g_disagree", model.getG_disagree());
		return groupDao.updateAgreeOrDis(map);
	}
	
}
