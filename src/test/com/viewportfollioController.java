package test.com;

import java.sql.ResultSet;

import java.util.List;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.dao.support.DaoSupport;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


public class viewportfollioController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		ApplicationContext app=new ClassPathXmlApplicationContext("Beans.xml");
		
		RegisterDao rd=(RegisterDao)app.getBean("dao");
		
		List<portfollio> list=rd.getportfollioinfo();
		
		
		HttpSession ses=req.getSession();
		
		int i=1;
		
		for(Iterator iterator =list.iterator(); iterator.hasNext(); )
		{
			portfollio p = (portfollio)iterator.next();
			
			System.out.println(p.getUser());
			
			ses.setAttribute("user", p.getUser());
			ses.setAttribute("company",p.getCompany());
			ses.setAttribute("share_id",p.getShare_id());
			ses.setAttribute("date_of_purch",p.getDate_of_purch());
			ses.setAttribute("rate_of_share",p.getRate_of_share());
			ses.setAttribute("quantity", p.getQuantity());
			
		}
		
		
		
		
		return new ModelAndView("displayportfollio");
	}

}
