package io.flutter.plugins.videoplayer;

import io.flutter.plugin.common.EventChannel.EventSink;
import java.util.ArrayList;
import java.util.Iterator;

final class QueuingEventSink implements EventSink {
    private EventSink delegate;
    private boolean done = false;
    private ArrayList<Object> eventQueue = new ArrayList<>();

    private static class EndOfStreamEvent {
        private EndOfStreamEvent() {
        }
    }

    private static class ErrorEvent {
        String code;
        Object details;
        String message;

        ErrorEvent(String str, String str2, Object obj) {
            this.code = str;
            this.message = str2;
            this.details = obj;
        }
    }

    QueuingEventSink() {
    }

    public void setDelegate(EventSink eventSink) {
        this.delegate = eventSink;
        maybeFlush();
    }

    public void endOfStream() {
        enqueue(new EndOfStreamEvent());
        maybeFlush();
        this.done = true;
    }

    public void error(String str, String str2, Object obj) {
        enqueue(new ErrorEvent(str, str2, obj));
        maybeFlush();
    }

    public void success(Object obj) {
        enqueue(obj);
        maybeFlush();
    }

    private void enqueue(Object obj) {
        if (!this.done) {
            this.eventQueue.add(obj);
        }
    }

    private void maybeFlush() {
        if (this.delegate != null) {
            Iterator it = this.eventQueue.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (next instanceof EndOfStreamEvent) {
                    this.delegate.endOfStream();
                } else if (next instanceof ErrorEvent) {
                    ErrorEvent errorEvent = (ErrorEvent) next;
                    this.delegate.error(errorEvent.code, errorEvent.message, errorEvent.details);
                } else {
                    this.delegate.success(next);
                }
            }
            this.eventQueue.clear();
        }
    }
}
