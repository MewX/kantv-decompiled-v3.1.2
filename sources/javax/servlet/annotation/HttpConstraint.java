package javax.servlet.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.servlet.annotation.ServletSecurity.EmptyRoleSemantic;
import javax.servlet.annotation.ServletSecurity.TransportGuarantee;

@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface HttpConstraint {
    String[] rolesAllowed() default {};

    TransportGuarantee transportGuarantee() default TransportGuarantee.NONE;

    EmptyRoleSemantic value() default EmptyRoleSemantic.PERMIT;
}
