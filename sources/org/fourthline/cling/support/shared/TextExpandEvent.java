package org.fourthline.cling.support.shared;

import org.seamless.swing.DefaultEvent;

public class TextExpandEvent extends DefaultEvent<String> {
    public TextExpandEvent(String str) {
        super(str);
    }
}
