package com.koushikdutta.async.dns;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.http.Multimap;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import org.msgpack.core.MessagePack.Code;

public class DnsResponse {
    public ArrayList<InetAddress> addresses = new ArrayList<>();
    public ArrayList<String> names = new ArrayList<>();
    public InetSocketAddress source;
    public Multimap txt = new Multimap();

    private static String parseName(ByteBufferList byteBufferList, ByteBuffer byteBuffer) {
        byteBufferList.order(ByteOrder.BIG_ENDIAN);
        String str = "";
        while (true) {
            byte b = byteBufferList.get() & Draft_75.END_OF_FRAME;
            if (b == 0) {
                return str;
            }
            String str2 = ".";
            if ((b & Code.NIL) == 192) {
                int i = (byteBufferList.get() & Draft_75.END_OF_FRAME) | ((b & 63) << 8);
                if (str.length() > 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(str2);
                    str = sb.toString();
                }
                ByteBufferList byteBufferList2 = new ByteBufferList();
                ByteBuffer duplicate = byteBuffer.duplicate();
                duplicate.get(new byte[i]);
                byteBufferList2.add(duplicate);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(parseName(byteBufferList2, byteBuffer));
                return sb2.toString();
            }
            byte[] bArr = new byte[b];
            byteBufferList.get(bArr);
            if (str.length() > 0) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str);
                sb3.append(str2);
                str = sb3.toString();
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append(str);
            sb4.append(new String(bArr));
            str = sb4.toString();
        }
    }

    public static DnsResponse parse(ByteBufferList byteBufferList) {
        ByteBuffer all = byteBufferList.getAll();
        byteBufferList.add(all.duplicate());
        byteBufferList.order(ByteOrder.BIG_ENDIAN);
        byteBufferList.getShort();
        byteBufferList.getShort();
        short s = byteBufferList.getShort();
        short s2 = byteBufferList.getShort();
        short s3 = byteBufferList.getShort();
        short s4 = byteBufferList.getShort();
        for (int i = 0; i < s; i++) {
            parseName(byteBufferList, all);
            byteBufferList.getShort();
            byteBufferList.getShort();
        }
        DnsResponse dnsResponse = new DnsResponse();
        for (int i2 = 0; i2 < s2; i2++) {
            parseName(byteBufferList, all);
            short s5 = byteBufferList.getShort();
            byteBufferList.getShort();
            byteBufferList.getInt();
            short s6 = byteBufferList.getShort();
            if (s5 == 1) {
                try {
                    byte[] bArr = new byte[s6];
                    byteBufferList.get(bArr);
                    dnsResponse.addresses.add(InetAddress.getByAddress(bArr));
                } catch (Exception unused) {
                }
            } else if (s5 == 12) {
                dnsResponse.names.add(parseName(byteBufferList, all));
            } else if (s5 == 16) {
                ByteBufferList byteBufferList2 = new ByteBufferList();
                byteBufferList.get(byteBufferList2, s6);
                dnsResponse.parseTxt(byteBufferList2);
            } else {
                byteBufferList.get(new byte[s6]);
            }
        }
        for (int i3 = 0; i3 < s3; i3++) {
            parseName(byteBufferList, all);
            byteBufferList.getShort();
            byteBufferList.getShort();
            byteBufferList.getInt();
            try {
                byteBufferList.get(new byte[byteBufferList.getShort()]);
            } catch (Exception unused2) {
            }
        }
        for (int i4 = 0; i4 < s4; i4++) {
            parseName(byteBufferList, all);
            short s7 = byteBufferList.getShort();
            byteBufferList.getShort();
            byteBufferList.getInt();
            short s8 = byteBufferList.getShort();
            if (s7 == 16) {
                try {
                    ByteBufferList byteBufferList3 = new ByteBufferList();
                    byteBufferList.get(byteBufferList3, s8);
                    dnsResponse.parseTxt(byteBufferList3);
                } catch (Exception unused3) {
                }
            } else {
                byteBufferList.get(new byte[s8]);
            }
        }
        return dnsResponse;
    }

    /* access modifiers changed from: 0000 */
    public void parseTxt(ByteBufferList byteBufferList) {
        while (byteBufferList.hasRemaining()) {
            byte[] bArr = new byte[(byteBufferList.get() & Draft_75.END_OF_FRAME)];
            byteBufferList.get(bArr);
            String[] split = new String(bArr).split("=");
            this.txt.add(split[0], split[1]);
        }
    }

    public String toString() {
        String str;
        Iterator it = this.addresses.iterator();
        String str2 = "addresses:\n";
        while (true) {
            str = "\n";
            if (!it.hasNext()) {
                break;
            }
            InetAddress inetAddress = (InetAddress) it.next();
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(inetAddress.toString());
            sb.append(str);
            str2 = sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append("names:\n");
        String sb3 = sb2.toString();
        Iterator it2 = this.names.iterator();
        while (it2.hasNext()) {
            String str3 = (String) it2.next();
            StringBuilder sb4 = new StringBuilder();
            sb4.append(sb3);
            sb4.append(str3);
            sb4.append(str);
            sb3 = sb4.toString();
        }
        return sb3;
    }
}
