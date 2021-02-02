package org.seamless.swing;

import java.util.HashSet;
import java.util.Set;

public class DefaultEvent<PAYLOAD> implements Event {
    Set<Controller> firedInControllers = new HashSet();
    PAYLOAD payload;

    public DefaultEvent() {
    }

    public DefaultEvent(PAYLOAD payload2) {
        this.payload = payload2;
    }

    public PAYLOAD getPayload() {
        return this.payload;
    }

    public void setPayload(PAYLOAD payload2) {
        this.payload = payload2;
    }

    public void addFiredInController(Controller controller) {
        this.firedInControllers.add(controller);
    }

    public boolean alreadyFired(Controller controller) {
        return this.firedInControllers.contains(controller);
    }
}
