package test.com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class FeedbackController  implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String review=req.getParameter("review");
		/*String over_exp=req.getParameter("over_exp");
		String time_resopnce=req.getParameter("time_resopnce");
		String support=req.getParameter("support");
		String satisfaction=req.getParameter("satisfaction");
*/		String tell_us=req.getParameter("tell_us");
		
		ApplicationContext app=new ClassPathXmlApplicationContext("Beans.xml");
		
		RegisterDao rd=(RegisterDao)app.getBean("dao");
		
		System.out.println(name);
		System.out.println(email);
		System.out.println(review);
		System.out.println(tell_us);
		/*System.out.println(over_exp);
	
		System.out.println(satisfaction);
		System.out.println(time_resopnce);
		*/
		Feedback f=new Feedback();
		
		f.setEmail(email);
		f.setName(name);
		f.setReview(review);
		f.setTell_us(tell_us);
		/*f.setOver_exp(over_exp);
		
		f.setSatisfaction(satisfaction);
		f.setSupport(support);
		
		f.setTime_resopnce(time_resopnce);*/
		
		rd.saveFeedback(f);
		
		return new ModelAndView("Welcome");
	}

	

}
