package org.fourthline.cling.model.state;

import org.fourthline.cling.model.Command;
import org.fourthline.cling.model.ServiceManager;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.StateVariable;

public abstract class StateVariableAccessor {
    public abstract Class<?> getReturnType();

    public abstract Object read(Object obj) throws Exception;

    public StateVariableValue read(final StateVariable<LocalService> stateVariable, final Object obj) throws Exception {
        AnonymousClass1AccessCommand r0 = new Command() {
            Object result;

            public void execute(ServiceManager serviceManager) throws Exception {
                this.result = StateVariableAccessor.this.read(obj);
                if (((LocalService) stateVariable.getService()).isStringConvertibleType(this.result)) {
                    this.result = this.result.toString();
                }
            }
        };
        ((LocalService) stateVariable.getService()).getManager().execute(r0);
        return new StateVariableValue(stateVariable, r0.result);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(")");
        return sb.toString();
    }
}
