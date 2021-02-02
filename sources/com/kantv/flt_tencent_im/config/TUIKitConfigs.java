package com.kantv.flt_tencent_im.config;

import com.tencent.imsdk.TIMSdkConfig;

public class TUIKitConfigs {
    private static TUIKitConfigs sConfigs;
    private GeneralConfig generalConfig;
    private TIMSdkConfig sdkConfig;

    private TUIKitConfigs() {
    }

    public static TUIKitConfigs getConfigs() {
        if (sConfigs == null) {
            sConfigs = new TUIKitConfigs();
        }
        return sConfigs;
    }

    public GeneralConfig getGeneralConfig() {
        return this.generalConfig;
    }

    public TUIKitConfigs setGeneralConfig(GeneralConfig generalConfig2) {
        this.generalConfig = generalConfig2;
        return this;
    }

    public TIMSdkConfig getSdkConfig() {
        return this.sdkConfig;
    }

    public TUIKitConfigs setSdkConfig(TIMSdkConfig tIMSdkConfig) {
        this.sdkConfig = tIMSdkConfig;
        return this;
    }
}
