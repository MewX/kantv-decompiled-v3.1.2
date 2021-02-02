package org.seamless.swing;

public interface Event<PAYLOAD> {
    void addFiredInController(Controller controller);

    boolean alreadyFired(Controller controller);

    PAYLOAD getPayload();
}
