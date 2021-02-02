package org.seamless.swing;

import java.awt.Container;
import java.awt.event.WindowEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import javax.swing.AbstractButton;

public class AbstractController<V extends Container> implements Controller<V> {
    private static Logger log = Logger.getLogger(AbstractController.class.getName());
    private Map<String, DefaultAction> actions;
    private Map<Class, List<EventListener>> eventListeners;
    private Controller parentController;
    private List<Controller> subControllers;
    private V view;

    public void failedActionExecute() {
    }

    public void finalActionExecute() {
    }

    public void postActionExecute() {
    }

    public void preActionExecute() {
    }

    public void windowActivated(WindowEvent windowEvent) {
    }

    public void windowClosed(WindowEvent windowEvent) {
    }

    public void windowDeactivated(WindowEvent windowEvent) {
    }

    public void windowDeiconified(WindowEvent windowEvent) {
    }

    public void windowIconified(WindowEvent windowEvent) {
    }

    public void windowOpened(WindowEvent windowEvent) {
    }

    public AbstractController(V v) {
        this.subControllers = new ArrayList();
        this.actions = new HashMap();
        this.eventListeners = new HashMap();
        this.view = v;
    }

    public AbstractController() {
        this.subControllers = new ArrayList();
        this.actions = new HashMap();
        this.eventListeners = new HashMap();
    }

    public AbstractController(Controller controller) {
        this(null, controller);
    }

    public AbstractController(V v, Controller controller) {
        this.subControllers = new ArrayList();
        this.actions = new HashMap();
        this.eventListeners = new HashMap();
        this.view = v;
        if (controller != null) {
            this.parentController = controller;
            controller.getSubControllers().add(this);
        }
    }

    public V getView() {
        return this.view;
    }

    public Controller getParentController() {
        return this.parentController;
    }

    public List<Controller> getSubControllers() {
        return this.subControllers;
    }

    public void dispose() {
        log.fine("Disposing controller");
        Iterator it = this.subControllers.iterator();
        while (it.hasNext()) {
            ((Controller) it.next()).dispose();
            it.remove();
        }
    }

    public void registerAction(AbstractButton abstractButton, DefaultAction defaultAction) {
        abstractButton.removeActionListener(this);
        abstractButton.addActionListener(this);
        this.actions.put(abstractButton.getActionCommand(), defaultAction);
    }

    public void registerAction(AbstractButton abstractButton, String str, DefaultAction defaultAction) {
        abstractButton.setActionCommand(str);
        registerAction(abstractButton, defaultAction);
    }

    public void deregisterAction(String str) {
        this.actions.remove(str);
    }

