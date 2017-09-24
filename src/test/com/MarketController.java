package test.com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class MarketController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String share_id=req.getParameter("share_id");
		String company_name=req.getParameter("company_name");
		
		String share_rate=req.getParameter("share_rate");
		String share_quqntity=req.getParameter("share_quqntity");
		
		ApplicationContext app=new ClassPathXmlApplicationContext("Beans.xml");
		
		RegisterDao rd=(RegisterDao)app.getBean("dao");
		
		market m=new market();
		
		m.setShare_id(share_id);
		m.setCompany_name(company_name);
	
		m.setShare_quqntity(share_quqntity);
		m.setShare_rate(share_rate);
		
		System.out.println(company_name);
		System.out.println(share_id);
		System.out.println(share_rate);
		System.out.println(share_quqntity);
		
		
		rd.saveMarket(m);
		
		return new ModelAndView("adminnext");
		
		
		}

}
