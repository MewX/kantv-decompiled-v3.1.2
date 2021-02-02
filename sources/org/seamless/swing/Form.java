package org.seamless.swing;

import java.awt.Component;
import java.awt.Container;
import java.awt.GridBagConstraints;
import java.awt.Insets;
import javax.swing.JLabel;
import javax.swing.JSeparator;

public class Form {
    public GridBagConstraints labelConstraints;
    public GridBagConstraints lastConstraints;
    public GridBagConstraints middleConstraints;
    public GridBagConstraints separatorConstraints;

    public Form(int i) {
        this.lastConstraints = null;
        this.middleConstraints = null;
        this.labelConstraints = null;
        this.separatorConstraints = null;
        this.lastConstraints = new GridBagConstraints();
        GridBagConstraints gridBagConstraints = this.lastConstraints;
        gridBagConstraints.fill = 2;
        gridBagConstraints.anchor = 18;
        gridBagConstraints.weightx = 1.0d;
        gridBagConstraints.gridwidth = 0;
        gridBagConstraints.insets = new Insets(i, i, i, i);
        this.middleConstraints = (GridBagConstraints) this.lastConstraints.clone();
        this.middleConstraints.gridwidth = -1;
        this.labelConstraints = (GridBagConstraints) this.lastConstraints.clone();
        GridBagConstraints gridBagConstraints2 = this.labelConstraints;
        gridBagConstraints2.weightx = 0.0d;
        gridBagConstraints2.gridwidth = 1;
        this.separatorConstraints = new GridBagConstraints();
        GridBagConstraints gridBagConstraints3 = this.separatorConstraints;
        gridBagConstraints3.fill = 2;
        gridBagConstraints3.gridwidth = 0;
    }

    public void addLastField(Component component, Container container) {
        container.getLayout().setConstraints(component, this.lastConstraints);
        container.add(component);
    }

    public void addLabel(Component component, Container container) {
        container.getLayout().setConstraints(component, this.labelConstraints);
        container.add(component);
    }

    public JLabel addLabel(String str, Container container) {
        JLabel jLabel = new JLabel(str);
        addLabel((Component) jLabel, container);
        return jLabel;
    }

    public void addMiddleField(Component component, Container container) {
        container.getLayout().setConstraints(component, this.middleConstraints);
        container.add(component);
    }

    public void addLabelAndLastField(String str, Container container, Container container2) {
        addLabel(str, container2);
        addLastField(container, container2);
    }

    public void addLabelAndLastField(String str, String str2, Container container) {
        addLabel(str, container);
        addLastField(new JLabel(str2), container);
    }

    public void addSeparator(Container container) {
        JSeparator jSeparator = new JSeparator();
        container.getLayout().setConstraints(jSeparator, this.separatorConstraints);
        container.add(jSeparator);
    }
}
