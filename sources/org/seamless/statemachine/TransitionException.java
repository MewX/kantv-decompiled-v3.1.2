package org.seamless.statemachine;

public class TransitionException extends RuntimeException {
    public TransitionException(String str) {
        super(str);
    }

    public TransitionException(String str, Throwable th) {
        super(str, th);
    }
}
