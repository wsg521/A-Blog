package wsg.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wsg.dao.BaseDaoI;
import wsg.model.Life;

@Service("lifeService")
public class LifeServiceImpl extends BaseServiceImpl<Life> implements LifeServiceI {
	
	@Autowired
	private BaseDaoI<Life> lifeDaoI;
	private Map<String, Object> params;
	private String hql;
	
	@Override
	public boolean existByMotif(String motif) {
		hql = "select count(l.id) from Life l where l.motif = :motif";
		params = new HashMap<String, Object>();
		params.put("motif", motif);
		if (lifeDaoI.count(hql, params).intValue() == 1)
			return true;
		return false;
	}
	@Override
	public Life addLife(Life life) {
		lifeDaoI.save(life);
		return life;
	}
	@Override
	public List<Life> findAll() {
		hql = "from Life ORDER by createTime DESC";
		return lifeDaoI.find(hql);
	}
	@Override
	public List<Life> findAllR() {
		hql = "from Life ORDER by createTime DESC";
		return lifeDaoI.find(hql);
	}
	@Override
	public boolean editLife(Life life) {
		lifeDaoI.update(life);
		return true;
	}
}
