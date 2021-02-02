package org.fourthline.cling.support.connectionmanager;

import tv.danmaku.ijk.media.player.IMediaPlayer;

public enum ConnectionManagerErrorCode {
    INCOMPATIBLE_PROTOCOL_INFO(IMediaPlayer.MEDIA_INFO_BUFFERING_START, "The connection cannot be established because the protocol info parameter is incompatible"),
    INCOMPATIBLE_DIRECTIONS(IMediaPlayer.MEDIA_INFO_BUFFERING_END, "The connection cannot be established because the directions of the involved ConnectionManagers (source/sink) are incompatible"),
    INSUFFICIENT_NETWORK_RESOURCES(IMediaPlayer.MEDIA_INFO_NETWORK_BANDWIDTH, "The connection cannot be established because there are insufficient network resources"),
    LOCAL_RESTRICTIONS(704, "The connection cannot be established because of local restrictions in the device"),
    ACCESS_DENIED(705, "The connection cannot be established because the client is not permitted."),
    INVALID_CONNECTION_REFERENCE(706, "Not a valid connection established by this service"),
    NOT_IN_NETWORK(707, "The connection cannot be established because the ConnectionManagers are not part of the same physical network.");
    
    private int code;
    private String description;

    private ConnectionManagerErrorCode(int i, String str) {
        this.code = i;
        this.description = str;
    }

    public int getCode() {
        return this.code;
    }

    public String getDescription() {
        return this.description;
    }

    public static ConnectionManagerErrorCode getByCode(int i) {
        ConnectionManagerErrorCode[] values;
        for (ConnectionManagerErrorCode connectionManagerErrorCode : values()) {
            if (connectionManagerErrorCode.getCode() == i) {
                return connectionManagerErrorCode;
            }
        }
        return null;
    }
}
