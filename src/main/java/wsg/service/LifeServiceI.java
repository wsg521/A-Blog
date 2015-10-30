package wsg.service;

import java.util.List;
import wsg.model.Life;

public interface LifeServiceI extends BaseServiceI<Life> {
	/**
	 * 根据生活motif查询是否存在相同的生活
	 * @param motif
	 * @return 存在返回true,不存在返回false
	 */
	public boolean existByMotif(String motif);
	
	/**
	 * 添加生活
	 * @param life
	 * @return 生活记录对象(id存在)
	 */
	public Life addLife(Life life);
	
	/**
	 * 查询所有
	 * @return
	 */
	public List<Life> findAll();
	
	/**
	 * 管理查看
	 * @return
	 */
	public List<Life> findAllR();
	
	/**
	 * 修改Life
	 * @param life
	 * @return
	 */
	public boolean editLife(Life life);
}
