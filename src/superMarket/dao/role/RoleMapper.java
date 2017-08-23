package superMarket.dao.role;

import java.util.List;

import org.springframework.stereotype.Repository;

import superMarket.pojo.Role;

@Repository
public interface RoleMapper {
	
	/**
	 * 查询角色
	 * @param role
	 * @return
	 */
	public Role findRole(Role role);
	
	/**
	 * 查询全部角色
	 * @param role
	 * @return
	 */
	public List<Role> findRoles(Role role);
}
