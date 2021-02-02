package org.fourthline.cling.model.meta;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.Validatable;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.meta.ActionArgument.Direction;
import org.fourthline.cling.model.meta.Service;

public class Action<S extends Service> implements Validatable {
    private static final Logger log = Logger.getLogger(Action.class.getName());
    private final ActionArgument[] arguments;
    private final ActionArgument[] inputArguments;
    private final String name;
    private final ActionArgument[] outputArguments;
    private S service;

    public Action(String str, ActionArgument[] actionArgumentArr) {
        this.name = str;
        if (actionArgumentArr != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (ActionArgument actionArgument : actionArgumentArr) {
                actionArgument.setAction(this);
                if (actionArgument.getDirection().equals(Direction.IN)) {
                    arrayList.add(actionArgument);
                }
                if (actionArgument.getDirection().equals(Direction.OUT)) {
                    arrayList2.add(actionArgument);
                }
            }
            this.arguments = actionArgumentArr;
            this.inputArguments = (ActionArgument[]) arrayList.toArray(new ActionArgument[arrayList.size()]);
            this.outputArguments = (ActionArgument[]) arrayList2.toArray(new ActionArgument[arrayList2.size()]);
            return;
        }
        this.arguments = new ActionArgument[0];
        this.inputArguments = new ActionArgument[0];
        this.outputArguments = new ActionArgument[0];
    }

    public String getName() {
        return this.name;
    }

    public boolean hasArguments() {
        return getArguments() != null && getArguments().length > 0;
    }

    public ActionArgument[] getArguments() {
        return this.arguments;
    }

    public S getService() {
        return this.service;
    }

    /* access modifiers changed from: 0000 */
    public void setService(S s) {
        if (this.service == null) {
            this.service = s;
            return;
        }
        throw new IllegalStateException("Final value has been set already, model is immutable");
    }

    public ActionArgument<S> getFirstInputArgument() {
        if (hasInputArguments()) {
            return getInputArguments()[0];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No input arguments: ");
        sb.append(this);
        throw new IllegalStateException(sb.toString());
    }

    public ActionArgument<S> getFirstOutputArgument() {
        if (hasOutputArguments()) {
            return getOutputArguments()[0];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No output arguments: ");
        sb.append(this);
        throw new IllegalStateException(sb.toString());
    }

    public ActionArgument<S>[] getInputArguments() {
        return this.inputArguments;
    }

    public ActionArgument<S> getInputArgument(String str) {
        ActionArgument<S>[] inputArguments2;
        for (ActionArgument<S> actionArgument : getInputArguments()) {
            if (actionArgument.isNameOrAlias(str)) {
                return actionArgument;
            }
        }
        return null;
    }

    public ActionArgument<S>[] getOutputArguments() {
        return this.outputArguments;
    }

    public ActionArgument<S> getOutputArgument(String str) {
        ActionArgument<S>[] outputArguments2;
        for (ActionArgument<S> actionArgument : getOutputArguments()) {
            if (actionArgument.getName().equals(str)) {
                return actionArgument;
            }
        }
        return null;
    }

    public boolean hasInputArguments() {
        return getInputArguments() != null && getInputArguments().length > 0;
    }

    public boolean hasOutputArguments() {
        return getOutputArguments() != null && getOutputArguments().length > 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(", Arguments: ");
        sb.append(getArguments() != null ? Integer.valueOf(getArguments().length) : "NO ARGS");
        sb.append(") ");
        sb.append(getName());
        return sb.toString();
    }

    public List<ValidationError> validate() {
        ActionArgument[] arguments2;
        ActionArgument[] arguments3;
        ArrayList arrayList = new ArrayList();
        String str = "UPnP specification violation of: ";
        if (getName() == null || getName().length() == 0) {
            Class cls = getClass();
            StringBuilder sb = new StringBuilder();
            sb.append("Action without name of: ");
            sb.append(getService());
            arrayList.add(new ValidationError(cls, "name", sb.toString()));
        } else if (!ModelUtil.isValidUDAName(getName())) {
            Logger logger = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(getService().getDevice());
            logger.warning(sb2.toString());
            Logger logger2 = log;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Invalid action name: ");
            sb3.append(this);
            logger2.warning(sb3.toString());
        }
        for (ActionArgument actionArgument : getArguments()) {
            if (getService().getStateVariable(actionArgument.getRelatedStateVariableName()) == null) {
                Class cls2 = getClass();
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Action argument references an unknown state variable: ");
                sb4.append(actionArgument.getRelatedStateVariableName());
                arrayList.add(new ValidationError(cls2, "arguments", sb4.toString()));
            }
        }
        ActionArgument actionArgument2 = null;
        int i = 0;
        int i2 = 0;
        for (ActionArgument actionArgument3 : getArguments()) {
            if (actionArgument3.isReturnValue()) {
                if (actionArgument3.getDirection() == Direction.IN) {
                    Logger logger3 = log;
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("UPnP specification violation of :");
                    sb5.append(getService().getDevice());
                    logger3.warning(sb5.toString());
                    log.warning("Input argument can not have <retval/>");
                } else {
                    if (actionArgument2 != null) {
                        Logger logger4 = log;
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append(str);
                        sb6.append(getService().getDevice());
                        logger4.warning(sb6.toString());
                        Logger logger5 = log;
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append("Only one argument of action '");
                        sb7.append(getName());
                        sb7.append("' can be <retval/>");
                        logger5.warning(sb7.toString());
                    }
                    i2 = i;
                    actionArgument2 = actionArgument3;
                }
            }
            i++;
        }
        if (actionArgument2 != null) {
            for (int i3 = 0; i3 < i2; i3++) {
                if (getArguments()[i3].getDirection() == Direction.OUT) {
                    Logger logger6 = log;
                    StringBuilder sb8 = new StringBuilder();
                    sb8.append(str);
                    sb8.append(getService().getDevice());
                    logger6.warning(sb8.toString());
                    Logger logger7 = log;
                    StringBuilder sb9 = new StringBuilder();
                    sb9.append("Argument '");
                    sb9.append(actionArgument2.getName());
                    sb9.append("' of action '");
                    sb9.append(getName());
                    sb9.append("' is <retval/> but not the first OUT argument");
                    logger7.warning(sb9.toString());
                }
            }
        }
        for (ActionArgument validate : this.arguments) {
            arrayList.addAll(validate.validate());
        }
        return arrayList;
    }

    public Action<S> deepCopy() {
        ActionArgument[] actionArgumentArr = new ActionArgument[getArguments().length];
        for (int i = 0; i < getArguments().length; i++) {
            actionArgumentArr[i] = getArguments()[i].deepCopy();
        }
        return new Action<>(getName(), actionArgumentArr);
    }
}
