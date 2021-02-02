package com.tencent.av;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import com.tencent.av.Message.AvMsg;
import com.tencent.av.Message.AvMsg.Type;
import com.tencent.av.Message.AvMsg0x32;
import com.tencent.av.Message.TIMAvMessageListener;
import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.TIMCallBack;
import com.tencent.imsdk.TIMManager;
import com.tencent.imsdk.TIMUser;
import com.tencent.imsdk.TIMValueCallBack;
import com.tencent.imsdk.common.IMContext;
import com.tencent.imsdk.log.QLog;
import com.tencent.imsdk.utils.IMFunc;
import com.tencent.mobileqq.pb.ByteStringMicro;
import com.tencent.openqq.protocol.imsdk.gv_comm_operate.GVCommOprHead;
import com.tencent.openqq.protocol.imsdk.gv_comm_operate.ReqBody;
import com.tencent.openqq.protocol.imsdk.gv_comm_operate.RspBody;
import com.tencent.openqq.protocol.imsdk.msg;
import com.tencent.openqq.protocol.imsdk.videoinvitation.MsgBody;
import com.tencent.openqq.protocol.imsdk.videoinvitation.RsqMsgBody;
import com.tencent.openqq.protocol.imsdk.videoinvitation.UserInfo;
import com.tencent.timint.TIMIntManager;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;

public class TIMAvManager {
    protected static final char[] hexArray = "0123456789ABCDEF".toCharArray();
    static ConcurrentHashMap<String, TIMAvManager> mutiMap = new ConcurrentHashMap<>();
    private static final String tag = "MSF.C.TIMAvManager";
    private TIMAvMessageListener messageListener;
    public Random random = new Random();
    /* access modifiers changed from: private */
    public TIMUser user = new TIMUser();

    public class LiveUrl {
        int encodeType;
        int rate = 0;
        String url;

        public LiveUrl() {
        }

        /* access modifiers changed from: 0000 */
        public void setEncode(int i) {
            this.encodeType = i;
        }

        public int getEncode() {
            return this.encodeType;
        }

        public String getUrl() {
            String str = this.url;
            return str == null ? "" : str;
        }

        /* access modifiers changed from: 0000 */
        public void setUrl(String str) {
            this.url = str;
        }

        public RateType getRateType() {
            RateType[] values;
            for (RateType rateType : RateType.values()) {
                if (rateType.getValue() == this.rate) {
                    return rateType;
                }
            }
            return RateType.RATE_TYPE_ORIGINAL;
        }

        /* access modifiers changed from: 0000 */
        public void setRateType(int i) {
            this.rate = i;
        }
    }

    public enum RateType {
        RATE_TYPE_ORIGINAL(0),
        RATE_TYPE_550(10),
        RATE_TYPE_900(20);
        
        private int value;

