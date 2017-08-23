package superMarket.dao.role;

import java.util.List;

import org.springframework.stereotype.Repository;

import superMarket.pojo.Role;

@Repository
public interface RoleMapper {
	
	/**
	 * ��ѯ��ɫ
	 * @param role
	 * @return
	 */
	public Role findRole(Role role);
	
	/**
	 * ��ѯȫ����ɫ
	 * @param role
	 * @return
	 */
	public List<Role> findRoles(Role role);
}