    public void registerEventListener(Class cls, EventListener eventListener) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Registering listener: ");
        sb.append(eventListener);
        sb.append(" for event type: ");
        sb.append(cls.getName());
        logger.fine(sb.toString());
        List list = (List) this.eventListeners.get(cls);
        if (list == null) {
            list = new ArrayList();
        }
        list.add(eventListener);
        this.eventListeners.put(cls, list);
    }

    public void fireEvent(Event event) {
        fireEvent(event, false);
    }

    public void fireEventGlobal(Event event) {
        fireEvent(event, true);
    }

    public void fireEvent(Event event, boolean z) {
        String str = "Passing event: ";
        if (!event.alreadyFired(this)) {
            log.finest("Event has not been fired already");
            if (this.eventListeners.get(event.getClass()) != null) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Have listeners for this type of event: ");
                sb.append(this.eventListeners.get(event.getClass()));
                logger.finest(sb.toString());
                for (EventListener eventListener : (List) this.eventListeners.get(event.getClass())) {
                    Logger logger2 = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Processing event: ");
                    sb2.append(event.getClass().getName());
                    sb2.append(" with listener: ");
                    sb2.append(eventListener.getClass().getName());
                    logger2.fine(sb2.toString());
                    eventListener.handleEvent(event);
                }
            }
            event.addFiredInController(this);
            Logger logger3 = log;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append(event.getClass().getName());
            sb3.append(" DOWN in the controller hierarchy");
            logger3.fine(sb3.toString());
            for (Controller fireEvent : this.subControllers) {
                fireEvent.fireEvent(event, z);
            }
        } else {
            log.finest("Event already fired here, ignoring...");
        }
        if (getParentController() == null || event.alreadyFired(getParentController()) || !z) {
            log.finest("Event does not propagate up the tree from here");
            return;
        }
        Logger logger4 = log;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(str);
        sb4.append(event.getClass().getName());
        sb4.append(" UP in the controller hierarchy");
        logger4.fine(sb4.toString());
        getParentController().fireEvent(event, z);
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void actionPerformed(java.awt.event.ActionEvent r6) {
        /*
            r5 = this;
            java.lang.Object r0 = r6.getSource()     // Catch:{ ClassCastException -> 0x0089 }
            javax.swing.AbstractButton r0 = (javax.swing.AbstractButton) r0     // Catch:{ ClassCastException -> 0x0089 }
            java.lang.String r0 = r0.getActionCommand()     // Catch:{ ClassCastException -> 0x0089 }
            java.util.Map<java.lang.String, org.seamless.swing.DefaultAction> r1 = r5.actions     // Catch:{ ClassCastException -> 0x0089 }
            java.lang.Object r1 = r1.get(r0)     // Catch:{ ClassCastException -> 0x0089 }
            org.seamless.swing.DefaultAction r1 = (org.seamless.swing.DefaultAction) r1     // Catch:{ ClassCastException -> 0x0089 }
            if (r1 == 0) goto L_0x005f
            java.util.logging.Logger r2 = log     // Catch:{ ClassCastException -> 0x0089 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ ClassCastException -> 0x0089 }
            r3.<init>()     // Catch:{ ClassCastException -> 0x0089 }
            java.lang.String r4 = "Handling command: "
            r3.append(r4)     // Catch:{ ClassCastException -> 0x0089 }
            r3.append(r0)     // Catch:{ ClassCastException -> 0x0089 }
            java.lang.String r0 = " with action: "
            r3.append(r0)     // Catch:{ ClassCastException -> 0x0089 }
            java.lang.Class r0 = r1.getClass()     // Catch:{ ClassCastException -> 0x0089 }
            r3.append(r0)     // Catch:{ ClassCastException -> 0x0089 }
            java.lang.String r0 = r3.toString()     // Catch:{ ClassCastException -> 0x0089 }
            r2.fine(r0)     // Catch:{ ClassCastException -> 0x0089 }
            r5.preActionExecute()     // Catch:{ RuntimeException -> 0x0056, Exception -> 0x004c }
            java.util.logging.Logger r0 = log     // Catch:{ RuntimeException -> 0x0056, Exception -> 0x004c }
            java.lang.String r2 = "Dispatching to action for execution"
            r0.fine(r2)     // Catch:{ RuntimeException -> 0x0056, Exception -> 0x004c }
            r1.executeInController(r5, r6)     // Catch:{ RuntimeException -> 0x0056, Exception -> 0x004c }
            r5.postActionExecute()     // Catch:{ RuntimeException -> 0x0056, Exception -> 0x004c }
            r5.finalActionExecute()     // Catch:{ ClassCastException -> 0x0089 }
            goto L_0x0071
        L_0x004a:
            r0 = move-exception
            goto L_0x005b
        L_0x004c:
            r0 = move-exception
            r5.failedActionExecute()     // Catch:{ all -> 0x004a }
            java.lang.RuntimeException r1 = new java.lang.RuntimeException     // Catch:{ all -> 0x004a }
            r1.<init>(r0)     // Catch:{ all -> 0x004a }
            throw r1     // Catch:{ all -> 0x004a }
        L_0x0056:
            r0 = move-exception
            r5.failedActionExecute()     // Catch:{ all -> 0x004a }
            throw r0     // Catch:{ all -> 0x004a }
        L_0x005b:
            r5.finalActionExecute()     // Catch:{ ClassCastException -> 0x0089 }
            throw r0     // Catch:{ ClassCastException -> 0x0089 }
        L_0x005f:
            org.seamless.swing.Controller r1 = r5.getParentController()     // Catch:{ ClassCastException -> 0x0089 }
            if (r1 == 0) goto L_0x0072
            java.util.logging.Logger r0 = log     // Catch:{ ClassCastException -> 0x0089 }
            java.lang.String r1 = "Passing action on to parent controller"
            r0.fine(r1)     // Catch:{ ClassCastException -> 0x0089 }
            org.seamless.swing.Controller r0 = r5.parentController     // Catch:{ ClassCastException -> 0x0089 }
            r0.actionPerformed(r6)     // Catch:{ ClassCastException -> 0x0089 }
        L_0x0071:
            return
        L_0x0072:
            java.lang.RuntimeException r1 = new java.lang.RuntimeException     // Catch:{ ClassCastException -> 0x0089 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ ClassCastException -> 0x0089 }
            r2.<init>()     // Catch:{ ClassCastException -> 0x0089 }
            java.lang.String r3 = "Nobody is responsible for action command: "
            r2.append(r3)     // Catch:{ ClassCastException -> 0x0089 }
            r2.append(r0)     // Catch:{ ClassCastException -> 0x0089 }
            java.lang.String r0 = r2.toString()     // Catch:{ ClassCastException -> 0x0089 }
            r1.<init>(r0)     // Catch:{ ClassCastException -> 0x0089 }
            throw r1     // Catch:{ ClassCastException -> 0x0089 }
        L_0x0089:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Action source is not an Abstractbutton: "
            r1.append(r2)
            r1.append(r6)
            java.lang.String r6 = r1.toString()
            r0.<init>(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.swing.AbstractController.actionPerformed(java.awt.event.ActionEvent):void");
    }

    public void windowClosing(WindowEvent windowEvent) {
        dispose();
        getView().dispose();
    }
}
