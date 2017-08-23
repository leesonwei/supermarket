package superMarket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import superMarket.dao.user.UserMapper;
import superMarket.pojo.User;
import superMarket.util.Page;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public List<User> findUsers(User user) {
		// TODO Auto-generated method stub
		return userMapper.findUsers(user);
	}

	@Override
	public User findUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.findUser(user);
	}

	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<User> findUsersByPage(Page page) {
		// TODO Auto-generated method stub
		return null;
	}

}
