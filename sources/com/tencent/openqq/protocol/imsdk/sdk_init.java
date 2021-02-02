package com.tencent.openqq.protocol.imsdk;

import com.tencent.mobileqq.pb.ByteStringMicro;
import com.tencent.mobileqq.pb.MessageMicro;
import com.tencent.mobileqq.pb.PBBytesField;
import com.tencent.mobileqq.pb.PBField;
import com.tencent.mobileqq.pb.PBUInt32Field;
import com.tencent.mobileqq.pb.PBUInt64Field;
import com.tencent.openqq.protocol.imsdk.common.CmdErrorCode;
import com.tencent.openqq.protocol.imsdk.im_open_common.SdkData;

public final class sdk_init {

    public static final class ReqBody extends MessageMicro<ReqBody> {
        public static final int BYTES_USER_APPID_FIELD_NUMBER = 9;
        public static final int GUID_FIELD_NUMBER = 7;
        public static final int SDKAPPID_FIELD_NUMBER = 1;
        public static final int SDKAPPTOKEN_FIELD_NUMBER = 2;
        public static final int SDKDATA_FIELD_NUMBER = 8;
        public static final int UIDTYPE_FIELD_NUMBER = 3;
        public static final int USERAPPID_FIELD_NUMBER = 4;
        public static final int USERID_FIELD_NUMBER = 5;
        public static final int USERKEY_FIELD_NUMBER = 6;
        static final FieldMap __fieldMap__;
        public final PBBytesField bytes_user_appid = PBField.initBytes(ByteStringMicro.EMPTY);
        public final PBBytesField guid = PBField.initBytes(ByteStringMicro.EMPTY);
        public final PBUInt32Field sdkappid = PBField.initUInt32(0);
        public final PBBytesField sdkapptoken = PBField.initBytes(ByteStringMicro.EMPTY);
        public SdkData sdkdata = new SdkData();
        public final PBBytesField uidtype = PBField.initBytes(ByteStringMicro.EMPTY);
        public final PBUInt32Field userappid = PBField.initUInt32(0);
        public final PBBytesField userid = PBField.initBytes(ByteStringMicro.EMPTY);
        public final PBBytesField userkey = PBField.initBytes(ByteStringMicro.EMPTY);

        static {
            int[] iArr = {8, 18, 26, 32, 42, 50, 58, 66, 74};
            String[] strArr = {"sdkappid", "sdkapptoken", "uidtype", "userappid", "userid", "userkey", "guid", "sdkdata", "bytes_user_appid"};
            Integer valueOf = Integer.valueOf(0);
            __fieldMap__ = MessageMicro.initFieldMap(iArr, strArr, new Object[]{valueOf, ByteStringMicro.EMPTY, ByteStringMicro.EMPTY, valueOf, ByteStringMicro.EMPTY, ByteStringMicro.EMPTY, ByteStringMicro.EMPTY, null, ByteStringMicro.EMPTY}, ReqBody.class);
        }
    }

    public static final class RspBody extends MessageMicro<RspBody> {
        public static final int A2_FIELD_NUMBER = 4;
        public static final int D2KEY_FIELD_NUMBER = 6;
        public static final int D2_FIELD_NUMBER = 5;
        public static final int ENUM_CMD_ERROR_CODE_FIELD_NUMBER = 1;
        public static final int TINYID_FIELD_NUMBER = 3;
        public static final int UIN_FIELD_NUMBER = 7;
        public static final int USERID_FIELD_NUMBER = 2;
        static final FieldMap __fieldMap__;
        public final PBBytesField a2 = PBField.initBytes(ByteStringMicro.EMPTY);
        public final PBBytesField d2 = PBField.initBytes(ByteStringMicro.EMPTY);
        public final PBBytesField d2key = PBField.initBytes(ByteStringMicro.EMPTY);
        public CmdErrorCode enum_cmd_error_code = new CmdErrorCode();
        public final PBUInt64Field tinyid = PBField.initUInt64(0);
        public final PBUInt64Field uin = PBField.initUInt64(0);
        public final PBBytesField userid = PBField.initBytes(ByteStringMicro.EMPTY);

        static {
            int[] iArr = {10, 18, 24, 34, 42, 50, 56};
            String[] strArr = {"enum_cmd_error_code", "userid", "tinyid", "a2", "d2", "d2key", "uin"};
            Long valueOf = Long.valueOf(0);
            __fieldMap__ = MessageMicro.initFieldMap(iArr, strArr, new Object[]{null, ByteStringMicro.EMPTY, valueOf, ByteStringMicro.EMPTY, ByteStringMicro.EMPTY, ByteStringMicro.EMPTY, valueOf}, RspBody.class);
        }
    }

    private sdk_init() {
    }
}
