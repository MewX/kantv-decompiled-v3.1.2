package tv.danmaku.ijk.media.exo.demo;

import android.annotation.TargetApi;
import android.text.TextUtils;
import com.google.android.exoplayer.drm.ExoMediaDrm.KeyRequest;
import com.google.android.exoplayer.drm.ExoMediaDrm.ProvisionRequest;
import com.google.android.exoplayer.drm.MediaDrmCallback;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.eclipse.jetty.http.MimeTypes;

@TargetApi(18)
public class SmoothStreamingTestMediaDrmCallback implements MediaDrmCallback {
    private static final Map<String, String> KEY_REQUEST_PROPERTIES;
    private static final String PLAYREADY_TEST_DEFAULT_URI = "http://playready.directtaps.net/pr/svc/rightsmanager.asmx";
    private static final Map<String, String> PROVISIONING_REQUEST_PROPERTIES;

    static {
        String str = "Content-Type";
        PROVISIONING_REQUEST_PROPERTIES = Collections.singletonMap(str, "application/octet-stream");
        HashMap hashMap = new HashMap();
        hashMap.put(str, MimeTypes.TEXT_XML);
        hashMap.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        KEY_REQUEST_PROPERTIES = hashMap;
    }

    public byte[] executeProvisionRequest(UUID uuid, ProvisionRequest provisionRequest) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append(provisionRequest.getDefaultUrl());
        sb.append("&signedRequest=");
        sb.append(new String(provisionRequest.getData()));
        return Util.executePost(sb.toString(), null, PROVISIONING_REQUEST_PROPERTIES);
    }

    public byte[] executeKeyRequest(UUID uuid, KeyRequest keyRequest) throws Exception {
        String defaultUrl = keyRequest.getDefaultUrl();
        if (TextUtils.isEmpty(defaultUrl)) {
            defaultUrl = PLAYREADY_TEST_DEFAULT_URI;
        }
        return Util.executePost(defaultUrl, keyRequest.getData(), KEY_REQUEST_PROPERTIES);
    }
}
