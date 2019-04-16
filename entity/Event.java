package springdemo.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import MyAnnotations.myAnnotation;

@Entity
@Table(name="event")
public class Event {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="EventId")
	private int id;
	
	@NotEmpty
	@Size(min = 3, message="At least three characters needed")
	@Column(name="title",unique = true)
	private String title;
	@NotEmpty
	@Size(min = 3, message="At least three characters needed")
	@Column(name="date")
	private String date;
	
	@NotEmpty
	@Size(min = 3, message="At least three characters needed")
	@Column(name="time")
	private String time;
	
	@NotEmpty
	@Size(min = 3, message="At least three characters needed")
	@Column(name="place")
	private String place;
	
	@NotEmpty
	@Size(min = 5, message="At least five characters needed")
	@Column(name="description",unique = true)
	private String description;

	@ManyToMany(fetch= FetchType.EAGER,cascade = {
			CascadeType.DETACH,CascadeType.MERGE,
			CascadeType.PERSIST,CascadeType.REFRESH })
	@JoinTable(name = "customer_event",
	           joinColumns = @JoinColumn(name = "event_id"),
	           inverseJoinColumns = @JoinColumn(name = "customer_id"))
	private List<Customer> customers;
	public Event() {}

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Event [id=" + id + ", title=" + title + ", customers=" + customers + "]";
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public List<Customer> getCustomers() {
		return customers;
	}

	public void setCustomers(List<Customer> customers) {
		this.customers = customers;
	}
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	public void addCustomer(Customer theCustomer)
	{
       if(customers == null)
       {
    	   customers = new ArrayList();
       }
       customers.add(theCustomer);
	}
		
	
}
