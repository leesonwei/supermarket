package superMarket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import superMarket.dao.role.RoleMapper;
import superMarket.pojo.Role;

@Service("roleService")
public class RoleServiceImpl implements IRoleService{
	@Autowired
	private RoleMapper roleMapper;

	@Override
	public List<Role> findRoles(Role role) {
		// TODO Auto-generated method stub
		return roleMapper.findRoles(role);
	}

	@Override
	public Role findRole(Role role) {
		// TODO Auto-generated method stub
		return roleMapper.findRole(role);
	}

	@Override
	public boolean addRole(Role role) {
		// TODO Auto-generated method stub
		return false;
	}

}
