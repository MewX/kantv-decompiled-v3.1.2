package org.fourthline.cling.model.meta;

import java.util.Collections;
import java.util.List;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.meta.ActionArgument.Direction;
import org.fourthline.cling.model.meta.Service;

public class QueryStateVariableAction<S extends Service> extends Action<S> {
    public static final String ACTION_NAME = "QueryStateVariable";
    public static final String INPUT_ARG_VAR_NAME = "varName";
    public static final String OUTPUT_ARG_RETURN = "return";
    public static final String VIRTUAL_STATEVARIABLE_INPUT = "VirtualQueryActionInput";
    public static final String VIRTUAL_STATEVARIABLE_OUTPUT = "VirtualQueryActionOutput";

    public String getName() {
        return ACTION_NAME;
    }

    public QueryStateVariableAction() {
        this(null);
    }

    public QueryStateVariableAction(S s) {
        super(ACTION_NAME, new ActionArgument[]{new ActionArgument(INPUT_ARG_VAR_NAME, VIRTUAL_STATEVARIABLE_INPUT, Direction.IN), new ActionArgument(OUTPUT_ARG_RETURN, VIRTUAL_STATEVARIABLE_OUTPUT, Direction.OUT)});
        setService(s);
    }

    public List<ValidationError> validate() {
        return Collections.EMPTY_LIST;
    }
}
