package superMarket.service;

import java.util.List;

import superMarket.pojo.User;
import superMarket.util.Page;

public interface IUserService {
	
	/**
	 * 查找用户所有用户或者模糊查找
	 * @param user
	 * @return 用户列表
	 */
	public List<User> findUsers(User user);
	
	/**
	 * 查找指定用户
	 * @param user
	 * @return
	 */
	public User findUser(User user);
	
	/**
	 * 添加用户
	 * @param user 用户对象
	 * @return 成功返回true,失败返回false
	 */
	public boolean addUser(User user);
	
	/**
	 * 分页显示用户
	 * @param page
	 * @return
	 */
	public List<User> findUsersByPage(Page page);
}
