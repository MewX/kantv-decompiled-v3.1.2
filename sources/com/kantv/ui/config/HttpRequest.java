package com.kantv.ui.config;

import com.kantv.common.api.Api;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.utils.PreferenceUtil;
import com.tencent.connect.common.Constants;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import java.util.Map;
import okhttp3.ResponseBody;
import org.fourthline.cling.binding.xml.Descriptor.Device;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class HttpRequest {
    public static Map<String, String> request = new HashMap();

    public static void MemoryPlayTime(final String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        request.clear();
        request.put("noncestr", SignConfig.noncestr);
        request.put("timestamp", SignConfig.timestamp);
        request.put("sbID", SignConfig.sbID);
        request.put("sign", SignConfig.sign);
        request.put("tvid", str2);
        request.put("part_id", str4);
        request.put(Device.SEC_PREFIX, str);
        String str9 = "";
        String str10 = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.PLAY_TIME, str9);
        String str11 = "validsec";
        if (StringUtils.isEmpty(str10) || StringUtils.isEmpty(str)) {
            request.put(str11, str);
        } else if (StringUtils.isNum(str10) && StringUtils.isNum(str)) {
            int parseInt = Integer.parseInt(str10);
            int parseInt2 = Integer.parseInt(str);
            if (parseInt2 >= parseInt) {
                Map<String, String> map = request;
                StringBuilder sb = new StringBuilder();
                sb.append(parseInt2 - parseInt);
                sb.append(str9);
                map.put(str11, sb.toString());
            }
        }
        request.put("long", str6);
        request.put("seo", str3);
        request.put("_token", str5);
        request.put("devicetype", "0");
        request.put("app_ver", str7);
        request.put(Constants.PARAM_PLATFORM, SettingsJsonConstants.APP_KEY);
        request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService(str8).newViewSec(request).enqueue(new Callback<ResponseBody>() {
            public void onFailure(Call<ResponseBody> call, Throwable th) {
            }

            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                if (response != null) {
                    try {
                        if (response.body() != null) {
                            String str = ((ResponseBody) response.body()).string().toString();
                            PreferenceUtil.put(Utils.getContext(), UserPreference.PLAY_TIME, str);
                            AILog.d("记忆功能返回", str);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }
}
