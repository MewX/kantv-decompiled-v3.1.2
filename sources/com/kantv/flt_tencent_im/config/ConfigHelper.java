package com.kantv.flt_tencent_im.config;

import android.content.Context;
import com.kantv.flt_tencent_im.TUIKit;

public class ConfigHelper {
    public TUIKitConfigs getConfigs(Context context) {
        GeneralConfig generalConfig = new GeneralConfig();
        generalConfig.setAppCacheDir(context.getFilesDir().getPath());
        TUIKit.getConfigs().setGeneralConfig(generalConfig);
        return TUIKit.getConfigs();
    }
}
