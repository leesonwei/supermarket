package superMarket.service;

import java.util.List;

import superMarket.pojo.User;
import superMarket.util.Page;

public interface IUserService {
	
	/**
	 * �����û������û�����ģ������
	 * @param user
	 * @return �û��б�
	 */
	public List<User> findUsers(User user);
	
	/**
	 * ����ָ���û�
	 * @param user
	 * @return
	 */
	public User findUser(User user);
	
	/**
	 * ����û�
	 * @param user �û�����
	 * @return �ɹ�����true,ʧ�ܷ���false
	 */
	public boolean addUser(User user);
	
	/**
	 * ��ҳ��ʾ�û�
	 * @param page
	 * @return
	 */
	public List<User> findUsersByPage(Page page);
}
