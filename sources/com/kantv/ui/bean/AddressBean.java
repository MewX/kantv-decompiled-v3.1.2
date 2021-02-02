package com.kantv.ui.bean;

import com.google.gson.Gson;
import com.kantv.common.api.Api;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.utils.PreferenceUtil;
import java.util.List;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class AddressBean {
    private List<CountryBean> country;

    public List<CountryBean> getCountry() {
        return this.country;
    }

    public void setCountry(List<CountryBean> list) {
        this.country = list;
    }

    public static String getArea(String str, String str2, String str3) {
        String str4 = "";
        try {
            String str5 = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.AREA_DATA, str4);
            if (!StringUtils.isEmpty(str5)) {
                for (CountryBean countryBean : ((AddressBean) new Gson().fromJson(str5, AddressBean.class)).getCountry()) {
                    if (countryBean.getId().equals(str)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(str4);
                        sb.append(countryBean.getName());
                        str4 = sb.toString();
                        if (!StringUtils.isEmpty(str2)) {
                            for (Province province : countryBean.getChildren()) {
                                if (province.getId().equals(str2)) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(str4);
                                    sb2.append(province.getName());
                                    str4 = sb2.toString();
                                    if (!StringUtils.isEmpty(str3)) {
                                        for (City city : province.getChildren()) {
                                            if (city.getId().equals(str3)) {
                                                StringBuilder sb3 = new StringBuilder();
                                                sb3.append(str4);
                                                sb3.append(city.getName());
                                                str4 = sb3.toString();
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } else {
                String bootDomain = Api.getBootDomain();
                StringBuilder sb4 = new StringBuilder();
                sb4.append(bootDomain);
                sb4.append("/area/area.json");
                Api.getService().getAreaJson(sb4.toString()).enqueue(new Callback<ResponseBody>() {
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                        if (response != null) {
                            try {
                                if (response.isSuccessful()) {
                                    PreferenceUtil.put(Utils.getContext(), UserPreference.AREA_DATA, ((ResponseBody) response.body()).string().toString());
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }

                    public void onFailure(Call<ResponseBody> call, Throwable th) {
                        th.printStackTrace();
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str4;
    }
}
