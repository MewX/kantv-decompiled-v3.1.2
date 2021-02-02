package org.fourthline.cling.model.action;

import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.QueryStateVariableAction;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.state.StateVariableAccessor;
import org.fourthline.cling.model.types.ErrorCode;

public class QueryStateVariableExecutor extends AbstractActionExecutor {
    /* access modifiers changed from: protected */
    public void execute(ActionInvocation<LocalService> actionInvocation, Object obj) throws Exception {
        if (!(actionInvocation.getAction() instanceof QueryStateVariableAction)) {
            StringBuilder sb = new StringBuilder();
            sb.append("This class can only execute QueryStateVariableAction's, not: ");
            sb.append(actionInvocation.getAction());
            throw new IllegalStateException(sb.toString());
        } else if (!((LocalService) actionInvocation.getAction().getService()).isSupportsQueryStateVariables()) {
            actionInvocation.setFailure(new ActionException(ErrorCode.INVALID_ACTION, "This service does not support querying state variables"));
        } else {
            executeQueryStateVariable(actionInvocation, obj);
        }
    }

    /* access modifiers changed from: protected */
    public void executeQueryStateVariable(ActionInvocation<LocalService> actionInvocation, Object obj) throws Exception {
        LocalService localService = (LocalService) actionInvocation.getAction().getService();
        String actionArgumentValue = actionInvocation.getInput(QueryStateVariableAction.INPUT_ARG_VAR_NAME).toString();
        StateVariable stateVariable = localService.getStateVariable(actionArgumentValue);
        if (stateVariable != null) {
            StateVariableAccessor accessor = localService.getAccessor(stateVariable.getName());
            if (accessor != null) {
                try {
                    setOutputArgumentValue(actionInvocation, actionInvocation.getAction().getOutputArgument(QueryStateVariableAction.OUTPUT_ARG_RETURN), accessor.read(stateVariable, obj).toString());
                } catch (Exception e) {
                    throw new ActionException(ErrorCode.ACTION_FAILED, e.getMessage());
                }
            } else {
                ErrorCode errorCode = ErrorCode.ARGUMENT_VALUE_INVALID;
                StringBuilder sb = new StringBuilder();
                sb.append("No accessor for state variable, can't read state: ");
                sb.append(actionArgumentValue);
                throw new ActionException(errorCode, sb.toString());
            }
        } else {
            ErrorCode errorCode2 = ErrorCode.ARGUMENT_VALUE_INVALID;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("No state variable found: ");
            sb2.append(actionArgumentValue);
            throw new ActionException(errorCode2, sb2.toString());
        }
    }
}
