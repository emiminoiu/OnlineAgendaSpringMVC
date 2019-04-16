package springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springdemo.dao.CustomerDAO;
import springdemo.entity.Customer;
import springdemo.entity.CustomerDetail;
import springdemo.entity.Event;

@Service
public class CustomerServiceImpl implements CustomerService {

	// need to inject customer dao
	@Autowired
	private CustomerDAO customerDAO;

	@Transactional
	public List<Customer> getCustomers() {
		return customerDAO.getCustomers();
	}


	@Transactional
	public void saveCustomer(Customer theCustomer) {

		customerDAO.saveCustomer(theCustomer);
	}

	@Transactional
	public Customer getCustomer(int theId) {

		return customerDAO.getCustomer(theId);
	}
	@Override
	@Transactional
	public List<Customer> searchCustomers(String theSearchName) {

		return customerDAO.searchCustomers(theSearchName);
	}
	@Transactional
	public void deleteCustomer(int theId) {

		customerDAO.deleteCustomer(theId);
	}


	@Transactional
	public void saveCustomerDetail(CustomerDetail theCustomerDetail) {
		customerDAO.saveCustomerDetail(theCustomerDetail);

	}


	@Transactional
	public List<CustomerDetail> getCustomerDetails() {
		return customerDAO.getCustomerDetails();
	}


	@Transactional
	public CustomerDetail getCustomerDetail(int theId) {
		return customerDAO.getCustomerDetail(theId);
	}


	@Transactional
	public List<Event> getEvents(int theId) {
		return customerDAO.getEvents(theId);
	}


	@Transactional
	public Event getEvent(int theId) {
		return customerDAO.getEvent(theId);
	}

	@Transactional
	public void saveEvent(Event theEvent,int theId) {

		customerDAO.saveEvent(theEvent,theId);
	}

	@Transactional
	public List<Event> getTodayEvents(int theId, String date) {
		return customerDAO.getTodayEvents(theId, date);
	}

	@Transactional
	public void deleteEvent(int theId) {
		customerDAO.deleteEvent(theId);
	}


	@Transactional
	public List<String> getTitles() {
		return customerDAO.getTitles();
	}


	@Transactional
	public List<String> getDescriptions() {
		return customerDAO.getDescriptions();
	}
}





