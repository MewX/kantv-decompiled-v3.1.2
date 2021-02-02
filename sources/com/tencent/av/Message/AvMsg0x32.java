package com.tencent.av.Message;

import com.tencent.av.Message.AvMsg.Type;
import com.tencent.imsdk.TIMCallBack;

public class AvMsg0x32 extends AvMsg {
    private String identifer = "";

    /* renamed from: com.tencent.av.Message.AvMsg0x32$1 reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$tencent$av$Message$AvMsg$Type = new int[Type.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|1|2|3|4|5|6|7|8|10) */
        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        static {
            /*
                com.tencent.av.Message.AvMsg$Type[] r0 = com.tencent.av.Message.AvMsg.Type.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$tencent$av$Message$AvMsg$Type = r0
                int[] r0 = $SwitchMap$com$tencent$av$Message$AvMsg$Type     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.tencent.av.Message.AvMsg$Type r1 = com.tencent.av.Message.AvMsg.Type.MutiAvInvitation     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = $SwitchMap$com$tencent$av$Message$AvMsg$Type     // Catch:{ NoSuchFieldError -> 0x001f }
                com.tencent.av.Message.AvMsg$Type r1 = com.tencent.av.Message.AvMsg.Type.MutiAvCancel     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = $SwitchMap$com$tencent$av$Message$AvMsg$Type     // Catch:{ NoSuchFieldError -> 0x002a }
                com.tencent.av.Message.AvMsg$Type r1 = com.tencent.av.Message.AvMsg.Type.MutiAvAccept     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = $SwitchMap$com$tencent$av$Message$AvMsg$Type     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.tencent.av.Message.AvMsg$Type r1 = com.tencent.av.Message.AvMsg.Type.MutiAvReject     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.av.Message.AvMsg0x32.AnonymousClass1.<clinit>():void");
        }
    }

    public void receive(byte[] bArr) {
    }

    public void response(TIMCallBack tIMCallBack) {
    }

    public void send(TIMCallBack tIMCallBack) {
    }

    public AvMsg0x32(String str) {
        this.identifer = str;
    }

    private void set0x32MsgType(int i) {
        if (i == 0) {
            setMsgType(Type.MutiAvInvitation);
        } else if (i == 1) {
            setMsgType(Type.MutiAvCancel);
        } else if (i == 2) {
            setMsgType(Type.MutiAvAccept);
        } else if (i == 3) {
            setMsgType(Type.MutiAvReject);
        }
    }

    private int get0x32MsgType() {
        int i = AnonymousClass1.$SwitchMap$com$tencent$av$Message$AvMsg$Type[getMsgType().ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i != 3) {
            return i != 4 ? 0 : 3;
        }
        return 2;
    }
}
