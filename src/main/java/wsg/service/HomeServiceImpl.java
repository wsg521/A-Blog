package wsg.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wsg.dao.BaseDaoI;
import wsg.model.Home;

@Service("homeService")
public class HomeServiceImpl extends BaseServiceImpl<Home> implements HomeServiceI {
	
	@Autowired
	private BaseDaoI<Home> homeDaoI;

	@Override
	public Home getHomeById(Integer id) {		
		return homeDaoI.getById(Home.class, id);
	}

	@Override
	public Home updateHome(Home home) {
		homeDaoI.update(home);
		return home;
	}

	@Override
	public List<Home> findAllHome() {		
		return homeDaoI.find("FROM Home h WHERE h.id NOT IN (1,2,3) ORDER by h.sequence");
	}

	@Override
	public Home addHome(Home home) {
		homeDaoI.save(home);
		return home;
	}
	
	public boolean existByTitle(String title) {
		String hql = "select count(h.id) from Home h where h.title = :title AND h.id != 1";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("title", title);
		if (homeDaoI.count(hql, params).intValue() == 1)
			return true;
		return false;
	}
}
