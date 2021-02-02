package org.fourthline.cling.transport.impl;

import org.fourthline.cling.transport.spi.ServletContainerAdapter;
import org.fourthline.cling.transport.spi.StreamServerConfiguration;

public class AsyncServletStreamServerConfigurationImpl implements StreamServerConfiguration {
    protected int asyncTimeoutSeconds = 60;
    protected int listenPort = 0;
    protected ServletContainerAdapter servletContainerAdapter;

    public AsyncServletStreamServerConfigurationImpl(ServletContainerAdapter servletContainerAdapter2) {
        this.servletContainerAdapter = servletContainerAdapter2;
    }

    public AsyncServletStreamServerConfigurationImpl(ServletContainerAdapter servletContainerAdapter2, int i) {
        this.servletContainerAdapter = servletContainerAdapter2;
        this.listenPort = i;
    }

    public AsyncServletStreamServerConfigurationImpl(ServletContainerAdapter servletContainerAdapter2, int i, int i2) {
        this.servletContainerAdapter = servletContainerAdapter2;
        this.listenPort = i;
        this.asyncTimeoutSeconds = i2;
    }

    public int getListenPort() {
        return this.listenPort;
    }

    public void setListenPort(int i) {
        this.listenPort = i;
    }

    public int getAsyncTimeoutSeconds() {
        return this.asyncTimeoutSeconds;
    }

    public void setAsyncTimeoutSeconds(int i) {
        this.asyncTimeoutSeconds = i;
    }

    public ServletContainerAdapter getServletContainerAdapter() {
        return this.servletContainerAdapter;
    }

    public void setServletContainerAdapter(ServletContainerAdapter servletContainerAdapter2) {
        this.servletContainerAdapter = servletContainerAdapter2;
    }
}
