package superMarket.service;

import java.util.List;

import superMarket.pojo.Role;

public interface IRoleService {
	
	/**
	 * �������н�ɫ����ģ������
	 * @param role
	 * @return �û��б�
	 */
	public List<Role> findRoles(Role role);
	
	/**
	 * ����ָ����ɫ
	 * @param role
	 * @return
	 */
	public Role findRole(Role role);
	
	/**
	 * ��ӽ�ɫ
	 * @param role ��ɫ����
	 * @return �ɹ�����true,ʧ�ܷ���false
	 */
	public boolean addRole(Role role);
	
}
