package org.seamless.swing;

import java.util.EventListener;

public interface ClosableTabbedPaneListener extends EventListener {
    boolean closeTab(int i);
}