        private RateType(int i) {
            this.value = 0;
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum RecordFileType {
        NONE(0),
        RECORD_HLS(1),
        RECORD_FLV(2),
        RECORD_HLS_FLV(3),
        RECORD_MP4(4),
        RECORD_HLS_MP4(5),
        RECORD_FLV_MP4(6),
        RECORD_HLS_FLV_MP4(7),
        RECORD_MP3(16);
        
        private int type;

        private RecordFileType(int i) {
            this.type = i;
        }

        /* access modifiers changed from: 0000 */
        public int getType() {
            return this.type;
        }
    }

    public class RecordParam {
        int classId;
        String filename = "";
        boolean isScreenShot = false;
        boolean isTransCode = false;
        boolean isWaterMark = false;
        RecordType recordType = RecordType.VIDEO;
        SDKType sdktype = SDKType.Normal;
        SourceType stype = SourceType.CAMERA;
        List<String> tags = new ArrayList();

        public RecordParam() {
        }

        public void setRecordType(RecordType recordType2) {
            if (recordType2 != null) {
                this.recordType = recordType2;
            }
        }

        public RecordType getRecordType() {
            return this.recordType;
        }

        private void setSourceType(SourceType sourceType) {
            this.stype = sourceType;
        }

        public void setFilename(String str) {
            this.filename = str;
        }

        public String filename() {
            return this.filename;
        }

        public void addTag(String str) {
            this.tags.add(str);
        }

        public List<String> tags() {
            return this.tags;
        }

        public void setClassId(int i) {
            this.classId = i;
        }

        public int classId() {
            return this.classId;
        }

        public void setTransCode(boolean z) {
            this.isTransCode = z;
        }

        public boolean isTransCode() {
            return this.isTransCode;
        }

        public void setSreenShot(boolean z) {
            this.isScreenShot = z;
        }

        public boolean isScreenShot() {
            return this.isScreenShot;
        }

        public void setWaterMark(boolean z) {
            this.isWaterMark = z;
        }

        public boolean isWaterMark() {
            return this.isWaterMark;
        }

        private void setSdkType(SDKType sDKType) {
            this.sdktype = sDKType;
        }

        private SDKType getSdkType() {
            return this.sdktype;
        }
    }

    public enum RecordType {
        VIDEO(0),
        AUDIO(1);
        
        private int value;

        private RecordType(int i) {
            this.value = 0;
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public class RoomInfo {
        int relationId;
        int roomId;

        public RoomInfo() {
        }

        public void setRelationId(int i) {
            this.relationId = i;
        }

        public void setRoomId(int i) {
            this.roomId = i;
        }
    }

    private enum SDKType {
        Normal(1),
        IOTCamara(2),
        CoastCamara(3);
        
        private int type;

        private SDKType(int i) {
            this.type = i;
        }

        /* access modifiers changed from: 0000 */
        public int getSdkType() {
            return this.type;
        }
    }

    private enum SourceType {
        CAMERA(0),
        SECONDARY_STREAM(1);
        
        private int type;

        private SourceType(int i) {
            this.type = i;
        }

        /* access modifiers changed from: 0000 */
        public int getValue() {
            return this.type;
        }
    }

    public enum StreamEncode {
        HLS(1),
        FLV(2),
        RAW(4),
        RTMP(5),
        HLS_AND_RTMP(6);
        
        private int encode;

        private StreamEncode(int i) {
            this.encode = i;
        }

        /* access modifiers changed from: 0000 */
        public int getEncode() {
            return this.encode;
        }
    }

    public class StreamParam {
        String chnldescr;
        String chnlname;
        String chnlpasswd;
        StreamEncode encode;
        boolean isAudioOnly;
        boolean isRecord;
        boolean isWatermark;
        List<RateType> rates;
        RecordFileType recordFileType = RecordFileType.NONE;
        SDKType sdktype = SDKType.Normal;
        SourceType stype;
        long watermarkId;

        public StreamParam() {
            String str = "";
            this.chnlname = str;
            this.chnldescr = str;
            this.chnlpasswd = str;
            this.stype = SourceType.CAMERA;
            this.isRecord = false;
            this.isWatermark = false;
            this.watermarkId = 0;
            this.rates = new ArrayList();
            this.isAudioOnly = false;
        }

        public void setEncode(StreamEncode streamEncode) {
            this.encode = streamEncode;
        }

        public void setChannelName(String str) {
            this.chnlname = str;
        }

        public void setChannelDescr(String str) {
            this.chnldescr = str;
        }

        public void setRecordFileType(RecordFileType recordFileType2) {
            this.recordFileType = recordFileType2;
        }

        private void setSdkType(SDKType sDKType) {
            this.sdktype = sDKType;
        }

        public void setAudioOnly() {
            this.isAudioOnly = true;
        }

        private void setChannelPasswd(String str) {
            this.chnlpasswd = str;
        }

        private void setSourceType(SourceType sourceType) {
            this.stype = sourceType;
        }

        private void enableRecord(boolean z) {
            this.isRecord = z;
        }

        private void enableWatermark(boolean z) {
            this.isWatermark = z;
        }

        private void setWatermarkId(long j) {
            this.watermarkId = j;
        }

        private void addRateType(RateType rateType) {
            this.rates.add(rateType);
        }
    }

    public class StreamRes {
        long chnlId;
        long taskId;
        List<LiveUrl> urls = new ArrayList();

        public StreamRes() {
        }

        public List<LiveUrl> getUrls() {
            return this.urls;
        }

        public long getChnlId() {
            return this.chnlId;
        }

        public long getTaskId() {
            return this.taskId;
        }
    }

    private class StreamerRecorderContext {
        int authKey;
        int authType;
        int busiType;
        List<Long> chnlIDs;
        int operation;
        RecordParam recordParam;
        int roomId;
        int sdkAppId;
        String sig;
        StreamParam streamParam;
        int subcmd;
        long uin;

        private StreamerRecorderContext() {
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("StreamerRecorderContext{");
            sb.append("sdkappid:");
            sb.append(this.sdkAppId);
            sb.append(", roomId:");
            sb.append(this.roomId);
            sb.append(", subcmd:");
            sb.append(this.subcmd);
            sb.append(", oper:");
            sb.append(this.operation);
            return sb.toString();
        }
    }

    public TIMAvMessageListener getMessageListener() {
        return this.messageListener;
    }

    public void setMessageListener(TIMAvMessageListener tIMAvMessageListener) {
        this.messageListener = tIMAvMessageListener;
    }

    public int getSdkAppId() {
        return TIMManager.getInstance().getSdkConfig().getSdkAppId();
    }

    private TIMAvManager(String str) {
        this.user.setIdentifier(str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        TIMIntManager.getInstance().userIdToTinyId(arrayList, new TIMValueCallBack<List<TIMUser>>() {
            public void onError(int i, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append("code: ");
                sb.append(i);
                sb.append("  desc:");
                sb.append(str);
                QLog.e(TIMAvManager.tag, sb.toString());
            }

            public void onSuccess(List<TIMUser> list) {
                if (list.size() == 1) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("user identifier:");
                    sb.append(TIMAvManager.this.user.getIdentifier());
                    sb.append(" res identifier:");
                    sb.append(((TIMUser) list.get(0)).getIdentifier());
                    QLog.i(TIMAvManager.tag, sb.toString());
                    TIMAvManager.this.user = (TIMUser) list.get(0);
                }
            }
        });
    }

    public static TIMAvManager getInstance() {
        String loginUser = TIMManager.getInstance().getLoginUser();
        if (TextUtils.isEmpty(loginUser)) {
            QLog.w(tag, "current login user is empty");
        }
        for (Entry entry : mutiMap.entrySet()) {
            if (entry.getKey() == loginUser) {
                return (TIMAvManager) entry.getValue();
            }
        }
        TIMAvManager tIMAvManager = new TIMAvManager(loginUser);
        mutiMap.putIfAbsent(loginUser, tIMAvManager);
        return tIMAvManager;
    }

    public void MsgNotify(byte[] bArr) {
        if (this.messageListener != null) {
            AvMsg0x32 avMsg0x32 = new AvMsg0x32(this.user.getIdentifier());
            avMsg0x32.receive(bArr);
            this.messageListener.onNewMessages(avMsg0x32);
        }
    }

    public void requestSpeedTest(@NonNull final TIMPingCallBack tIMPingCallBack) {
        if (TextUtils.isEmpty(this.user.getIdentifier())) {
            tIMPingCallBack.onError(BaseConstants.ERR_SDK_NOT_LOGGED_IN, "current not login");
            return;
        }
        int sdkAppId = getSdkAppId();
        final ByteBuffer allocate = ByteBuffer.allocate(19);
        allocate.put(2).putShort(1).putShort(7).putShort(6).putInt(sdkAppId).putInt(23678484).putShort(0).putShort(0);
        if (this.user.getTinyId() == 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.user.getIdentifier());
            TIMIntManager.getInstance().userIdToTinyId(arrayList, new TIMValueCallBack<List<TIMUser>>() {
                public void onError(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("code: ");
                    sb.append(i);
                    sb.append("  desc:");
                    sb.append(str);
                    QLog.e(TIMAvManager.tag, sb.toString());
                    tIMPingCallBack.onError(i, str);
                }

                public void onSuccess(List<TIMUser> list) {
                    if (list.size() != 1) {
                        tIMPingCallBack.onError(-2, "List TIMUser size not equal 1");
                        return;
                    }
                    TIMAvManager.this.user = (TIMUser) list.get(0);
                    TIMIntManager.getInstance().requestMultiVideoInfo(NetworkUtil.formReq(TIMAvManager.this.user.getTinyId(), AVException.ACCOUNT_ALREADY_LINKED, 0, "", allocate.array()), new TIMValueCallBack<byte[]>() {
                        public void onError(int i, String str) {
                            tIMPingCallBack.onError(i, str);
                        }

                        public void onSuccess(byte[] bArr) {
                            PingUtil.getInstance().init(bArr, tIMPingCallBack);
                            PingUtil.getInstance().setUser(TIMAvManager.this.user);
                            PingUtil.getInstance().start();
                        }
                    });
                }
            });
            return;
        }
        TIMIntManager.getInstance().requestMultiVideoInfo(NetworkUtil.formReq(this.user.getTinyId(), AVException.ACCOUNT_ALREADY_LINKED, 0, "", allocate.array()), new TIMValueCallBack<byte[]>() {
            public void onError(int i, String str) {
                tIMPingCallBack.onError(i, str);
            }

            public void onSuccess(byte[] bArr) {
                PingUtil.getInstance().init(bArr, tIMPingCallBack);
                PingUtil.getInstance().setUser(TIMAvManager.this.user);
                PingUtil.getInstance().start();
            }
        });
    }

    public void requestSpeedTestStop() {
        PingUtil.getInstance().stop();
    }

    public void requestMultiVideoInvitation(int i, int i2, int i3, int i4, byte[] bArr, List<TIMUser> list, @NonNull final TIMCallBack tIMCallBack) {
        QLog.i(tag, "---- Enter requestMultiVideoInvitation -----");
        if (TextUtils.isEmpty(this.user.getIdentifier())) {
            StringBuilder sb = new StringBuilder();
            sb.append("current user not login. id: ");
            sb.append(this.user.getIdentifier());
            tIMCallBack.onError(BaseConstants.ERR_SDK_NOT_LOGGED_IN, sb.toString());
        } else if (bArr != null && bArr.length > 128) {
            tIMCallBack.onError(-1, "自定义信息长度不能超过128字节");
        } else if (list.size() <= 0) {
            tIMCallBack.onError(-1, "邀请人数至少为一人");
        } else {
            MsgBody msgBody = new MsgBody();
            msgBody.int32_buss_type.set(i);
            msgBody.int32_auth_type.set(i2);
            msgBody.uint32_auth_id.set(i3);
            msgBody.uint32_sdk_appid.set(getSdkAppId());
            msgBody.int32_request_type.set(i4);
            if (bArr != null) {
                msgBody.bytes_buff.set(ByteStringMicro.copyFrom(bArr));
            }
            msgBody.msg_sender.set(new UserInfo());
            ArrayList arrayList = new ArrayList();
            for (TIMUser tIMUser : list) {
                UserInfo userInfo = new UserInfo();
                userInfo.bytes_appid.set(ByteStringMicro.copyFromUtf8(tIMUser.getAppIdAt3rd()));
                userInfo.bytes_openid.set(ByteStringMicro.copyFromUtf8(tIMUser.getIdentifier()));
                arrayList.add(userInfo);
            }
            msgBody.rpt_msg_receiver_list.set(arrayList);
            msg.MsgBody msgBody2 = new msg.MsgBody();
            msgBody2.msg_content.set(ByteStringMicro.copyFrom(msgBody.toByteArray()));
            TIMIntManager.getInstance().request("openim.videoinvitaion", msgBody2.toByteArray(), new TIMValueCallBack<byte[]>() {
                public void onError(int i, String str) {
                    tIMCallBack.onError(i, str);
                }

                public void onSuccess(byte[] bArr) {
                    try {
                        new RsqMsgBody().mergeFrom(bArr);
                    } catch (Throwable th) {
                        QLog.e(TIMAvManager.tag, IMFunc.getExceptionInfo(th));
                    }
                }
            });
        }
    }

    public void ResponseToVideoInvitation(Type type, AvMsg avMsg, TIMCallBack tIMCallBack) {
        avMsg.setMsgType(type);
        avMsg.response(tIMCallBack);
    }

    private static String bytesToHex(byte[] bArr) {
        char[] cArr = new char[(bArr.length * 2)];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i] & Draft_75.END_OF_FRAME;
            int i2 = i * 2;
            char[] cArr2 = hexArray;
            cArr[i2] = cArr2[b >>> 4];
            cArr[i2 + 1] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public void requestMultiVideoStreamerStart(RoomInfo roomInfo, StreamParam streamParam, @NonNull final TIMValueCallBack<StreamRes> tIMValueCallBack) {
        final StreamerRecorderContext streamerRecorderContext = new StreamerRecorderContext();
        streamerRecorderContext.busiType = 7;
        streamerRecorderContext.authType = 6;
        streamerRecorderContext.authKey = roomInfo.relationId;
        streamerRecorderContext.roomId = roomInfo.roomId;
        streamerRecorderContext.streamParam = streamParam;
        streamerRecorderContext.sdkAppId = getSdkAppId();
        streamerRecorderContext.uin = this.user.getTinyId();
        streamerRecorderContext.operation = 1;
        streamerRecorderContext.subcmd = 320;
        if (this.user.getTinyId() == 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.user.getIdentifier());
            TIMIntManager.getInstance().userIdToTinyId(arrayList, new TIMValueCallBack<List<TIMUser>>() {
                public void onError(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("code: ");
                    sb.append(i);
                    sb.append("  desc:");
                    sb.append(str);
                    QLog.e(TIMAvManager.tag, sb.toString());
                    tIMValueCallBack.onError(i, str);
                }

                public void onSuccess(List<TIMUser> list) {
                    if (list.size() != 1) {
                        tIMValueCallBack.onError(-2, "List TIMUser size not equal 1");
                        return;
                    }
                    TIMAvManager.this.user = (TIMUser) list.get(0);
                    streamerRecorderContext.uin = TIMAvManager.this.user.getTinyId();
                    TIMAvManager.this.requestMultiVideoStreamerRelay(streamerRecorderContext, tIMValueCallBack);
                }
            });
            return;
        }
        requestMultiVideoStreamerRelay(streamerRecorderContext, tIMValueCallBack);
    }

    public void requestMultiVideoStreamerStop(RoomInfo roomInfo, List<Long> list, boolean z, @NonNull final TIMCallBack tIMCallBack) {
        if (TextUtils.isEmpty(this.user.getIdentifier())) {
            StringBuilder sb = new StringBuilder();
            sb.append("current user not login. id: ");
            sb.append(this.user.getIdentifier());
            tIMCallBack.onError(BaseConstants.ERR_SDK_NOT_LOGGED_IN, sb.toString());
            return;
        }
        StreamParam streamParam = new StreamParam();
        if (z) {
            streamParam.setAudioOnly();
        }
        final StreamerRecorderContext streamerRecorderContext = new StreamerRecorderContext();
        streamerRecorderContext.busiType = 7;
        streamerRecorderContext.authType = 6;
        streamerRecorderContext.authKey = roomInfo.relationId;
        streamerRecorderContext.roomId = roomInfo.roomId;
        streamerRecorderContext.chnlIDs = list;
        streamerRecorderContext.sdkAppId = getSdkAppId();
        streamerRecorderContext.uin = this.user.getTinyId();
        streamerRecorderContext.operation = 2;
        streamerRecorderContext.subcmd = 320;
        streamerRecorderContext.streamParam = streamParam;
        if (this.user.getTinyId() == 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.user.getIdentifier());
            TIMIntManager.getInstance().userIdToTinyId(arrayList, new TIMValueCallBack<List<TIMUser>>() {
                public void onError(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("code: ");
                    sb.append(i);
                    sb.append("  desc:");
                    sb.append(str);
                    QLog.e(TIMAvManager.tag, sb.toString());
                    tIMCallBack.onError(i, str);
                }

                public void onSuccess(List<TIMUser> list) {
                    if (list.size() != 1) {
                        tIMCallBack.onError(-2, "List TIMUser size not equal 1");
                        return;
                    }
                    TIMAvManager.this.user = (TIMUser) list.get(0);
                    streamerRecorderContext.uin = TIMAvManager.this.user.getTinyId();
                    TIMAvManager.this.requestMultiVideoStreamerRelay(streamerRecorderContext, new TIMValueCallBack<StreamRes>() {
                        public void onError(int i, String str) {
                            tIMCallBack.onError(i, str);
                        }

                        public void onSuccess(StreamRes streamRes) {
                            tIMCallBack.onSuccess();
                        }
                    });
                }
            });
            return;
        }
        requestMultiVideoStreamerRelay(streamerRecorderContext, new TIMValueCallBack<StreamRes>() {
            public void onError(int i, String str) {
                tIMCallBack.onError(i, str);
            }

            public void onSuccess(StreamRes streamRes) {
                tIMCallBack.onSuccess();
            }
        });
    }

