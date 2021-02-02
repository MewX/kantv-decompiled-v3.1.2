package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.Api.ClientKey;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;

public final class zzdf {
    public static final ClientKey<zzcn> zzwy = new ClientKey<>();
    public static final ClientKey<zzea> zzwz = new ClientKey<>();
    public static final ClientKey<zzdz> zzxa = new ClientKey<>();
    private static final ClientKey<Object> zzxb = new ClientKey<>();
    private static final ClientKey<Object> zzxc = new ClientKey<>();
    private static final Charset zzxd;
    private static final String zzxe = zzcu.zzp("com.google.cast.multizone");

    static {
        Charset charset;
        try {
            charset = Charset.forName("UTF-8");
        } catch (IllegalCharsetNameException | UnsupportedCharsetException unused) {
            charset = null;
        }
        zzxd = charset;
    }
}
