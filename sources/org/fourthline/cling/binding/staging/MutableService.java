package org.fourthline.cling.binding.staging;

import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.Action;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.types.ServiceId;
import org.fourthline.cling.model.types.ServiceType;

public class MutableService {
    public List<MutableAction> actions = new ArrayList();
    public URI controlURI;
    public URI descriptorURI;
    public URI eventSubscriptionURI;
    public ServiceId serviceId;
    public ServiceType serviceType;
    public List<MutableStateVariable> stateVariables = new ArrayList();

    public Service build(Device device) throws ValidationException {
        return device.newInstance(this.serviceType, this.serviceId, this.descriptorURI, this.controlURI, this.eventSubscriptionURI, (Action<S>[]) createActions(), (StateVariable<S>[]) createStateVariables());
    }

    public Action[] createActions() {
        Action[] actionArr = new Action[this.actions.size()];
        int i = 0;
        for (MutableAction build : this.actions) {
            int i2 = i + 1;
            actionArr[i] = build.build();
            i = i2;
        }
        return actionArr;
    }

    public StateVariable[] createStateVariables() {
        StateVariable[] stateVariableArr = new StateVariable[this.stateVariables.size()];
        int i = 0;
        for (MutableStateVariable build : this.stateVariables) {
            int i2 = i + 1;
            stateVariableArr[i] = build.build();
            i = i2;
        }
        return stateVariableArr;
    }
}
