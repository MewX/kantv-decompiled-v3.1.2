package com.avos.avospush.session;

import com.avos.avoscloud.Messages.CommandType;
import com.avos.avoscloud.Messages.GenericCommand.Builder;
import com.google.firebase.analytics.FirebaseAnalytics.Event;

public class LoginPacket extends CommandPacket {
    public LoginPacket() {
        setCmd(Event.LOGIN);
    }

    /* access modifiers changed from: protected */
    public Builder getGenericCommandBuilder() {
        Builder genericCommandBuilder = super.getGenericCommandBuilder();
        genericCommandBuilder.setCmd(CommandType.login);
        return genericCommandBuilder;
    }
}
