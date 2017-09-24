package test.com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class LoginController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("LoginCOntroller");
		String email=req.getParameter("email");
		System.out.println(email);
		
		String pass=req.getParameter("pass");
		System.out.println(pass);
		
		
		
		ApplicationContext app=new ClassPathXmlApplicationContext("Beans.xml");
		try{
		RegisterDao rdao=(RegisterDao)app.getBean("dao");
		
		Register r=rdao.getByEmail(email);

		
		System.out.println(r.getEmail());
		if(email.equals(r.getEmail()) && pass.equals(r.getPass())){
			System.out.println("inside if");
			String nam = r.getName();
			req.getSession().setAttribute("name", nam );
			return new ModelAndView("Welcome");
		}else {
			
			
			return new ModelAndView("Login","msg","please enter valid details");
		}
		
		}catch(Exception e){
			
			return new ModelAndView("Login","msg","please enter valid details");
		}
		
		
		
		
		
	
	}

}
