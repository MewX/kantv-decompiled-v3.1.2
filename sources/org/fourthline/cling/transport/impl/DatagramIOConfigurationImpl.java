package org.fourthline.cling.transport.impl;

import org.fourthline.cling.transport.spi.DatagramIOConfiguration;

public class DatagramIOConfigurationImpl implements DatagramIOConfiguration {
    private int maxDatagramBytes = 640;
    private int timeToLive = 4;

    public DatagramIOConfigurationImpl() {
    }

    public DatagramIOConfigurationImpl(int i, int i2) {
        this.timeToLive = i;
        this.maxDatagramBytes = i2;
    }

    public int getTimeToLive() {
        return this.timeToLive;
    }

    public void setTimeToLive(int i) {
        this.timeToLive = i;
    }

    public int getMaxDatagramBytes() {
        return this.maxDatagramBytes;
    }

    public void setMaxDatagramBytes(int i) {
        this.maxDatagramBytes = i;
    }
}
