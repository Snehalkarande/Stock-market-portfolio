package test.com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class RegisterController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		
	String email=req.getParameter("email");
	String lname=req.getParameter("lname");
	String mob=req.getParameter("mob");
	String name=req.getParameter("name");
	String pass=req.getParameter("pass");
	String city=req.getParameter("city");
	
	ApplicationContext app=new ClassPathXmlApplicationContext("Beans.xml");
	
	RegisterDao rd=(RegisterDao)app.getBean("dao");
	
	Register r=new Register();
	r.setName(name);
	r.setLname(lname);
	r.setEmail(email);
	r.setMob(mob);
	r.setPass(pass);
	r.setCity(city);
	
	System.out.println(name);
	System.out.println(lname);
	System.out.println(email);
	System.out.println(mob);
	System.out.println(pass);
	System.out.println(city);
	rd.registerUser(r);
	return new ModelAndView("Login");
	}

}
