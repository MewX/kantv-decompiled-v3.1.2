package javax.servlet;

import javax.servlet.annotation.ServletSecurity.EmptyRoleSemantic;
import javax.servlet.annotation.ServletSecurity.TransportGuarantee;

public class HttpConstraintElement {
    private EmptyRoleSemantic emptyRoleSemantic;
    private String[] rolesAllowed;
    private TransportGuarantee transportGuarantee;

    public HttpConstraintElement() {
        this(EmptyRoleSemantic.PERMIT);
    }

    public HttpConstraintElement(EmptyRoleSemantic emptyRoleSemantic2) {
        this(emptyRoleSemantic2, TransportGuarantee.NONE, new String[0]);
    }

    public HttpConstraintElement(TransportGuarantee transportGuarantee2, String... strArr) {
        this(EmptyRoleSemantic.PERMIT, transportGuarantee2, strArr);
    }

    public HttpConstraintElement(EmptyRoleSemantic emptyRoleSemantic2, TransportGuarantee transportGuarantee2, String... strArr) {
        if (emptyRoleSemantic2 != EmptyRoleSemantic.DENY || strArr.length <= 0) {
            this.emptyRoleSemantic = emptyRoleSemantic2;
            this.transportGuarantee = transportGuarantee2;
            this.rolesAllowed = strArr;
            return;
        }
        throw new IllegalArgumentException("Deny semantic with rolesAllowed");
    }

    public EmptyRoleSemantic getEmptyRoleSemantic() {
        return this.emptyRoleSemantic;
    }

    public TransportGuarantee getTransportGuarantee() {
        return this.transportGuarantee;
    }

    public String[] getRolesAllowed() {
        return this.rolesAllowed;
    }
}
