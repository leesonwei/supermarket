package superMarket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import superMarket.pojo.Role;
import superMarket.service.IRoleService;

@Controller
@RequestMapping("role")
public class RoleController {
	@Autowired
	private IRoleService roleService;
	
	@RequestMapping(value="/getRole.html/{id}")
	@ResponseBody
	public Role findRole(@PathVariable("id") int id) {
		Role role=new Role();
		role.setId(id);
		System.out.println("start get role");
		return roleService.findRole(role);
	}
	
	@RequestMapping(value="/getRoles.html")
	@ResponseBody
	public List<Role> findRoles() {
		System.out.println("start get roles");
		return roleService.findRoles(null);
	}
}
