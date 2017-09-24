package test.com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class ForgetController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		String email=req.getParameter("email");
		String newpass=req.getParameter("newpass");
		
		ApplicationContext app=new ClassPathXmlApplicationContext("Beans.xml");
		
		try{
		
			RegisterDao rdao=(RegisterDao)app.getBean("dao");
		
		
			Register r=rdao.getByEmail(email);
		
		
			if(email.equals(r.getEmail())){
			
			  r.setPass(newpass);
			 rdao.updateUser(r);
			 return new ModelAndView("Login");
	     
			}else {
			
			
			return new ModelAndView("ForgetPass","msg","please enter valid details");
		}
		
		}catch(Exception e){
			
			return new ModelAndView("ForgetPass","msg","please enter valid details");
		}
		
	}

}
