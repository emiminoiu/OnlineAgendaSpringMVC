package springdemo.service;

import java.util.List;

import springdemo.entity.Customer;
import springdemo.entity.CustomerDetail;
import springdemo.entity.Event;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);

	public List<Customer> searchCustomers(String theSearchName);
	
	public void saveCustomerDetail(CustomerDetail theCustomerDetail);
	
	public List<CustomerDetail> getCustomerDetails();
	
	public CustomerDetail getCustomerDetail(int theId);
	
	public List<Event> getEvents(int theId);
	
	public Event getEvent(int theId);
	
	public void saveEvent(Event theEvent,int theId);
	
	public List<Event> getTodayEvents(int theId,String date);
	
	public void deleteEvent(int theId);
	
	public List<String> getTitles();
	
	public List<String> getDescriptions();

}
