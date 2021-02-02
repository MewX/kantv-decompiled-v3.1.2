package org.fourthline.cling.support.lastchange;

import java.util.ArrayList;
import java.util.Collection;
import org.fourthline.cling.model.DefaultServiceManager;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.state.StateVariableValue;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.support.lastchange.LastChangeDelegator;

public class LastChangeAwareServiceManager<T extends LastChangeDelegator> extends DefaultServiceManager<T> {
    protected final LastChangeParser lastChangeParser;

    public LastChangeAwareServiceManager(LocalService<T> localService, LastChangeParser lastChangeParser2) {
        this(localService, null, lastChangeParser2);
    }

    public LastChangeAwareServiceManager(LocalService<T> localService, Class<T> cls, LastChangeParser lastChangeParser2) {
        super(localService, cls);
        this.lastChangeParser = lastChangeParser2;
    }

    /* access modifiers changed from: protected */
    public LastChangeParser getLastChangeParser() {
        return this.lastChangeParser;
    }

    public void fireLastChange() {
        lock();
        try {
            ((LastChangeDelegator) getImplementation()).getLastChange().fire(getPropertyChangeSupport());
        } finally {
            unlock();
        }
    }

    /* access modifiers changed from: protected */
    public Collection<StateVariableValue> readInitialEventedStateVariableValues() throws Exception {
        LastChange lastChange = new LastChange(getLastChangeParser());
        UnsignedIntegerFourBytes[] currentInstanceIds = ((LastChangeDelegator) getImplementation()).getCurrentInstanceIds();
        if (currentInstanceIds.length > 0) {
            for (UnsignedIntegerFourBytes appendCurrentState : currentInstanceIds) {
                ((LastChangeDelegator) getImplementation()).appendCurrentState(lastChange, appendCurrentState);
            }
        } else {
            ((LastChangeDelegator) getImplementation()).appendCurrentState(lastChange, new UnsignedIntegerFourBytes(0));
        }
        StateVariable stateVariable = getService().getStateVariable("LastChange");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new StateVariableValue(stateVariable, lastChange.toString()));
        return arrayList;
    }
}
