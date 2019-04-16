package springdemo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springdemo.entity.Customer;
import springdemo.entity.Event;
import springdemo.service.CustomerService;

@Controller
@RequestMapping("/event")
public class EventController {
	@Autowired
	private CustomerService customerService;
    public int id;
	@InitBinder
	public void initBinder(WebDataBinder dataBinder)
	{
		StringTrimmerEditor s = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, s);
	}
	
	@GetMapping("/showEvents")
	public String showEvents(@RequestParam("customerId") int theId,Model theModel)
	{
		Customer theCustomer = customerService.getCustomer(theId);
		theModel.addAttribute("customerProfile", theCustomer);
		id = theId;
		List<Event> theEvents = customerService.getEvents(theId);
		theModel.addAttribute("events",theEvents);
		return "events-page";
	}
	@GetMapping("/showFancyEvents")
	public String showEvents1(@RequestParam("customerId") int theId,Model theModel)
	{
		Customer theCustomer = customerService.getCustomer(theId);
		theModel.addAttribute("customerProfile", theCustomer);
		id = theId;
		List<Event> theEvents = customerService.getEvents(theId);
		theModel.addAttribute("events",theEvents);
		return "fancy-events-page";
	}

	@GetMapping("/AddEventForm")
	public String showFormForUpdate(Model theModel) {

		// get the customer from our service
		Event theEvent = new Event();	

		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("event", theEvent);

		// send over to our form		
		return "event-form";
	}
	@GetMapping("/AddFancyEventForm")
	public String showFormForEvent(Model theModel) {

		// get the customer from our service
		Event theEvent = new Event();	

		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("event", theEvent);

		// send over to our form		
		return "fancy-event-form";
	}
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate1(Model theModel) {

		// get the customer from our service
		Event theEvent = new Event();	

		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("event", theEvent);

		// send over to our form		
		return "fancy-event-form";
	}
	@GetMapping("/saveEvent")
	public String saveEvent(@Valid @ModelAttribute("event") Event theEvent,BindingResult theBindingResult){

		//int id = customer.getId();
		// save the customer using our service
			customerService.saveEvent(theEvent,id);	
			return "success-page";	
	}
	@GetMapping("/showTodayEvents")
	public String showTodayEvents(Model theModel,@RequestParam("customerId") int theId,String date)
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
		return "today-events";
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
	@GetMapping("/delete")
	public String deleteEvent(@RequestParam("eventId") int theId) {

		// delete the customer
		customerService.deleteEvent(theId);

		return "redirect:/customer/list";
	}
	
}