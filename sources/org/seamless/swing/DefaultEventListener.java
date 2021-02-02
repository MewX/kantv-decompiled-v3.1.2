package org.seamless.swing;

public interface DefaultEventListener<PAYLOAD> extends EventListener<DefaultEvent<PAYLOAD>> {
    void handleEvent(DefaultEvent<PAYLOAD> defaultEvent);
}
