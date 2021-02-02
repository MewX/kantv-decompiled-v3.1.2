package org.jsoup.helper;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;

public class DescendableLinkedList<E> extends LinkedList<E> {

    private class DescendingIterator<E> implements Iterator<E> {
        private final ListIterator<E> iter;

        private DescendingIterator(int i) {
            this.iter = DescendableLinkedList.this.listIterator(i);
        }

        public boolean hasNext() {
            return this.iter.hasPrevious();
        }

        public E next() {
            return this.iter.previous();
        }

        public void remove() {
            this.iter.remove();
        }
    }

    public void push(E e) {
        addFirst(e);
    }

    public E peekLast() {
        if (size() == 0) {
            return null;
        }
        return getLast();
    }

    public E pollLast() {
        if (size() == 0) {
            return null;
        }
        return removeLast();
    }

    public Iterator<E> descendingIterator() {
        return new DescendingIterator(size());
    }
}
