package org.fourthline.cling.support.renderingcontrol.lastchange;

import org.fourthline.cling.support.model.Channel;

public class ChannelMute {
    protected Channel channel;
    protected Boolean mute;

    public ChannelMute(Channel channel2, Boolean bool) {
        this.channel = channel2;
        this.mute = bool;
    }

    public Channel getChannel() {
        return this.channel;
    }

    public Boolean getMute() {
        return this.mute;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Mute: ");
        sb.append(getMute());
        sb.append(" (");
        sb.append(getChannel());
        sb.append(")");
        return sb.toString();
    }
}
