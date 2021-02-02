package org.fourthline.cling.model.meta;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.Validatable;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.Datatype;

public class ActionArgument<S extends Service> implements Validatable {
    private static final Logger log = Logger.getLogger(ActionArgument.class.getName());
    private Action<S> action;
    private final String[] aliases;
    private final Direction direction;
    private final String name;
    private final String relatedStateVariableName;
    private final boolean returnValue;

    public enum Direction {
        IN,
        OUT
    }

    public ActionArgument(String str, String str2, Direction direction2) {
        this(str, new String[0], str2, direction2, false);
    }

    public ActionArgument(String str, String[] strArr, String str2, Direction direction2) {
        this(str, strArr, str2, direction2, false);
    }

    public ActionArgument(String str, String str2, Direction direction2, boolean z) {
        this(str, new String[0], str2, direction2, z);
    }

    public ActionArgument(String str, String[] strArr, String str2, Direction direction2, boolean z) {
        this.name = str;
        this.aliases = strArr;
        this.relatedStateVariableName = str2;
        this.direction = direction2;
        this.returnValue = z;
    }

    public String getName() {
        return this.name;
    }

    public String[] getAliases() {
        return this.aliases;
    }

    public boolean isNameOrAlias(String str) {
        if (getName().equalsIgnoreCase(str)) {
            return true;
        }
        for (String equalsIgnoreCase : this.aliases) {
            if (equalsIgnoreCase.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    public String getRelatedStateVariableName() {
        return this.relatedStateVariableName;
    }

    public Direction getDirection() {
        return this.direction;
    }

    public boolean isReturnValue() {
        return this.returnValue;
    }

    public Action<S> getAction() {
        return this.action;
    }

    /* access modifiers changed from: 0000 */
    public void setAction(Action<S> action2) {
        if (this.action == null) {
            this.action = action2;
            return;
        }
        throw new IllegalStateException("Final value has been set already, model is immutable");
    }

    public Datatype getDatatype() {
        return getAction().getService().getDatatype(this);
    }

    public List<ValidationError> validate() {
        ArrayList arrayList = new ArrayList();
        if (getName() == null || getName().length() == 0) {
            Class cls = getClass();
            StringBuilder sb = new StringBuilder();
            sb.append("Argument without name of: ");
            sb.append(getAction());
            arrayList.add(new ValidationError(cls, "name", sb.toString()));
        } else {
            String str = "UPnP specification violation of: ";
            if (!ModelUtil.isValidUDAName(getName())) {
                Logger logger = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(getAction().getService().getDevice());
                logger.warning(sb2.toString());
                Logger logger2 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Invalid argument name: ");
                sb3.append(this);
                logger2.warning(sb3.toString());
            } else if (getName().length() > 32) {
                Logger logger3 = log;
                StringBuilder sb4 = new StringBuilder();
                sb4.append(str);
                sb4.append(getAction().getService().getDevice());
                logger3.warning(sb4.toString());
                Logger logger4 = log;
                StringBuilder sb5 = new StringBuilder();
                sb5.append("Argument name should be less than 32 characters: ");
                sb5.append(this);
                logger4.warning(sb5.toString());
            }
        }
        String str2 = "direction";
        if (getDirection() == null) {
            Class cls2 = getClass();
            StringBuilder sb6 = new StringBuilder();
            sb6.append("Argument '");
            sb6.append(getName());
            sb6.append("' requires a direction, either IN or OUT");
            arrayList.add(new ValidationError(cls2, str2, sb6.toString()));
        }
        if (isReturnValue() && getDirection() != Direction.OUT) {
            Class cls3 = getClass();
            StringBuilder sb7 = new StringBuilder();
            sb7.append("Return value argument '");
            sb7.append(getName());
            sb7.append("' must be direction OUT");
            arrayList.add(new ValidationError(cls3, str2, sb7.toString()));
        }
        return arrayList;
    }

    public ActionArgument<S> deepCopy() {
        ActionArgument actionArgument = new ActionArgument(getName(), getAliases(), getRelatedStateVariableName(), getDirection(), isReturnValue());
        return actionArgument;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(", ");
        sb.append(getDirection());
        sb.append(") ");
        sb.append(getName());
        return sb.toString();
    }
}
