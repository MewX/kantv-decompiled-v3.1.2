package org.fourthline.cling.support.renderingcontrol.lastchange;

import org.fourthline.cling.support.model.Channel;

public class ChannelVolume {
    protected Channel channel;
    protected Integer volume;

    public ChannelVolume(Channel channel2, Integer num) {
        this.channel = channel2;
        this.volume = num;
    }

    public Channel getChannel() {
        return this.channel;
    }

    public Integer getVolume() {
        return this.volume;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Volume: ");
        sb.append(getVolume());
        sb.append(" (");
        sb.append(getChannel());
        sb.append(")");
        return sb.toString();
    }
}
