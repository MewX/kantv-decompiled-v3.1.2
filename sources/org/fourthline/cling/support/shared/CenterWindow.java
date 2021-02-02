package org.fourthline.cling.support.shared;

import java.awt.Window;

public class CenterWindow {
    protected Window window;

    public CenterWindow(Window window2) {
        this.window = window2;
    }

    public Window getWindow() {
        return this.window;
    }
}
