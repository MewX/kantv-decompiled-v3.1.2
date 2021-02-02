package org.fourthline.cling.support.shared.log;

import java.util.List;
import org.fourthline.cling.support.shared.View;
import org.seamless.swing.logging.LogCategory;
import org.seamless.swing.logging.LogMessage;

public interface LogView extends View<Presenter> {

    public interface Presenter {
        void init();

        void onExpand(LogMessage logMessage);

        void pushMessage(LogMessage logMessage);
    }

    public interface LogCategories extends List<LogCategory> {
    }

    void dispose();

    void pushMessage(LogMessage logMessage);
}
