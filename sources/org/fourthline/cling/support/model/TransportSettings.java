package org.fourthline.cling.support.model;

public class TransportSettings {
    private PlayMode playMode = PlayMode.NORMAL;
    private RecordQualityMode recQualityMode = RecordQualityMode.NOT_IMPLEMENTED;

    public TransportSettings() {
    }

    public TransportSettings(PlayMode playMode2) {
        this.playMode = playMode2;
    }

    public TransportSettings(PlayMode playMode2, RecordQualityMode recordQualityMode) {
        this.playMode = playMode2;
        this.recQualityMode = recordQualityMode;
    }

    public PlayMode getPlayMode() {
        return this.playMode;
    }

    public RecordQualityMode getRecQualityMode() {
        return this.recQualityMode;
    }
}
