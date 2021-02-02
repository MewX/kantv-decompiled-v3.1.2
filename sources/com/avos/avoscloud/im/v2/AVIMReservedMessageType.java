package com.avos.avoscloud.im.v2;

public enum AVIMReservedMessageType {
    UnsupportedMessageType(0),
    TextMessageType(-1),
    ImageMessageType(-2),
    AudioMessageType(-3),
    VideoMessageType(-4),
    LocationMessageType(-5),
    FileMessageType(-6);
    
    int type;

    private AVIMReservedMessageType(int i) {
        this.type = i;
    }

    public int getType() {
        return this.type;
    }

    public static AVIMReservedMessageType getAVIMReservedMessageType(int i) {
        switch (i) {
            case -6:
                return FileMessageType;
            case -5:
                return LocationMessageType;
            case -4:
                return VideoMessageType;
            case -3:
                return AudioMessageType;
            case -2:
                return ImageMessageType;
            case -1:
                return TextMessageType;
            case 0:
                return UnsupportedMessageType;
            default:
                return UnsupportedMessageType;
        }
    }
}
