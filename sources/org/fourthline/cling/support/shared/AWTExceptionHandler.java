package org.fourthline.cling.support.shared;

public class AWTExceptionHandler {
    public void handle(Throwable th) {
        System.err.println("============= The application encountered an unrecoverable error, exiting... =============");
        th.printStackTrace(System.err);
        System.err.println("==========================================================================================");
        System.exit(1);
    }
}
