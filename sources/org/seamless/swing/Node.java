package org.seamless.swing;

import java.util.List;

public interface Node<T> {
    List<T> getChildren();

    Long getId();

    T getParent();
}
