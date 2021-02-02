package org.fourthline.cling.support.renderingcontrol.lastchange;

import java.util.Map.Entry;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.model.types.UnsignedIntegerTwoBytes;
import org.fourthline.cling.model.types.UnsignedIntegerTwoBytesDatatype;
import org.fourthline.cling.support.lastchange.EventedValue;
import org.fourthline.cling.support.model.Channel;
import org.fourthline.cling.support.shared.AbstractMap.SimpleEntry;

public class EventedValueChannelVolume extends EventedValue<ChannelVolume> {
    /* access modifiers changed from: protected */
    public Datatype getDatatype() {
        return null;
    }

    public EventedValueChannelVolume(ChannelVolume channelVolume) {
        super(channelVolume);
    }

    public EventedValueChannelVolume(Entry<String, String>[] entryArr) {
        super(entryArr);
    }

    /* access modifiers changed from: protected */
    public ChannelVolume valueOf(Entry<String, String>[] entryArr) throws InvalidValueException {
        Channel channel = null;
        Integer num = null;
        for (Entry<String, String> entry : entryArr) {
            if (((String) entry.getKey()).equals("channel")) {
                channel = Channel.valueOf((String) entry.getValue());
            }
            if (((String) entry.getKey()).equals("val")) {
                num = Integer.valueOf(new UnsignedIntegerTwoBytesDatatype().valueOf((String) entry.getValue()).getValue().intValue());
            }
        }
        if (channel == null || num == null) {
            return null;
        }
        return new ChannelVolume(channel, num);
    }

    public Entry<String, String>[] getAttributes() {
        return new Entry[]{new SimpleEntry("val", new UnsignedIntegerTwoBytesDatatype().getString(new UnsignedIntegerTwoBytes((long) ((ChannelVolume) getValue()).getVolume().intValue()))), new SimpleEntry("channel", ((ChannelVolume) getValue()).getChannel().name())};
    }

    public String toString() {
        return ((ChannelVolume) getValue()).toString();
    }
}