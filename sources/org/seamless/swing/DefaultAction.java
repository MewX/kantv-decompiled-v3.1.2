package org.seamless.swing;

import java.awt.event.ActionEvent;
import javax.swing.AbstractAction;

public abstract class DefaultAction extends AbstractAction {
    public void executeInController(Controller controller, ActionEvent actionEvent) {
        actionPerformed(actionEvent);
    }
}
