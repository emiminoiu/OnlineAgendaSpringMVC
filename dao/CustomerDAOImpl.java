package springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import springdemo.entity.Customer;
import springdemo.entity.CustomerDetail;
import springdemo.entity.Event;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	// need to inject the session factory
	 @Autowired
	private SessionFactory sessionFactory;

    //public CustomerDAO customerDAO;
	public List<Customer> getCustomers() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query  ... sort by last name
		Query<Customer> theQuery = 
				currentSession.createQuery("from Customer",
						Customer.class);

		// execute query and get result list
		List<Customer> customers = theQuery.getResultList();

		// return the results		
		return customers;
	}


	public void saveCustomer(Customer theCustomer) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// save/upate the customer ... finally LOL
		currentSession.saveOrUpdate(theCustomer);

	}


	public Customer getCustomer(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// now retrieve/read from database using the primary key
		Customer theCustomer = currentSession.get(Customer.class, theId);

		return theCustomer;
	}

	@Override
	public List<Customer> searchCustomers(String theSearchName) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		Query theQuery = null;

		//
		// only search by name if theSearchName is not empty
		//
		if (theSearchName != null && theSearchName.trim().length() > 0) {

			// search for firstName or lastName ... case insensitive
			theQuery =currentSession.createQuery("from Customer where lower(firstName) like :theName or lower(lastName) like :theName", Customer.class);
			theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");

		}
		else {
			// theSearchName is empty ... so just get all customers
			theQuery =currentSession.createQuery("from Customer", Customer.class);            
		}

		// execute query and get result list
		List<Customer> customers = theQuery.getResultList();

		// return the results        
		return customers;

	}
	public void deleteCustomer(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// delete object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from Customer where id=:customerId");
		theQuery.setParameter("customerId", theId);

		theQuery.executeUpdate();		
	}


	@Override
	public void saveCustomerDetail(CustomerDetail theCustomerDetail) {

		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theCustomerDetail);

	}



	public List<CustomerDetail> getCustomerDetails() {
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query  ... sort by last name
		Query<CustomerDetail> theQuery = 
				currentSession.createQuery("from customer_details",
						CustomerDetail.class);

		// execute query and get result list
		List<CustomerDetail> customerDetails = theQuery.getResultList();

		// return the results		
		return customerDetails;
	}


	@Override
	public CustomerDetail getCustomerDetail(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();

		// now retrieve/read from database using the primary key
		CustomerDetail theCustomerDetail = currentSession.get(CustomerDetail.class, theId);

		return theCustomerDetail;
	}

	@Override
	public List<Event> getEvents(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query  ... sort by last name
		Query<Event> theQuery = 
				currentSession.createQuery("select e from Event e join e.customers c where c.id = " + theId,
						Event.class);

		// execute query and get result list
		List<Event> events = theQuery.getResultList();

		// return the results		
		return events;

	}

	@Override
	public Event getEvent(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// now retrieve/read from database using the primary key
		Event theEvent = currentSession.get(Event.class, theId);

		return theEvent;
	}


	public void saveEvent(Event theEvent,int theId) {

		// get current hibernate session	
		Session currentSession = sessionFactory.getCurrentSession();

		Customer theCustomer = this.getCustomer(theId);
		currentSession.saveOrUpdate(theEvent);
		theCustomer.addEvent(theEvent);

	}


	@Override
	public List<Event> getTodayEvents(int theId,String date) {
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query  ... sort by last name
		Query<Event> theQuery = 
				currentSession.createQuery("select e from Event e join e.customers c where c.id = " + theId + " and date = " + "'"+date+"'",
						Event.class);

		// execute query and get result list
		List<Event> events = theQuery.getResultList();

		// return the results		
		return events;
		
	}


	@Override
	public void deleteEvent(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();

		// delete object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from Event where id=:eventId");
		theQuery.setParameter("eventId", theId);

		theQuery.executeUpdate();		
	}


	@Override
	public List<String> getTitles() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		Query theQuery = 
				currentSession.createQuery("title from Event");
		// execute query and get result list
		List<String> theTitles = theQuery.getResultList();

		// return the results		
		return theTitles;
	}


	@Override
	public List<String> getDescriptions() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		Query theQuery = 
				currentSession.createQuery("description from Event");
		// execute query and get result list
		List<String> theDescriptions = theQuery.getResultList();

		// return the results		
		return theDescriptions;
	}

}











