package test.com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class portfollioController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		String user=req.getParameter("user");
		String company=req.getParameter("company");
		String share_id=req.getParameter("share_id");
		String date_of_purch=req.getParameter("date_of_purch");
		String rate_of_share=req.getParameter("rate_of_share");
		String quantity=req.getParameter("quantity");
		String profit=req.getParameter("profit");
		String loss=req.getParameter("loss");
	
		ApplicationContext app=new ClassPathXmlApplicationContext("Beans.xml");
		
		RegisterDao rd=(RegisterDao)app.getBean("dao");
		
		portfollio p=new portfollio();
		
		p.setUser(user);
		p.setCompany(company);
		p.setShare_id(share_id);
		p.setDate_of_purch(date_of_purch);
		p.setRate_of_share(rate_of_share);
		p.setQuantity(quantity);
		p.setLoss(loss);
		p.setProfit(profit);
		
		
		
		
		
		rd.savePortfollio(p);
		
		
		return new ModelAndView("hello");
	}

}
