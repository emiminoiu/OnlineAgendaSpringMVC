package springdemo.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springdemo.entity.Customer;
import springdemo.entity.CustomerDetail;
import springdemo.entity.Event;
import springdemo.service.CustomerService;

@Controller
public class DemoController {
	@Autowired
	private CustomerService customerService;
	@GetMapping("/")
	public String showHome(Model theModel) {
		// get customers from the service
		List<Customer> theCustomers = customerService.getCustomers();
		// add the customers to the model
		theModel.addAttribute("customers", theCustomers);
		return "home";
	}


	@GetMapping("/list")
	public String listCustomers(Model theModel) {

		// get customers from the service
		List<Customer> theCustomers = customerService.getCustomers();
		// add the customers to the model
		theModel.addAttribute("customers", theCustomers);

		return "list-customers";
	}
	@GetMapping("/fancylist")
	public String listCustomers1(Model theModel) {

		// get customers from the service
		List<Customer> theCustomers = customerService.getCustomers();
		// add the customers to the model
		theModel.addAttribute("customers", theCustomers);

		return "fancy-list-customer";
	}
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {

		// create model attribute to bind form data
		Customer theCustomer = new Customer();

		theModel.addAttribute("customer", theCustomer);

		return "customer-form";
	}
	@RequestMapping(value = "/showFormForFancyAdd",method = RequestMethod.GET)
	public String showFormForAdd1(Model theModel) {

		// create model attribute to bind form data
		Customer theCustomer = new Customer();

		theModel.addAttribute("customer", theCustomer);

		return "fancy-customer-form";
	}

	@GetMapping("/showProfile")
	public String showProfile(@RequestParam("customerId") int theId,Model theModel) {

		// create model attribute to bind form data
		Customer theCustomer = customerService.getCustomer(theId);
		theModel.addAttribute("customerProfile", theCustomer);
		CustomerDetail theCustomerDetail = customerService.getCustomerDetail(theId);	
		// set customer details as a model attribute to pre-populate the form
		theModel.addAttribute("customerDetail", theCustomerDetail);
		byte[] photoencodeBase64 = theCustomerDetail.getImage();
		String base64Encoded;

		try {
			try {
				// convert byte array back to BufferedImage
				InputStream in = new ByteArrayInputStream(photoencodeBase64);
				BufferedImage bImageFromConvert = ImageIO.read(in);
				theModel.addAttribute("accPicture", bImageFromConvert);




			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		//theModel.addAttribute("accPicture", photoencodeBase64);
		return "profile-page";

	}

	@RequestMapping(value = "/saveCustomer",method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {

		// save the customer using our service
		customerService.saveCustomer(theCustomer);	

		return "redirect:/";
	}
	@PostMapping("/saveCustomerDetails")
	public String saveCustomer(@ModelAttribute("customerDetail") CustomerDetail theCustomerDetail) {

		// save the customer using our service
		customerService.saveCustomerDetail(theCustomerDetail);	

		return "redirect:/customer/fancylist";
	}

	@GetMapping("/customer/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int theId,
			Model theModel) {

		// get the customer from our service
		Customer theCustomer = customerService.getCustomer(theId);	

		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("customer", theCustomer);
		// send over to our form		
		return "fancy-customer-form";
	}
	
	@GetMapping("/editCustomerDetails")
	public String editCustomerDetails(Model theModel,@RequestParam("customerId") int theId) 
	{
		// get the customer from our service
		CustomerDetail theCustomerDetail = customerService.getCustomerDetail(theId);	

		// set customerdetail as a model attribute to pre-populate the form
		theModel.addAttribute("customerDetail", theCustomerDetail);
		return "additional-info";
	}
	@GetMapping("/search")
	public String searchCustomers(@RequestParam("theSearchName") String theSearchName,
			Model theModel) {

		// search customers from the service
		List<Customer> theCustomers = customerService.searchCustomers(theSearchName);

		// add the customers to the model
		theModel.addAttribute("customers", theCustomers);

		return "fancy-list-customer";        
	}
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int theId) {

		// delete the customer
		customerService.deleteCustomer(theId);

		return "redirect:/customer/list";
	}
	@GetMapping("/showFancyTodayEvents")
	public String showTodayEvents1(Model theModel,@RequestParam("customerId") int theId,String date)
	{
		String pattern = "dd.MM.yyyy";
		date = new SimpleDateFormat(pattern).format(new Date());
		List<Event> todayEvents = customerService.getTodayEvents(theId, date);
		Customer theCustomer = customerService.getCustomer(theId);
		theModel.addAttribute("customerEventProfile", theCustomer);
		System.out.println(date);
		System.out.println(todayEvents);
		if(todayEvents.isEmpty())
		{
			return "no-event-today";
		}
		else
			theModel.addAttribute("todayEvents", todayEvents);
		return "fancy-today-events";
	}

}










