package com.kantv.video;

import com.avos.avoscloud.im.v2.Conversation;
import com.kantv.common.bean.DanmuBean;
import com.kantv.common.bean.DanmuData;
import java.util.List;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.android.Danmakus;
import master.flame.danmaku.danmaku.parser.BaseDanmakuParser;
import master.flame.danmaku.danmaku.util.DanmakuUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class DanmuParser extends BaseDanmakuParser {
    public Danmakus parse() {
        if (this.mDataSource == null || !(this.mDataSource instanceof DanmuData)) {
            return new Danmakus();
        }
        return doParse(((DanmuData) this.mDataSource).getDanmuList());
    }

    private Danmakus doParse(List<DanmuBean> list) {
        Danmakus danmakus = new Danmakus();
        if (!(list == null || list.size() == 0)) {
            for (int i = 0; i < list.size(); i++) {
                try {
                    DanmuBean danmuBean = (DanmuBean) list.get(i);
                    BaseDanmaku createDanmaku = this.mContext.mDanmakuFactory.createDanmaku(1, this.mContext);
                    if (createDanmaku != null) {
                        createDanmaku.setTime(danmuBean.getSec());
                        createDanmaku.textSize = (this.mDispDensity - 0.6f) * 20.0f;
                        createDanmaku.textColor = -1;
                        DanmakuUtils.fillText(createDanmaku, createDanmaku.text);
                        createDanmaku.index = i;
                        createDanmaku.setTimer(this.mTimer);
                        danmakus.addItem(createDanmaku);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return danmakus;
    }

    private Danmakus _parse(JSONObject jSONObject, Danmakus danmakus) {
        if (danmakus == null) {
            danmakus = new Danmakus();
        }
        if (!(jSONObject == null || jSONObject.length() == 0)) {
            for (int i = 0; i < jSONObject.length(); i++) {
                try {
                    String[] split = jSONObject.getString(Conversation.CREATOR).split(",");
                    if (split.length > 0 && Integer.parseInt(split[2]) != 7) {
                        Float.parseFloat(split[0]);
                        Integer.parseInt(split[1]);
                        Float.parseFloat(split[3]);
                    }
                } catch (NumberFormatException | JSONException unused) {
                }
            }
        }
        return danmakus;
    }
}
