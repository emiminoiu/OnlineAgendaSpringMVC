package MyAnnotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy=myAnnotationConstraintValidator.class)
@Target({ElementType.METHOD,ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface myAnnotation {
   public String value() default "This name already exists,please choose another one";
   public String message() default "This name already exists,please choose another one";
   public Class<?>[] groups() default {};	
   public Class<? extends Payload>[] payload() default {};
}














