package com.avos.avoscloud.java_websocket.drafts;

import com.avos.avoscloud.java_websocket.drafts.Draft.HandshakeState;
import com.avos.avoscloud.java_websocket.exceptions.InvalidHandshakeException;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshake;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshakeBuilder;
import com.tencent.connect.common.Constants;

public class Draft_17 extends Draft_10 {
    public HandshakeState acceptHandshakeAsServer(ClientHandshake clientHandshake) throws InvalidHandshakeException {
        if (readVersion(clientHandshake) == 13) {
            return HandshakeState.MATCHED;
        }
        return HandshakeState.NOT_MATCHED;
    }

    public ClientHandshakeBuilder postProcessHandshakeRequestAsClient(ClientHandshakeBuilder clientHandshakeBuilder) {
        super.postProcessHandshakeRequestAsClient(clientHandshakeBuilder);
        clientHandshakeBuilder.put("Sec-WebSocket-Version", Constants.VIA_REPORT_TYPE_JOININ_GROUP);
        return clientHandshakeBuilder;
    }

    public Draft copyInstance() {
        return new Draft_17();
    }
}