    public void requestMultiVideoRecorderStart(RoomInfo roomInfo, RecordParam recordParam, @NonNull final TIMCallBack tIMCallBack) {
        if (TextUtils.isEmpty(this.user.getIdentifier())) {
            StringBuilder sb = new StringBuilder();
            sb.append("current user not login. id: ");
            sb.append(this.user.getIdentifier());
            tIMCallBack.onError(BaseConstants.ERR_SDK_NOT_LOGGED_IN, sb.toString());
            return;
        }
        final StreamerRecorderContext streamerRecorderContext = new StreamerRecorderContext();
        streamerRecorderContext.busiType = 7;
        streamerRecorderContext.authType = 6;
        streamerRecorderContext.authKey = roomInfo.relationId;
        streamerRecorderContext.roomId = roomInfo.roomId;
        streamerRecorderContext.sdkAppId = getSdkAppId();
        streamerRecorderContext.uin = this.user.getTinyId();
        streamerRecorderContext.recordParam = recordParam;
        streamerRecorderContext.operation = 1;
        streamerRecorderContext.subcmd = 322;
        if (this.user.getTinyId() == 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.user.getIdentifier());
            TIMIntManager.getInstance().userIdToTinyId(arrayList, new TIMValueCallBack<List<TIMUser>>() {
                public void onError(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("code: ");
                    sb.append(i);
                    sb.append("  desc:");
                    sb.append(str);
                    QLog.e(TIMAvManager.tag, sb.toString());
                    tIMCallBack.onError(i, str);
                }

                public void onSuccess(List<TIMUser> list) {
                    if (list.size() != 1) {
                        tIMCallBack.onError(-2, "List TIMUser size not equal 1");
                        return;
                    }
                    TIMAvManager.this.user = (TIMUser) list.get(0);
                    streamerRecorderContext.uin = TIMAvManager.this.user.getTinyId();
                    TIMAvManager.this.requestMultiVideoRecorderRelay(streamerRecorderContext, new TIMValueCallBack<List<String>>() {
                        public void onError(int i, String str) {
                            tIMCallBack.onError(i, str);
                        }

                        public void onSuccess(List<String> list) {
                            tIMCallBack.onSuccess();
                        }
                    });
                }
            });
            return;
        }
        requestMultiVideoRecorderRelay(streamerRecorderContext, new TIMValueCallBack<List<String>>() {
            public void onError(int i, String str) {
                tIMCallBack.onError(i, str);
            }

            public void onSuccess(List<String> list) {
                tIMCallBack.onSuccess();
            }
        });
    }

