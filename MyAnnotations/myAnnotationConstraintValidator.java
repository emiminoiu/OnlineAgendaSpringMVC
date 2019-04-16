package MyAnnotations;

import java.util.List;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import springdemo.controller.EventController;
import springdemo.service.CustomerService;

public class myAnnotationConstraintValidator implements ConstraintValidator<myAnnotation,String>{
	private EventController ec;
	public List<String> titles;
	public List<String> descriptions;
	private CustomerService customerService;
	boolean result;
	@Override
	public void initialize(myAnnotation mya) {
 		
	}
     //the logic of myAnnotation
	@Override
	public boolean isValid(String code, ConstraintValidatorContext theConstaint) {
        
        titles = customerService.getTitles();
       
        for(String i : titles)
        {
        	System.out.println(i);
        }
        //descriptions = ec.getDescriptions();
        for(String i : titles)
        {
	    result = code.equals(i);
		if(code != null)		
			result = code.equals(i);
		else
			result = true;
		if(result == true)
			break;
        }
		return result;
	}

}
