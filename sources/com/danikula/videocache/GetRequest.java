package com.danikula.videocache;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class GetRequest {
    private static final Pattern RANGE_HEADER_PATTERN = Pattern.compile("[R,r]ange:[ ]?bytes=(\\d*)-");
    private static final Pattern URL_PATTERN = Pattern.compile("GET /(.*) HTTP");
    public final boolean partial;
    public final long rangeOffset;
    public final String uri;

    public GetRequest(String str) {
        Preconditions.checkNotNull(str);
        long findRangeOffset = findRangeOffset(str);
        this.rangeOffset = Math.max(0, findRangeOffset);
        this.partial = findRangeOffset >= 0;
        this.uri = findUri(str);
    }

    public static GetRequest read(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (TextUtils.isEmpty(readLine)) {
                return new GetRequest(sb.toString());
            }
            sb.append(readLine);
            sb.append(10);
        }
    }

    private long findRangeOffset(String str) {
        Matcher matcher = RANGE_HEADER_PATTERN.matcher(str);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1;
    }

    private String findUri(String str) {
        Matcher matcher = URL_PATTERN.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid request `");
        sb.append(str);
        sb.append("`: url not found!");
        throw new IllegalArgumentException(sb.toString());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GetRequest{rangeOffset=");
        sb.append(this.rangeOffset);
        sb.append(", partial=");
        sb.append(this.partial);
        sb.append(", uri='");
        sb.append(this.uri);
        sb.append('\'');
        sb.append('}');
        return sb.toString();
    }
}
