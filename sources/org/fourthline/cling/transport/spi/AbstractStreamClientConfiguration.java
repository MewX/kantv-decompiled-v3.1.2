package org.fourthline.cling.transport.spi;

import java.util.concurrent.ExecutorService;
import org.fourthline.cling.model.ServerClientTokens;

public abstract class AbstractStreamClientConfiguration implements StreamClientConfiguration {
    protected int logWarningSeconds = 5;
    protected ExecutorService requestExecutorService;
    protected int timeoutSeconds = 60;

    protected AbstractStreamClientConfiguration(ExecutorService executorService) {
        this.requestExecutorService = executorService;
    }

    protected AbstractStreamClientConfiguration(ExecutorService executorService, int i) {
        this.requestExecutorService = executorService;
        this.timeoutSeconds = i;
    }

    protected AbstractStreamClientConfiguration(ExecutorService executorService, int i, int i2) {
        this.requestExecutorService = executorService;
        this.timeoutSeconds = i;
        this.logWarningSeconds = i2;
    }

    public ExecutorService getRequestExecutorService() {
        return this.requestExecutorService;
    }

    public void setRequestExecutorService(ExecutorService executorService) {
        this.requestExecutorService = executorService;
    }

    public int getTimeoutSeconds() {
        return this.timeoutSeconds;
    }

    public void setTimeoutSeconds(int i) {
        this.timeoutSeconds = i;
    }

    public int getLogWarningSeconds() {
        return this.logWarningSeconds;
    }

    public void setLogWarningSeconds(int i) {
        this.logWarningSeconds = i;
    }

    public String getUserAgentValue(int i, int i2) {
        return new ServerClientTokens(i, i2).toString();
    }
}
