package org.seamless.util.io;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

public class MD5Crypt {
    private static final String SALTCHARS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
    private static final String itoa64 = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

    private static final int bytes2u(byte b) {
        return b & Draft_75.END_OF_FRAME;
    }

    private static final String to64(long j, int i) {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            i--;
            if (i < 0) {
                return stringBuffer.toString();
            }
            stringBuffer.append(itoa64.charAt((int) (63 & j)));
            j >>>= 6;
        }
    }

    private static final void clearbits(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = 0;
        }
    }

    public static final String crypt(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        Random random = new Random();
        while (stringBuffer.length() < 8) {
            int nextFloat = (int) (random.nextFloat() * ((float) 62));
            stringBuffer.append(SALTCHARS.substring(nextFloat, nextFloat + 1));
        }
        return crypt(str, stringBuffer.toString(), "$1$");
    }

    public static final String crypt(String str, String str2) {
        return crypt(str, str2, "$1$");
    }

    public static final String crypt(String str, String str2, String str3) {
        String str4 = "md5";
        try {
            MessageDigest instance = MessageDigest.getInstance(str4);
            MessageDigest instance2 = MessageDigest.getInstance(str4);
            if (str2.startsWith(str3)) {
                str2 = str2.substring(str3.length());
            }
            if (str2.indexOf(36) != -1) {
                str2 = str2.substring(0, str2.indexOf(36));
            }
            if (str2.length() > 8) {
                str2 = str2.substring(0, 8);
            }
            instance.update(str.getBytes());
            instance.update(str3.getBytes());
            instance.update(str2.getBytes());
            instance2.update(str.getBytes());
            instance2.update(str2.getBytes());
            instance2.update(str.getBytes());
            byte[] digest = instance2.digest();
            int length = str.length();
            while (true) {
                int i = 16;
                if (length <= 0) {
                    break;
                }
                if (length <= 16) {
                    i = length;
                }
                instance.update(digest, 0, i);
                length -= 16;
            }
            clearbits(digest);
            for (int length2 = str.length(); length2 != 0; length2 >>>= 1) {
                if ((length2 & 1) != 0) {
                    instance.update(digest, 0, 1);
                } else {
                    instance.update(str.getBytes(), 0, 1);
                }
            }
            byte[] digest2 = instance.digest();
            int i2 = 0;
            while (i2 < 1000) {
                try {
                    MessageDigest instance3 = MessageDigest.getInstance(str4);
                    int i3 = i2 & 1;
                    if (i3 != 0) {
                        instance3.update(str.getBytes());
                    } else {
                        instance3.update(digest2, 0, 16);
                    }
                    if (i2 % 3 != 0) {
                        instance3.update(str2.getBytes());
                    }
                    if (i2 % 7 != 0) {
                        instance3.update(str.getBytes());
                    }
                    if (i3 != 0) {
                        instance3.update(digest2, 0, 16);
                    } else {
                        instance3.update(str.getBytes());
                    }
                    digest2 = instance3.digest();
                    i2++;
                } catch (NoSuchAlgorithmException unused) {
                    return null;
                }
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str3);
            stringBuffer.append(str2);
            stringBuffer.append("$");
            stringBuffer.append(to64((long) ((bytes2u(digest2[0]) << 16) | (bytes2u(digest2[6]) << 8) | bytes2u(digest2[12])), 4));
            stringBuffer.append(to64((long) ((bytes2u(digest2[1]) << 16) | (bytes2u(digest2[7]) << 8) | bytes2u(digest2[13])), 4));
            stringBuffer.append(to64((long) ((bytes2u(digest2[2]) << 16) | (bytes2u(digest2[8]) << 8) | bytes2u(digest2[14])), 4));
            stringBuffer.append(to64((long) ((bytes2u(digest2[3]) << 16) | (bytes2u(digest2[9]) << 8) | bytes2u(digest2[15])), 4));
            stringBuffer.append(to64((long) ((bytes2u(digest2[4]) << 16) | (bytes2u(digest2[10]) << 8) | bytes2u(digest2[5])), 4));
            stringBuffer.append(to64((long) bytes2u(digest2[11]), 2));
            clearbits(digest2);
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            System.err.println(e);
            return null;
        }
    }

    public static boolean isEqual(String str, String str2) {
        return isEqual(str.toCharArray(), str2);
    }

    public static boolean isEqual(char[] cArr, String str) {
        boolean z;
        String[] split = str.split("\\$");
        boolean z2 = false;
        if (split.length != 4) {
            return false;
        }
        char[] charArray = str.toCharArray();
        String str2 = new String(cArr);
        String str3 = split[2];
        StringBuilder sb = new StringBuilder();
        String str4 = "$";
        sb.append(str4);
        sb.append(split[1]);
        sb.append(str4);
        char[] charArray2 = crypt(str2, str3, sb.toString()).toCharArray();
        if (charArray == null || charArray2 == null) {
            if (charArray == charArray2) {
                z2 = true;
            }
            return z2;
        }
        if (charArray.length == charArray2.length) {
            z = true;
            for (int i = 0; i < charArray.length && z; i++) {
                z = charArray[i] == charArray2[i];
            }
        } else {
            z = false;
        }
        return z;
    }
}
