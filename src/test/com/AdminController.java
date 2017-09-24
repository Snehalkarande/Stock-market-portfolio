package test.com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class AdminController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		
		
		/*ApplicationContext app=new ClassPathXmlApplicationContext("Beans.xml");
		
		RegisterDao rd=(RegisterDao)app.getBean("dao");
		
		
		System.out.println(email);
		System.out.println(pass);
		
		
		Admin a=new Admin();
		a.setEmail(email);
		a.setPass(pass);
		try{
			rd.saveAdmin(a);
			
		}catch(Exception e)
		{
			return new ModelAndView("main_page");
		}*/
		if(email.equals(email) && pass.equals(pass))
		{
		
		return new ModelAndView("adminnext");
		
		}
		return new ModelAndView("main_page");
		
		
	}

}
