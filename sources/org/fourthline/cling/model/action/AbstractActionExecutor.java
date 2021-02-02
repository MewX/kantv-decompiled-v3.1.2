package org.fourthline.cling.model.action;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.Command;
import org.fourthline.cling.model.ServiceManager;
import org.fourthline.cling.model.meta.Action;
import org.fourthline.cling.model.meta.ActionArgument;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.state.StateVariableAccessor;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.model.types.InvalidValueException;
import org.seamless.util.Exceptions;

public abstract class AbstractActionExecutor implements ActionExecutor {
    private static Logger log = Logger.getLogger(AbstractActionExecutor.class.getName());
    protected Map<ActionArgument<LocalService>, StateVariableAccessor> outputArgumentAccessors = new HashMap();

    /* access modifiers changed from: protected */
    public abstract void execute(ActionInvocation<LocalService> actionInvocation, Object obj) throws Exception;

    protected AbstractActionExecutor() {
    }

    protected AbstractActionExecutor(Map<ActionArgument<LocalService>, StateVariableAccessor> map) {
        this.outputArgumentAccessors = map;
    }

    public Map<ActionArgument<LocalService>, StateVariableAccessor> getOutputArgumentAccessors() {
        return this.outputArgumentAccessors;
    }

    public void execute(final ActionInvocation<LocalService> actionInvocation) {
        String str = "Exception root cause: ";
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Invoking on local service: ");
        sb.append(actionInvocation);
        logger.fine(sb.toString());
        LocalService localService = (LocalService) actionInvocation.getAction().getService();
        try {
            if (localService.getManager() != null) {
                localService.getManager().execute(new Command() {
                    public void execute(ServiceManager serviceManager) throws Exception {
                        AbstractActionExecutor.this.execute(actionInvocation, serviceManager.getImplementation());
                    }

                    public String toString() {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Action invocation: ");
                        sb.append(actionInvocation.getAction());
                        return sb.toString();
                    }
                });
                return;
            }
            throw new IllegalStateException("Service has no implementation factory, can't get service instance");
        } catch (ActionException e) {
            if (log.isLoggable(Level.FINE)) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("ActionException thrown by service, wrapping in invocation and returning: ");
                sb2.append(e);
                logger2.fine(sb2.toString());
                log.log(Level.FINE, str, Exceptions.unwrap(e));
            }
            actionInvocation.setFailure(e);
        } catch (InterruptedException e2) {
            if (log.isLoggable(Level.FINE)) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("InterruptedException thrown by service, wrapping in invocation and returning: ");
                sb3.append(e2);
                logger3.fine(sb3.toString());
                log.log(Level.FINE, str, Exceptions.unwrap(e2));
            }
            actionInvocation.setFailure(new ActionCancelledException(e2));
        } catch (Throwable th) {
            Throwable unwrap = Exceptions.unwrap(th);
            if (log.isLoggable(Level.FINE)) {
                Logger logger4 = log;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Execution has thrown, wrapping root cause in ActionException and returning: ");
                sb4.append(th);
                logger4.fine(sb4.toString());
                log.log(Level.FINE, str, unwrap);
            }
            actionInvocation.setFailure(new ActionException(ErrorCode.ACTION_FAILED, unwrap.getMessage() != null ? unwrap.getMessage() : unwrap.toString(), unwrap));
        }
    }

    /* access modifiers changed from: protected */
    public Object readOutputArgumentValues(Action<LocalService> action, Object obj) throws Exception {
        Object[] objArr = new Object[action.getOutputArguments().length];
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Attempting to retrieve output argument values using accessor: ");
        sb.append(objArr.length);
        logger.fine(sb.toString());
        ActionArgument[] outputArguments = action.getOutputArguments();
        int length = outputArguments.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            ActionArgument actionArgument = outputArguments[i];
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Calling acccessor method for: ");
            sb2.append(actionArgument);
            logger2.finer(sb2.toString());
            StateVariableAccessor stateVariableAccessor = (StateVariableAccessor) getOutputArgumentAccessors().get(actionArgument);
            if (stateVariableAccessor != null) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Calling accessor to read output argument value: ");
                sb3.append(stateVariableAccessor);
                logger3.fine(sb3.toString());
                int i3 = i2 + 1;
                objArr[i2] = stateVariableAccessor.read(obj);
                i++;
                i2 = i3;
            } else {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("No accessor bound for: ");
                sb4.append(actionArgument);
                throw new IllegalStateException(sb4.toString());
            }
        }
        if (objArr.length == 1) {
            return objArr[0];
        }
        if (objArr.length <= 0) {
            objArr = null;
        }
        return objArr;
    }

    /* access modifiers changed from: protected */
    public void setOutputArgumentValue(ActionInvocation<LocalService> actionInvocation, ActionArgument<LocalService> actionArgument, Object obj) throws ActionException {
        LocalService localService = (LocalService) actionInvocation.getAction().getService();
        if (obj != null) {
            try {
                if (localService.isStringConvertibleType(obj)) {
                    log.fine("Result of invocation matches convertible type, setting toString() single output argument value");
                    actionInvocation.setOutput(new ActionArgumentValue<>(actionArgument, obj.toString()));
                    return;
                }
                log.fine("Result of invocation is Object, setting single output argument value");
                actionInvocation.setOutput(new ActionArgumentValue<>(actionArgument, obj));
            } catch (InvalidValueException e) {
                ErrorCode errorCode = ErrorCode.ARGUMENT_VALUE_INVALID;
                StringBuilder sb = new StringBuilder();
                sb.append("Wrong type or invalid value for '");
                sb.append(actionArgument.getName());
                sb.append("': ");
                sb.append(e.getMessage());
                throw new ActionException(errorCode, sb.toString(), (Throwable) e);
            }
        } else {
            log.fine("Result of invocation is null, not setting any output argument value(s)");
        }
    }
}
