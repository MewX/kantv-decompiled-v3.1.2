package com.kantv.common.api;

import java.util.Map;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;
import retrofit2.http.Url;

public interface ApiService {
    @FormUrlEncoded
    @POST("User/Collect")
    Call<ResponseBody> Collect(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/index")
    Call<ResponseBody> Index(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/play")
    Call<ResponseBody> IndexPlay(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/dologin")
    Call<ResponseBody> Login(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/doRegUser")
    Call<ResponseBody> Register(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/videoRecommend")
    Call<ResponseBody> VideoRecommend(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("adtongji/adsClick")
    Call<ResponseBody> adsClick(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("adtongji/adsShow")
    Call<ResponseBody> adsShow(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Nav/bottomNav")
    Call<ResponseBody> bottomNav(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/channel")
    Call<ResponseBody> channel(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/deleteHistory")
    Call<ResponseBody> deleteHistory(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("message/details")
    Call<ResponseBody> details(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/doCollect")
    Call<ResponseBody> doCollect(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/doComment")
    Call<ResponseBody> doComment(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/doscore")
    Call<ResponseBody> doscore(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/logout")
    Call<ResponseBody> exitLogin(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/feedback")
    Call<ResponseBody> feedback(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("message/index")
    Call<ResponseBody> feedlist(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/filter")
    Call<ResponseBody> filter(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Ad/getAd")
    Call<ResponseBody> getAd(@FieldMap Map<String, String> map);

    @GET
    Call<ResponseBody> getAreaJson(@Url String str);

    @GET
    Call<ResponseBody> getBootJson(@Url String str);

    @FormUrlEncoded
    @POST("User/sendsms")
    Call<ResponseBody> getCode(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/getComments")
    Call<ResponseBody> getComments(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Country/getCountry")
    Call<ResponseBody> getCountry(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("barrage/list")
    Call<ResponseBody> getDanMuList(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/getDomain")
    Call<ResponseBody> getDomain(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("user/msgCount")
    Call<ResponseBody> getMsgCount(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/getNav")
    Call<ResponseBody> getNav(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("index/getNew")
    Call<ResponseBody> getNew(@FieldMap Map<String, String> map);

    @GET("News/details")
    Call<ResponseBody> getNewsDetails(@Query("id") String str);

    @FormUrlEncoded
    @POST("News/getClass")
    Call<ResponseBody> getNewsNav(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Ad/getPop")
    Call<ResponseBody> getPop(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/getPwdCodeSms")
    Call<ResponseBody> getPwdCodeSms(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/more")
    Call<ResponseBody> getRandomLook(@FieldMap Map<String, String> map);

    @GET("news/getRecommend")
    Call<ResponseBody> getRecommend();

    @GET("im/timrest")
    Call<ResponseBody> getSecretKey(@Query("uid") String str);

    @FormUrlEncoded
    @POST("search/suggest")
    Call<ResponseBody> getSuggest(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("index/getTop")
    Call<ResponseBody> getTop(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("ad/getWeatherRateAd")
    Call<ResponseBody> getWeatherRateAd(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Wechat/wxSubscribe")
    Call<ResponseBody> getWxCode(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/history")
    Call<ResponseBody> history(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/hotcomment")
    Call<ResponseBody> hotcomment(@FieldMap Map<String, String> map);

    @GET("Index/hotcommentDetail")
    Call<ResponseBody> hotcommentDetail(@Query("id") String str);

    @FormUrlEncoded
    @POST("User/likeReceive")
    Call<ResponseBody> likeReceive(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/likethis")
    Call<ResponseBody> likethis(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Ip/limitIp")
    Call<ResponseBody> limitIp(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/ajaxplay")
    Call<ResponseBody> lineSwitch(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Live/live_enter")
    Call<ResponseBody> live_enter(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Live/liveprogram")
    Call<ResponseBody> liveprogram(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("location/index")
    Call<ResponseBody> locationIndex(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/mailExists")
    Call<ResponseBody> mailExist(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/msgReceive")
    Call<ResponseBody> msgReceive(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/msgSend")
    Call<ResponseBody> msgSend(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("search/news")
    Call<ResponseBody> newSearch(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("viewSec.php")
    Call<ResponseBody> newViewSec(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("news/click")
    Call<ResponseBody> newsClick(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("News/getNewsExtraInfo")
    Call<ResponseBody> newsExtraInfo(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("News/index")
    Call<ResponseBody> newsList(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/onlineStatus")
    Call<ResponseBody> onlineStatus(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/refresh")
    Call<ResponseBody> refresh(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/replySubmit")
    Call<ResponseBody> replySubmit(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/getplayurl")
    Call<ResponseBody> requestUrl(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/resetPwd")
    Call<ResponseBody> resetPwd(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/sIndex")
    Call<ResponseBody> sIndex(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/search")
    Call<ResponseBody> search(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("search/together")
    Call<ResponseBody> searchTogether(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("barrage/post")
    Call<ResponseBody> sendDanmu(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/sendmail")
    Call<ResponseBody> sendEmail(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/sfilter")
    Call<ResponseBody> sfilter(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Share/lettersClick")
    Call<ResponseBody> shareClick(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Ad/startup")
    Call<ResponseBody> startup(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Adtongji/imageClick")
    Call<ResponseBody> todayAuImageClick(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/todayUpdate")
    Call<ResponseBody> todayUpdate(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("tongji/operate")
    Call<ResponseBody> tongJiOperate(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("tongji/share")
    Call<ResponseBody> tongJiShare(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("index/topic")
    Call<ResponseBody> topic(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/tvActor")
    Call<ResponseBody> tvActor(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/uinfo")
    Call<ResponseBody> uinfo(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("user/updateMobile")
    Call<ResponseBody> updateMobile(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/updateUserInfo")
    Call<ResponseBody> updateUserInfo(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/updateUserInfo")
    Call<ResponseBody> updateUserInfos(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("location/notification")
    Call<ResponseBody> uploadNotification(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/uploaderinfo")
    Call<ResponseBody> uploaderinfo(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/userExists")
    Call<ResponseBody> userExist(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/usershare")
    Call<ResponseBody> usershare(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/validCode")
    Call<ResponseBody> validPhoneCode(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("index/version_up")
    Call<ResponseBody> version_up(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("Index/videoRequest")
    Call<ResponseBody> videoRequest(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("User/viewSec")
    Call<ResponseBody> viewSec(@FieldMap Map<String, String> map);
}
