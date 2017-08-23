package superMarket.dao.user;

import java.util.List;

import org.springframework.stereotype.Repository;

import superMarket.pojo.User;

@Repository
public interface UserMapper {
	/**
	 * �����û�,û�в�����ȫ������,�в�����ģ������
	 * @param user
	 * @return user�б�
	 */
	public List<User> findUsers(User user);
	
	/**
	 * �����ض�������ȡָ���û�
	 * @param user
	 * @return �û�����
	 */
	public User findUser(User user);
}
