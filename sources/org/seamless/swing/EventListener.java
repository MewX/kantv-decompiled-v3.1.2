package org.seamless.swing;

import org.seamless.swing.Event;

public interface EventListener<E extends Event> {
    void handleEvent(E e);
}