    public void requestMultiVideoRecorderStop(RoomInfo roomInfo, boolean z, @NonNull final TIMValueCallBack<List<String>> tIMValueCallBack) {
        if (TextUtils.isEmpty(this.user.getIdentifier())) {
            StringBuilder sb = new StringBuilder();
            sb.append("current user not login. id: ");
            sb.append(this.user.getIdentifier());
            tIMValueCallBack.onError(BaseConstants.ERR_SDK_NOT_LOGGED_IN, sb.toString());
            return;
        }
        RecordParam recordParam = new RecordParam();
        if (z) {
            recordParam.setRecordType(RecordType.AUDIO);
        }
        final StreamerRecorderContext streamerRecorderContext = new StreamerRecorderContext();
        streamerRecorderContext.busiType = 7;
        streamerRecorderContext.authType = 6;
        streamerRecorderContext.authKey = roomInfo.relationId;
        streamerRecorderContext.roomId = roomInfo.roomId;
        streamerRecorderContext.sig = null;
        streamerRecorderContext.sdkAppId = getSdkAppId();
        streamerRecorderContext.uin = this.user.getTinyId();
        streamerRecorderContext.operation = 2;
        streamerRecorderContext.subcmd = 322;
        streamerRecorderContext.recordParam = recordParam;
        if (this.user.getTinyId() == 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.user.getIdentifier());
            TIMIntManager.getInstance().userIdToTinyId(arrayList, new TIMValueCallBack<List<TIMUser>>() {
                public void onError(int i, String str) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("code: ");
                    sb.append(i);
                    sb.append("  desc:");
                    sb.append(str);
                    QLog.e(TIMAvManager.tag, sb.toString());
                    tIMValueCallBack.onError(i, str);
                }

                public void onSuccess(List<TIMUser> list) {
                    if (list.size() != 1) {
                        tIMValueCallBack.onError(-2, "List TIMUser size not equal 1");
                        return;
                    }
                    TIMAvManager.this.user = (TIMUser) list.get(0);
                    streamerRecorderContext.uin = TIMAvManager.this.user.getTinyId();
                    TIMAvManager.this.requestMultiVideoRecorderRelay(streamerRecorderContext, tIMValueCallBack);
                }
            });
            return;
        }
        requestMultiVideoRecorderRelay(streamerRecorderContext, tIMValueCallBack);
    }

    /* access modifiers changed from: 0000 */
    public void requestMultiVideoStreamerRelay(StreamerRecorderContext streamerRecorderContext, @NonNull final TIMValueCallBack<StreamRes> tIMValueCallBack) {
        if (streamerRecorderContext.sig != null && streamerRecorderContext.sig.getBytes().length > 256) {
            IMContext.getInstance().runOnMainThread(new Runnable() {
                public void run() {
                    tIMValueCallBack.onError(-1, "Invalid signature, length is limited to 256 bytes");
                }
            });
        }
        StringBuilder sb = new StringBuilder();
        sb.append("requestMultiVideoStreamerRelay, ");
        sb.append(streamerRecorderContext.toString());
        QLog.i(tag, sb.toString());
        GVCommOprHead gVCommOprHead = new GVCommOprHead();
        gVCommOprHead.uint32_buss_type.set(streamerRecorderContext.busiType);
        gVCommOprHead.uint32_auth_type.set(streamerRecorderContext.authType);
        gVCommOprHead.uint32_auth_key.set(streamerRecorderContext.authKey);
        gVCommOprHead.uint64_uin.set(streamerRecorderContext.uin);
        gVCommOprHead.uint32_sdk_appid.set(streamerRecorderContext.sdkAppId);
        ReqBody reqBody = new ReqBody();
        reqBody.req_0x6.setHasFlag(true);
        reqBody.req_0x6.uint32_oper.set(streamerRecorderContext.operation);
        if (streamerRecorderContext.streamParam != null) {
            if (streamerRecorderContext.streamParam.encode != null) {
                reqBody.req_0x6.uint32_live_code.set(streamerRecorderContext.streamParam.encode.getEncode());
            }
            reqBody.req_0x6.uint32_sdk_type.set(streamerRecorderContext.streamParam.sdktype.getSdkType());
            if (!TextUtils.isEmpty(streamerRecorderContext.streamParam.chnlname)) {
                reqBody.req_0x6.str_channel_name.set(streamerRecorderContext.streamParam.chnlname);
            }
            if (!TextUtils.isEmpty(streamerRecorderContext.streamParam.chnldescr)) {
                reqBody.req_0x6.str_channel_describe.set(streamerRecorderContext.streamParam.chnldescr);
            }
            if (!TextUtils.isEmpty(streamerRecorderContext.streamParam.chnlpasswd)) {
                reqBody.req_0x6.str_player_pwd.set(streamerRecorderContext.streamParam.chnlpasswd);
            }
            reqBody.req_0x6.uint32_push_data_type.set(streamerRecorderContext.streamParam.stype.getValue());
            if (streamerRecorderContext.streamParam.isRecord) {
                reqBody.req_0x6.uint32_tape_flag.set(1);
            }
            if (streamerRecorderContext.streamParam.isAudioOnly) {
                reqBody.req_0x6.uint32_push_flag.set(1);
            }
            if (streamerRecorderContext.streamParam.isWatermark) {
                reqBody.req_0x6.uint32_watermark_flag.set(1);
                reqBody.req_0x6.uint32_watermark_id.set((int) streamerRecorderContext.streamParam.watermarkId);
            }
            if (streamerRecorderContext.streamParam.rates.size() > 0) {
                for (RateType value : streamerRecorderContext.streamParam.rates) {
                    reqBody.req_0x6.rpt_rate_type.add(Integer.valueOf(value.getValue()));
                }
            }
            if (streamerRecorderContext.streamParam.recordFileType != RecordFileType.NONE) {
                reqBody.req_0x6.uint32_record_type.set(streamerRecorderContext.streamParam.recordFileType.getType());
            }
        }
        if (streamerRecorderContext.chnlIDs != null) {
            reqBody.req_0x6.uint64_channel_id.set(streamerRecorderContext.chnlIDs);
        }
        TIMIntManager.getInstance().requestMultiVideoInfo(NetworkUtil.formReq(this.user.getTinyId(), streamerRecorderContext.subcmd, streamerRecorderContext.roomId, streamerRecorderContext.sig, gVCommOprHead.toByteArray(), reqBody.toByteArray()), new TIMValueCallBack<byte[]>() {
            public void onError(int i, String str) {
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        tIMValueCallBack.onError(BaseConstants.ERR_PARSE_RESPONSE_FAILED, "parse streamer rsp failed");
                    }
                });
            }

            public void onSuccess(byte[] bArr) {
                String str = TIMAvManager.tag;
                final RspBody rspBody = new RspBody();
                byte[] parseRsp = NetworkUtil.parseRsp(bArr);
                if (parseRsp == null) {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            tIMValueCallBack.onError(BaseConstants.ERR_PARSE_RESPONSE_FAILED, "parse streamer rsp failed");
                        }
                    });
                    return;
                }
                try {
                    rspBody.mergeFrom(parseRsp);
                    if (rspBody.rsp_0x6.uint32_result.get() != 0) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("streamer svr ret: ");
                        sb.append(rspBody.rsp_0x6.uint32_result.get());
                        sb.append(" err: ");
                        sb.append(rspBody.rsp_0x6.str_errorinfo.get());
                        QLog.d(str, sb.toString());
                        IMContext.getInstance().runOnMainThread(new Runnable() {
                            public void run() {
                                tIMValueCallBack.onError(rspBody.rsp_0x6.uint32_result.get(), rspBody.rsp_0x6.str_errorinfo.get());
                            }
                        });
                        return;
                    }
                    final StreamRes streamRes = new StreamRes();
                    streamRes.urls = new ArrayList();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("live url list size: ");
                    sb2.append(rspBody.rsp_0x6.msg_live_url.size());
                    QLog.d(str, sb2.toString());
                    for (com.tencent.openqq.protocol.imsdk.gv_comm_operate.LiveUrl liveUrl : rspBody.rsp_0x6.msg_live_url.get()) {
                        LiveUrl liveUrl2 = new LiveUrl();
                        liveUrl2.setEncode(liveUrl.uint32_type.get());
                        liveUrl2.setUrl(liveUrl.string_play_url.get());
                        liveUrl2.setRateType(liveUrl.rate_type.get());
                        streamRes.urls.add(liveUrl2);
                    }
                    streamRes.chnlId = rspBody.rsp_0x6.uint64_channel_id.get();
                    streamRes.taskId = (long) rspBody.rsp_0x6.uint32_tape_task_id.get();
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            tIMValueCallBack.onSuccess(streamRes);
                        }
                    });
                } catch (Throwable th) {
                    QLog.e(str, IMFunc.getExceptionInfo(th));
                    QLog.e(str, "parse streamer svr rsp failed");
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            tIMValueCallBack.onError(BaseConstants.ERR_PARSE_RESPONSE_FAILED, "parse streamer rsp failed");
                        }
                    });
                }
            }
        });
    }

    /* access modifiers changed from: 0000 */
    public void requestMultiVideoRecorderRelay(StreamerRecorderContext streamerRecorderContext, @NonNull final TIMValueCallBack<List<String>> tIMValueCallBack) {
        if (streamerRecorderContext.sig != null && streamerRecorderContext.sig.getBytes().length > 256) {
            IMContext.getInstance().runOnMainThread(new Runnable() {
                public void run() {
                    tIMValueCallBack.onError(-1, "Invalid signature, length is limited to 256 bytes");
                }
            });
        }
        StringBuilder sb = new StringBuilder();
        sb.append("requestMultiVideoRecorderRelay, ");
        sb.append(streamerRecorderContext.toString());
        QLog.i(tag, sb.toString());
        GVCommOprHead gVCommOprHead = new GVCommOprHead();
        gVCommOprHead.uint32_buss_type.set(streamerRecorderContext.busiType);
        gVCommOprHead.uint32_auth_type.set(streamerRecorderContext.authType);
        gVCommOprHead.uint32_auth_key.set(streamerRecorderContext.authKey);
        gVCommOprHead.uint64_uin.set(streamerRecorderContext.uin);
        gVCommOprHead.uint32_sdk_appid.set(streamerRecorderContext.sdkAppId);
        ReqBody reqBody = new ReqBody();
        reqBody.req_0x5.setHasFlag(true);
        reqBody.req_0x5.uint32_oper.set(streamerRecorderContext.operation);
        reqBody.req_0x5.uint32_seq.set(this.random.nextInt());
        if (streamerRecorderContext.recordParam != null) {
            if (streamerRecorderContext.recordParam.filename() != null) {
                reqBody.req_0x5.string_file_name.set(streamerRecorderContext.recordParam.filename());
            }
            reqBody.req_0x5.uint32_classid.set(streamerRecorderContext.recordParam.classId());
            reqBody.req_0x5.uint32_IsTransCode.set(streamerRecorderContext.recordParam.isTransCode() ? 1 : 0);
            reqBody.req_0x5.uint32_IsScreenShot.set(streamerRecorderContext.recordParam.isScreenShot() ? 1 : 0);
            reqBody.req_0x5.uint32_IsWaterMark.set(streamerRecorderContext.recordParam.isWaterMark() ? 1 : 0);
            for (String add : streamerRecorderContext.recordParam.tags()) {
                reqBody.req_0x5.string_tags.add(add);
            }
            reqBody.req_0x5.uint32_sdk_type.set(streamerRecorderContext.recordParam.sdktype.getSdkType());
            reqBody.req_0x5.uint32_record_data_type.set(streamerRecorderContext.recordParam.stype.getValue());
            if (streamerRecorderContext.recordParam.recordType != RecordType.VIDEO) {
                reqBody.req_0x5.uint32_record_type.set(streamerRecorderContext.recordParam.recordType.getValue());
            }
        }
        TIMIntManager.getInstance().requestMultiVideoInfo(NetworkUtil.formReq(this.user.getTinyId(), streamerRecorderContext.subcmd, streamerRecorderContext.roomId, streamerRecorderContext.sig, gVCommOprHead.toByteArray(), reqBody.toByteArray()), new TIMValueCallBack<byte[]>() {
            public void onError(final int i, final String str) {
                IMContext.getInstance().runOnMainThread(new Runnable() {
                    public void run() {
                        tIMValueCallBack.onError(i, str);
                    }
                });
            }

            public void onSuccess(byte[] bArr) {
                String str = TIMAvManager.tag;
                final RspBody rspBody = new RspBody();
                byte[] parseRsp = NetworkUtil.parseRsp(bArr);
                if (parseRsp == null) {
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            tIMValueCallBack.onError(BaseConstants.ERR_PARSE_RESPONSE_FAILED, "parse recorder rsp failed");
                        }
                    });
                    return;
                }
                try {
                    rspBody.mergeFrom(parseRsp);
                    if (rspBody.rsp_0x5.uint32_result.get() != 0) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("recorder svr ret: ");
                        sb.append(rspBody.rsp_0x5.uint32_result.get());
                        sb.append(" err: ");
                        sb.append(rspBody.rsp_0x5.str_errorinfo.get());
                        QLog.d(str, sb.toString());
                        IMContext.getInstance().runOnMainThread(new Runnable() {
                            public void run() {
                                tIMValueCallBack.onError(rspBody.rsp_0x5.uint32_result.get(), rspBody.rsp_0x5.str_errorinfo.get());
                            }
                        });
                        return;
                    }
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            tIMValueCallBack.onSuccess(rspBody.rsp_0x5.str_fileID.get());
                        }
                    });
                } catch (Throwable th) {
                    QLog.e(str, IMFunc.getExceptionInfo(th));
                    QLog.e(str, "parse recorder svr rsp failed");
                    IMContext.getInstance().runOnMainThread(new Runnable() {
                        public void run() {
                            tIMValueCallBack.onError(BaseConstants.ERR_PARSE_RESPONSE_FAILED, "parse recorder rsp failed");
                        }
                    });
                }
            }
        });
    }
}
