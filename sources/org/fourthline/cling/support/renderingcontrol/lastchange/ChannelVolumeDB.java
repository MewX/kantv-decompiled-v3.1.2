package org.fourthline.cling.support.renderingcontrol.lastchange;

import org.fourthline.cling.support.model.Channel;

public class ChannelVolumeDB {
    protected Channel channel;
    protected Integer volumeDB;

    public ChannelVolumeDB(Channel channel2, Integer num) {
        this.channel = channel2;
        this.volumeDB = num;
    }

    public Channel getChannel() {
        return this.channel;
    }

    public Integer getVolumeDB() {
        return this.volumeDB;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("VolumeDB: ");
        sb.append(getVolumeDB());
        sb.append(" (");
        sb.append(getChannel());
        sb.append(")");
        return sb.toString();
    }
}
