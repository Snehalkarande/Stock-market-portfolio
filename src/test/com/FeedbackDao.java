package test.com;

import org.springframework.orm.hibernate3.HibernateTemplate;

public class FeedbackDao {
	HibernateTemplate template;
	
	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	public void feedbackuser(Register feed) {

		template.save(feed);
	}

	public Register getByEmail(String email) {

		Register r = (Register) template.get(Register.class, email);

		return r;

	}


}
