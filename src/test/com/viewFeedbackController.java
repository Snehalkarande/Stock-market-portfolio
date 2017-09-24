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

public class viewFeedbackController implements Controller {
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		String review=req.getParameter("review");
		String email=req.getParameter("email");
		String tell=req.getParameter("tell_us");
		String name=req.getParameter("name");
		
		
		
		ApplicationContext app=new ClassPathXmlApplicationContext("Beans.xml");
		
		RegisterDao rd=(RegisterDao)app.getBean("dao");

		List<Feedback> list=rd.getFeedbackinfo();
			HttpSession ses=req.getSession();
		
		int i=1;
		
		ses.setAttribute("name", name);
		ses.setAttribute("review", review);
		ses.setAttribute("tell_us", tell);
		ses.setAttribute("email1", email);
		
		/*for(Iterator iterator =list.iterator(); iterator.hasNext(); )
		{
			Feedback f=(Feedback)iterator.next();
			System.out.println(f.getEmail());
			System.out.println(f.getName());
			ses.setAttribute("email"+i, f.getEmail());
		
			
			
			
			
			
			ses.setAttribute("name"+i, f.getName());
			ses.setAttribute("review"+i, f.getReview());
			ses.setAttribute("tell_us"+i, f.getTell_us());
			ses.setAttribute("size", i);
			i++;
		}
		*/		
				
				
		return new ModelAndView("displayfeedback");
		
	}
	

}
