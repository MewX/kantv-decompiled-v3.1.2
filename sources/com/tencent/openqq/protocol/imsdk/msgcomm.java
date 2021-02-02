package com.tencent.openqq.protocol.imsdk;

import com.tencent.mobileqq.pb.MessageMicro;
import com.tencent.mobileqq.pb.PBField;
import com.tencent.mobileqq.pb.PBRepeatMessageField;
import com.tencent.mobileqq.pb.PBStringField;
import com.tencent.mobileqq.pb.PBUInt32Field;
import com.tencent.mobileqq.pb.PBUInt64Field;

public final class msgcomm {

    public static final class MsgElement extends MessageMicro<MsgElement> {
        public static final int MSGCONTENT_FIELD_NUMBER = 2;
        public static final int MSGTYPE_FIELD_NUMBER = 1;
        static final FieldMap __fieldMap__;
        public final PBStringField MsgContent;
        public final PBStringField MsgType;

        public MsgElement() {
            String str = "";
            this.MsgType = PBField.initString(str);
            this.MsgContent = PBField.initString(str);
        }

        static {
            String str = "";
            __fieldMap__ = MessageMicro.initFieldMap(new int[]{10, 18}, new String[]{"MsgType", "MsgContent"}, new Object[]{str, str}, MsgElement.class);
        }
    }

    public static final class MsgInfo extends MessageMicro<MsgInfo> {
        public static final int FROMOPENID_FIELD_NUMBER = 1;
        public static final int FROMTINYID_FIELD_NUMBER = 2;
        public static final int MSGREADED_FIELD_NUMBER = 8;
        public static final int MSGSEQID_FIELD_NUMBER = 6;
        public static final int MSGTIMESTAMP_FIELD_NUMBER = 5;
        public static final int MSG_FIELD_NUMBER = 7;
        public static final int TOOPENID_FIELD_NUMBER = 3;
        public static final int TOTINYID_FIELD_NUMBER = 4;
        static final FieldMap __fieldMap__;
        public final PBStringField FromOpenid;
        public final PBUInt64Field FromTinyid = PBField.initUInt64(0);
        public final PBRepeatMessageField<MsgElement> Msg;
        public final PBUInt32Field MsgReaded;
        public final PBUInt64Field MsgSeqId;
        public final PBUInt32Field MsgTimestamp;
        public final PBStringField ToOpenid;
        public final PBUInt64Field ToTinyid;

        public MsgInfo() {
            String str = "";
            this.FromOpenid = PBField.initString(str);
            this.ToOpenid = PBField.initString(str);
            this.ToTinyid = PBField.initUInt64(0);
            this.MsgTimestamp = PBField.initUInt32(0);
            this.MsgSeqId = PBField.initUInt64(0);
            this.Msg = PBField.initRepeatMessage(MsgElement.class);
            this.MsgReaded = PBField.initUInt32(0);
        }

        static {
            int[] iArr = {10, 16, 26, 32, 40, 48, 58, 64};
            String[] strArr = {"FromOpenid", "FromTinyid", "ToOpenid", "ToTinyid", "MsgTimestamp", "MsgSeqId", "Msg", "MsgReaded"};
            String str = "";
            Integer valueOf = Integer.valueOf(0);
            Long valueOf2 = Long.valueOf(0);
            __fieldMap__ = MessageMicro.initFieldMap(iArr, strArr, new Object[]{str, valueOf2, str, valueOf2, valueOf, valueOf2, null, valueOf}, MsgInfo.class);
        }
    }

    public static final class UserInfo extends MessageMicro<UserInfo> {
        public static final int HEADURL_FIELD_NUMBER = 3;
        public static final int NICKNAME_FIELD_NUMBER = 4;
        public static final int OPENID_FIELD_NUMBER = 1;
        public static final int REMARK_FIELD_NUMBER = 5;
        public static final int TINYID_FIELD_NUMBER = 2;
        static final FieldMap __fieldMap__;
        public final PBStringField HeadURL;
        public final PBStringField NickName;
        public final PBStringField Openid;
        public final PBStringField Remark;
        public final PBUInt64Field Tinyid = PBField.initUInt64(0);

        public UserInfo() {
            String str = "";
            this.Openid = PBField.initString(str);
            this.HeadURL = PBField.initString(str);
            this.NickName = PBField.initString(str);
            this.Remark = PBField.initString(str);
        }

        static {
            String str = "";
            __fieldMap__ = MessageMicro.initFieldMap(new int[]{10, 16, 26, 34, 42}, new String[]{"Openid", "Tinyid", "HeadURL", "NickName", "Remark"}, new Object[]{str, Long.valueOf(0), str, str, str}, UserInfo.class);
        }
    }

    private msgcomm() {
    }
}
