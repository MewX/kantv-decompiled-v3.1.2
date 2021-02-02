package org.fourthline.cling.support.renderingcontrol.lastchange;

import java.util.Map.Entry;
import org.fourthline.cling.model.types.BooleanDatatype;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.lastchange.EventedValue;
import org.fourthline.cling.support.model.Channel;
import org.fourthline.cling.support.shared.AbstractMap.SimpleEntry;

public class EventedValueChannelMute extends EventedValue<ChannelMute> {
    /* access modifiers changed from: protected */
    public Datatype getDatatype() {
        return null;
    }

    public EventedValueChannelMute(ChannelMute channelMute) {
        super(channelMute);
    }

    public EventedValueChannelMute(Entry<String, String>[] entryArr) {
        super(entryArr);
    }

    /* access modifiers changed from: protected */
    public ChannelMute valueOf(Entry<String, String>[] entryArr) throws InvalidValueException {
        Channel channel = null;
        Boolean bool = null;
        for (Entry<String, String> entry : entryArr) {
            if (((String) entry.getKey()).equals("channel")) {
                channel = Channel.valueOf((String) entry.getValue());
            }
            if (((String) entry.getKey()).equals("val")) {
                bool = new BooleanDatatype().valueOf((String) entry.getValue());
            }
        }
        if (channel == null || bool == null) {
            return null;
        }
        return new ChannelMute(channel, bool);
    }

    public Entry<String, String>[] getAttributes() {
        return new Entry[]{new SimpleEntry("val", new BooleanDatatype().getString(((ChannelMute) getValue()).getMute())), new SimpleEntry("channel", ((ChannelMute) getValue()).getChannel().name())};
    }

    public String toString() {
        return ((ChannelMute) getValue()).toString();
    }
}
