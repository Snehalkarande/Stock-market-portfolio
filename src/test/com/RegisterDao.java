package test.com;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

public class RegisterDao {

	HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}

	public void registerUser(Register reg) {

		template.save(reg);
	}
	
	public void saveFeedback(Feedback feed) {

		template.save(feed);
	}
	
	
	public void saveAdmin(Admin admin) {

		template.save(admin);
	}
	
	public void saveMarket(market m) {

		template.save(m);
	}
	
	
	public void savePortfollio(portfollio port)
	{
		template.save(port);
	}
	
	public List<portfollio>getportfollioinfo()
	{
		List<portfollio> list=template.loadAll(portfollio.class);
		return list;
	}
	
	public  List<Feedback>getFeedbackinfo()
	{
	List<Feedback> feed=template.loadAll(Feedback.class);
	return feed;
	}
	
	public List<Register>getRegisterinfo()
	{
		List<Register> list=template.loadAll(Register.class);
		return list;
	}
	public List<market>getMarketinfo()
	{
		List<market> list=template.loadAll(market.class);
		return list;
	}
	

	public Register getByEmail(String email) {

		Register r = (Register) template.get(Register.class, email);

		return r;

	}

	public void updateUser(Register r) {

		 template.update(r);
	}

}
