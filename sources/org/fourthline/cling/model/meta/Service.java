package org.fourthline.cling.model.meta;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import org.fourthline.cling.model.ServiceReference;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.Datatype.Builtin;
import org.fourthline.cling.model.types.ServiceId;
import org.fourthline.cling.model.types.ServiceType;

public abstract class Service<D extends Device, S extends Service> {
    private static final Logger log = Logger.getLogger(Service.class.getName());
    private final Map<String, Action> actions;
    private D device;
    private final ServiceId serviceId;
    private final ServiceType serviceType;
    private final Map<String, StateVariable> stateVariables;

    public abstract Action getQueryStateVariableAction();

    public Service(ServiceType serviceType2, ServiceId serviceId2) throws ValidationException {
        this(serviceType2, serviceId2, null, null);
    }

    public Service(ServiceType serviceType2, ServiceId serviceId2, Action<S>[] actionArr, StateVariable<S>[] stateVariableArr) throws ValidationException {
        this.actions = new HashMap();
        this.stateVariables = new HashMap();
        this.serviceType = serviceType2;
        this.serviceId = serviceId2;
        if (actionArr != null) {
            for (Action<S> action : actionArr) {
                this.actions.put(action.getName(), action);
                action.setService(this);
            }
        }
        if (stateVariableArr != null) {
            for (StateVariable<S> stateVariable : stateVariableArr) {
                this.stateVariables.put(stateVariable.getName(), stateVariable);
                stateVariable.setService(this);
            }
        }
    }

    public ServiceType getServiceType() {
        return this.serviceType;
    }

    public ServiceId getServiceId() {
        return this.serviceId;
    }

    public boolean hasActions() {
        return getActions() != null && getActions().length > 0;
    }

    public Action<S>[] getActions() {
        Map<String, Action> map = this.actions;
        if (map == null) {
            return null;
        }
        return (Action[]) map.values().toArray(new Action[this.actions.values().size()]);
    }

    public boolean hasStateVariables() {
        return getStateVariables() != null && getStateVariables().length > 0;
    }

    public StateVariable<S>[] getStateVariables() {
        Map<String, StateVariable> map = this.stateVariables;
        if (map == null) {
            return null;
        }
        return (StateVariable[]) map.values().toArray(new StateVariable[this.stateVariables.values().size()]);
    }

    public D getDevice() {
        return this.device;
    }

    /* access modifiers changed from: 0000 */
    public void setDevice(D d) {
        if (this.device == null) {
            this.device = d;
            return;
        }
        throw new IllegalStateException("Final value has been set already, model is immutable");
    }

    public Action<S> getAction(String str) {
        Map<String, Action> map = this.actions;
        if (map == null) {
            return null;
        }
        return (Action) map.get(str);
    }

    public StateVariable<S> getStateVariable(String str) {
        String str2 = QueryStateVariableAction.VIRTUAL_STATEVARIABLE_INPUT;
        if (str2.equals(str)) {
            return new StateVariable<>(str2, new StateVariableTypeDetails(Builtin.STRING.getDatatype()));
        }
        String str3 = QueryStateVariableAction.VIRTUAL_STATEVARIABLE_OUTPUT;
        if (str3.equals(str)) {
            return new StateVariable<>(str3, new StateVariableTypeDetails(Builtin.STRING.getDatatype()));
        }
        Map<String, StateVariable> map = this.stateVariables;
        return map == null ? null : (StateVariable) map.get(str);
    }

    public StateVariable<S> getRelatedStateVariable(ActionArgument actionArgument) {
        return getStateVariable(actionArgument.getRelatedStateVariableName());
    }

    public Datatype<S> getDatatype(ActionArgument actionArgument) {
        return getRelatedStateVariable(actionArgument).getTypeDetails().getDatatype();
    }

    public ServiceReference getReference() {
        return new ServiceReference(getDevice().getIdentity().getUdn(), getServiceId());
    }

    public List<ValidationError> validate() {
        Action[] actions2;
        ArrayList arrayList = new ArrayList();
        if (getServiceType() == null) {
            arrayList.add(new ValidationError(getClass(), "serviceType", "Service type/info is required"));
        }
        if (getServiceId() == null) {
            arrayList.add(new ValidationError(getClass(), "serviceId", "Service ID is required"));
        }
        if (hasStateVariables()) {
            for (StateVariable validate : getStateVariables()) {
                arrayList.addAll(validate.validate());
            }
        }
        if (hasActions()) {
            for (Action action : getActions()) {
                List<ValidationError> validate2 = action.validate();
                if (validate2.size() > 0) {
                    this.actions.remove(action.getName());
                    Logger logger = log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Discarding invalid action of service '");
                    sb.append(getServiceId());
                    String str = "': ";
                    sb.append(str);
                    sb.append(action.getName());
                    logger.warning(sb.toString());
                    for (ValidationError validationError : validate2) {
                        Logger logger2 = log;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Invalid action '");
                        sb2.append(action.getName());
                        sb2.append(str);
                        sb2.append(validationError);
                        logger2.warning(sb2.toString());
                    }
                }
            }
        }
        return arrayList;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(") ServiceId: ");
        sb.append(getServiceId());
        return sb.toString();
    }
}
