package test.com;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class displayuserController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		
		ApplicationContext app=new ClassPathXmlApplicationContext("Beans.xml");
		
		RegisterDao rd=(RegisterDao)app.getBean("dao");
		
		List<Register> list=rd.getRegisterinfo();
		HttpSession ses=req.getSession();
		int i=1;
		

		for(Iterator iterator =list.iterator(); iterator.hasNext(); )
		{
			Register r=(Register)iterator.next();
			System.out.println(r.getEmail());
			System.out.println(r.getName());
			
			ses.setAttribute("email"+i, r.getEmail());
			ses.setAttribute("name"+i, r.getName());
			ses.setAttribute("lname"+i, r.getLname());
			ses.setAttribute("mob"+i, r.getMob());
			ses.setAttribute("city"+i, r.getCity());
			
			ses.setAttribute("size", i);
			i++;

			
		}
		
		return new ModelAndView("displayuser");

		
		
		
	}

	
	
	
}
