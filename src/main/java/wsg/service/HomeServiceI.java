package wsg.service;

import java.util.List;

import wsg.model.Home;

public interface HomeServiceI extends BaseServiceI<Home> {
	
	/**
	 * 根据id获取
	 * @param id
	 * @return
	 */
	public Home getHomeById(Integer id);
	/**
	 * 更新Home
	 * @param home
	 * @return
	 */
	public Home updateHome(Home home);
	/**
	 * 获取所有
	 * @return
	 */
	public List<Home> findAllHome();
	/**
	 * 添加新的Home
	 * @param home
	 * @return
	 */
	public Home addHome(Home home);
	/**
	 * 判断是否存在
	 * @param title
	 * @return
	 */
	public boolean existByTitle(String title);
	
}
