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

public class displaymarketController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
ApplicationContext app=new ClassPathXmlApplicationContext("Beans.xml");
		
		RegisterDao rd=(RegisterDao)app.getBean("dao");
		
		List<market> list=rd.getMarketinfo();
		HttpSession ses=req.getSession();
		int i=1;
		
		
		for(Iterator iterator =list.iterator(); iterator.hasNext(); )
		{
			market m=(market)iterator.next();
			ses.setAttribute("company_name"+i,m.getCompany_name() );
			ses.setAttribute("share_id"+i, m.getShare_id());
			ses.setAttribute("share_rate"+i, m.getShare_rate());
			ses.setAttribute("share_quqntity"+i, m.getShare_quqntity());
			
			ses.setAttribute("size", i);
			i++;

			System.out.println(m.getShare_rate());
			System.out.println( m.getShare_quqntity());
		}
		
		
		return new ModelAndView("displaymarket");

	}

}
