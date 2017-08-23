package superMarket.dao.user;

import java.util.List;

import org.springframework.stereotype.Repository;

import superMarket.pojo.User;

@Repository
public interface UserMapper {
	/**
	 * 查找用户,没有参数则全部查找,有参数则模糊查找
	 * @param user
	 * @return user列表
	 */
	public List<User> findUsers(User user);
	
	/**
	 * 根据特定条件获取指定用户
	 * @param user
	 * @return 用户对象
	 */
	public User findUser(User user);
}
