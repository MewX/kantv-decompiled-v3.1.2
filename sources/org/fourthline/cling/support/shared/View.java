package org.fourthline.cling.support.shared;

import java.awt.Component;

public interface View<P> {
    Component asUIComponent();

    void setPresenter(P p);
}
