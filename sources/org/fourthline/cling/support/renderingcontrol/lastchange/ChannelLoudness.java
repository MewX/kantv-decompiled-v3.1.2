package org.fourthline.cling.support.renderingcontrol.lastchange;

import org.fourthline.cling.support.model.Channel;

public class ChannelLoudness {
    protected Channel channel;
    protected Boolean loudness;

    public ChannelLoudness(Channel channel2, Boolean bool) {
        this.channel = channel2;
        this.loudness = bool;
    }

    public Channel getChannel() {
        return this.channel;
    }

    public Boolean getLoudness() {
        return this.loudness;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Loudness: ");
        sb.append(getLoudness());
        sb.append(" (");
        sb.append(getChannel());
        sb.append(")");
        return sb.toString();
    }
}
