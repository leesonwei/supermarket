package superMarket.service;

import java.util.List;

import superMarket.pojo.Role;

public interface IRoleService {
	
	/**
	 * 查找所有角色或者模糊查找
	 * @param role
	 * @return 用户列表
	 */
	public List<Role> findRoles(Role role);
	
	/**
	 * 查找指定角色
	 * @param role
	 * @return
	 */
	public Role findRole(Role role);
	
	/**
	 * 添加角色
	 * @param role 角色对象
	 * @return 成功返回true,失败返回false
	 */
	public boolean addRole(Role role);
	
}
