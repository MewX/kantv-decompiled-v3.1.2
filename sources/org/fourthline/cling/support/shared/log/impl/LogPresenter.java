package org.fourthline.cling.support.shared.log.impl;

import javax.annotation.PreDestroy;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.event.Event;
import javax.inject.Inject;
import javax.swing.SwingUtilities;
import org.fourthline.cling.support.shared.TextExpand;
import org.fourthline.cling.support.shared.log.LogView;
import org.fourthline.cling.support.shared.log.LogView.Presenter;
import org.seamless.swing.logging.LogMessage;

@ApplicationScoped
public class LogPresenter implements Presenter {
    @Inject
    protected Event<TextExpand> textExpandEvent;
    @Inject
    protected LogView view;

    public void init() {
        this.view.setPresenter(this);
    }

    public void onExpand(LogMessage logMessage) {
        this.textExpandEvent.fire(new TextExpand(logMessage.getMessage()));
    }

    @PreDestroy
    public void destroy() {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                LogPresenter.this.view.dispose();
            }
        });
    }

    public void pushMessage(final LogMessage logMessage) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                LogPresenter.this.view.pushMessage(logMessage);
            }
        });
    }
}
