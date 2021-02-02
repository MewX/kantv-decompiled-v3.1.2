package com.tencent.av;

import com.tencent.imsdk.log.QLog;
import java.nio.ByteBuffer;

public class NetworkUtil {
    private static final String tag = "av.NetworkUtil";

    public static byte[] formReq(long j, int i, int i2, String str, byte[] bArr) {
        short nextInt = (short) TIMAvManager.getInstance().random.nextInt();
        short s = (short) i;
        byte[] bytes = "".getBytes();
        if (str != null) {
            bytes = str.getBytes();
        }
        byte length = (byte) bytes.length;
        ByteBuffer allocate = ByteBuffer.allocate(10 + bytes.length + 11 + 4 + bArr.length);
        allocate.putShort(0).putShort(0).putShort(nextInt).putInt(0);
        allocate.putShort(s).putLong(j).put(length).put(bytes).putInt(i2);
        allocate.put(bArr);
        allocate.flip();
        return allocate.array();
    }

    public static byte[] formReq(long j, int i, int i2, String str, byte[] bArr, byte[] bArr2) {
        short nextInt = (short) TIMAvManager.getInstance().random.nextInt();
        short s = (short) i;
        byte[] bytes = "".getBytes();
        if (str != null) {
            bytes = str.getBytes();
        }
        byte length = (byte) bytes.length;
        int length2 = bytes.length + 11 + 4;
        int length3 = bArr.length;
        int length4 = bArr2.length;
        ByteBuffer allocate = ByteBuffer.allocate(10 + length2 + 1 + 4 + 4 + length3 + length4 + 1);
        allocate.putShort(0).putShort(0).putShort(nextInt).putInt(0);
        allocate.putShort(s).putLong(j).put(length).put(bytes).putInt(i2);
        allocate.put(40).putInt(length3).putInt(length4).put(bArr).put(bArr2).put(41);
        allocate.flip();
        return allocate.array();
    }

    public static byte[] parseRsp(byte[] bArr) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.getShort();
        wrap.getShort();
        wrap.getShort();
        wrap.getInt();
        StringBuilder sb = new StringBuilder();
        String str = "position: ";
        sb.append(str);
        sb.append(wrap.position());
        String str2 = "|remaining: ";
        sb.append(str2);
        sb.append(wrap.remaining());
        String sb2 = sb.toString();
        String str3 = tag;
        QLog.d(str3, sb2);
        wrap.getShort();
        wrap.getInt();
        short s = wrap.getShort();
        if (s > wrap.remaining()) {
            return null;
        }
        wrap.get(new byte[s], 0, s);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str);
        sb3.append(wrap.position());
        sb3.append(str2);
        sb3.append(wrap.remaining());
        QLog.d(str3, sb3.toString());
        wrap.get();
        int i = wrap.getInt();
        int i2 = wrap.getInt();
        StringBuilder sb4 = new StringBuilder();
        sb4.append("headlen:");
        sb4.append(i);
        sb4.append("|bodylen:");
        sb4.append(i2);
        QLog.d(str3, sb4.toString());
        if (i > wrap.remaining()) {
            return null;
        }
        wrap.get(new byte[i], 0, i);
        if (i2 > wrap.remaining()) {
            return null;
        }
        byte[] bArr2 = new byte[i2];
        wrap.get(bArr2, 0, i2);
        return bArr2;
    }
}
