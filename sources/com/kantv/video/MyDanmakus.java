package com.kantv.video;

import java.util.SortedSet;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.IDanmakus;
import master.flame.danmaku.danmaku.model.android.Danmakus;

public class MyDanmakus extends Danmakus implements IDanmakus {
    public BaseDanmaku first() {
        try {
            if (this.items != null && !this.items.isEmpty()) {
                return (BaseDanmaku) ((SortedSet) this.items).first();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public BaseDanmaku last() {
        try {
            if (this.items != null && !this.items.isEmpty()) {
                return (BaseDanmaku) ((SortedSet) this.items).last();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
