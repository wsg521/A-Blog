package wsg.service;

import java.util.List;

import wsg.model.Image;

public interface ImageServiceI extends BaseServiceI<Image> {
	/**
	 * 添加图片
	 * @param img
	 * @return
	 */
	public Image addImage(Image img);	
	/**
	 * 添加多张图片
	 * @param imgs
	 * @return
	 */
	public List<Image> addImages(List<Image> imgs);
	/**
	 * 修改图片
	 * @param img
	 * @return
	 */
	public boolean updateImage(Image img);
	/**
	 * 修改多张图片
	 * @param imgs
	 * @return
	 */
	public boolean updateImages(List<Image> imgs);
	/**
	 * 删除图片
	 * @param img
	 * @return
	 */
	public boolean deleteImage(Image img);
	/**
	 * 删除多张图片
	 * @param imgs
	 * @return
	 */
	public boolean deleteImage(List<Image> imgs);
	/**
	 * 根据id获取图片
	 * @param id
	 * @return
	 */
	public Image getById(Integer id);
	/**
	 * 根据ids获取图片集合
	 * @param ids
	 * @return
	 */
	public List<Image> getByIds(List<Integer> ids);
}
