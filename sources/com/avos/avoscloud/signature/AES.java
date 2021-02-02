package com.avos.avoscloud.signature;

import android.util.Log;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

public class AES {
    private static final String CIPHERMODEPADDING = "AES/CBC/PKCS7Padding";
    private static final int HASH_ITERATIONS = 10000;
    private static final String KEY_GENERATION_ALG = "PBKDF2WithHmacSHA1";
    private static final int KEY_LENGTH = 256;
    private IvParameterSpec IV;
    private char[] humanPassphrase = "QxciDjdHjuAIf8VCsqhmGK3OZV7pBQTZ".toCharArray();
    private byte[] iv = {10, 1, 11, 5, 4, 15, 7, 9, 23, 3, 1, 6, 8, 12, 13, 91};
    private SecretKeyFactory keyfactory = null;
    private PBEKeySpec myKeyspec = new PBEKeySpec(this.humanPassphrase, this.salt, 10000, 256);
    private byte[] salt = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};
    private SecretKey sk = null;
    private SecretKeySpec skforAES = null;

    public AES() {
        String str = "AESdemo";
        try {
            this.keyfactory = SecretKeyFactory.getInstance(KEY_GENERATION_ALG);
            this.sk = this.keyfactory.generateSecret(this.myKeyspec);
        } catch (NoSuchAlgorithmException unused) {
            Log.e(str, "no key factory support for PBEWITHSHAANDTWOFISH-CBC");
        } catch (InvalidKeySpecException unused2) {
            Log.e(str, "invalid key spec for PBEWITHSHAANDTWOFISH-CBC");
        }
        this.skforAES = new SecretKeySpec(this.sk.getEncoded(), "AES");
        this.IV = new IvParameterSpec(this.iv);
    }

    public String encrypt(byte[] bArr) {
        return Base64Encoder.encode(encrypt(CIPHERMODEPADDING, this.skforAES, this.IV, bArr));
    }

    public String decrypt(String str) {
        byte[] decodeToBytes = Base64Decoder.decodeToBytes(str);
        return new String(decrypt(CIPHERMODEPADDING, this.skforAES, this.IV, decodeToBytes));
    }

    private byte[] addPadding(byte[] bArr) {
        int length = 16 - (bArr.length % 16);
        if (length == 0) {
            length = 16;
        }
        byte[] bArr2 = new byte[(bArr.length + length)];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[i];
        }
        for (int length2 = bArr.length; length2 < bArr.length + length; length2++) {
            bArr2[length2] = (byte) length;
        }
        return bArr2;
    }

    private byte[] dropPadding(byte[] bArr) {
        byte[] bArr2 = new byte[(bArr.length - bArr[bArr.length - 1])];
        for (int i = 0; i < bArr2.length; i++) {
            bArr2[i] = bArr[i];
            bArr[i] = 0;
        }
        return bArr2;
    }

    private byte[] encrypt(String str, SecretKey secretKey, IvParameterSpec ivParameterSpec, byte[] bArr) {
        String str2 = "AESdemo";
        try {
            Cipher instance = Cipher.getInstance(str);
            instance.init(1, secretKey, ivParameterSpec);
            return instance.doFinal(bArr);
        } catch (NoSuchAlgorithmException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("no cipher getinstance support for ");
            sb.append(str);
            Log.e(str2, sb.toString());
            return null;
        } catch (NoSuchPaddingException unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("no cipher getinstance support for padding ");
            sb2.append(str);
            Log.e(str2, sb2.toString());
            return null;
        } catch (InvalidKeyException unused3) {
            Log.e(str2, "invalid key exception");
            return null;
        } catch (InvalidAlgorithmParameterException unused4) {
            Log.e(str2, "invalid algorithm parameter exception");
            return null;
        } catch (IllegalBlockSizeException unused5) {
            Log.e(str2, "illegal block size exception");
            return null;
        } catch (BadPaddingException unused6) {
            Log.e(str2, "bad padding exception");
            return null;
        }
    }

    private byte[] decrypt(String str, SecretKey secretKey, IvParameterSpec ivParameterSpec, byte[] bArr) {
        String str2 = "AESdemo";
        try {
            Cipher instance = Cipher.getInstance(str);
            instance.init(2, secretKey, ivParameterSpec);
            return instance.doFinal(bArr);
        } catch (NoSuchAlgorithmException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("no cipher getinstance support for ");
            sb.append(str);
            Log.e(str2, sb.toString());
            return null;
        } catch (NoSuchPaddingException unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("no cipher getinstance support for padding ");
            sb2.append(str);
            Log.e(str2, sb2.toString());
            return null;
        } catch (InvalidKeyException unused3) {
            Log.e(str2, "invalid key exception");
            return null;
        } catch (InvalidAlgorithmParameterException unused4) {
            Log.e(str2, "invalid algorithm parameter exception");
            return null;
        } catch (IllegalBlockSizeException unused5) {
            Log.e(str2, "illegal block size exception");
            return null;
        } catch (BadPaddingException e) {
            Log.e(str2, "bad padding exception");
            e.printStackTrace();
            return null;
        }
    }
}
