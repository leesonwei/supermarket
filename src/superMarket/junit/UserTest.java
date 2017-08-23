package superMarket.junit;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.sun.glass.ui.Application;

import superMarket.pojo.User;
import superMarket.service.IUserService;

public class UserTest {

	@Test
	public void test() {
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationContext_jdbc.xml");
		/*IUserService userService=act.getBean("userService",IUserService.class);
		User user=new User();
		user.setId(1);
		assertNotNull(userService.findUser(user));*/
	}

}
