package org.fourthline.cling.model;

import java.util.Date;

public class ExpirationDetails {
    public static final int UNLIMITED_AGE = 0;
    private static String simpleName = "ExpirationDetails";
    private long lastRefreshTimestampSeconds = getCurrentTimestampSeconds();
    private int maxAgeSeconds = 0;

    public ExpirationDetails() {
    }

    public ExpirationDetails(int i) {
        this.maxAgeSeconds = i;
    }

    public int getMaxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public long getLastRefreshTimestampSeconds() {
        return this.lastRefreshTimestampSeconds;
    }

    public void setLastRefreshTimestampSeconds(long j) {
        this.lastRefreshTimestampSeconds = j;
    }

    public void stampLastRefresh() {
        setLastRefreshTimestampSeconds(getCurrentTimestampSeconds());
    }

    public boolean hasExpired() {
        return hasExpired(false);
    }

    public boolean hasExpired(boolean z) {
        int i = this.maxAgeSeconds;
        if (i != 0) {
            if (this.lastRefreshTimestampSeconds + ((long) (i / (z ? 2 : 1))) < getCurrentTimestampSeconds()) {
                return true;
            }
        }
        return false;
    }

    public long getSecondsUntilExpiration() {
        int i = this.maxAgeSeconds;
        if (i == 0) {
            return 2147483647L;
        }
        return (this.lastRefreshTimestampSeconds + ((long) i)) - getCurrentTimestampSeconds();
    }

    /* access modifiers changed from: protected */
    public long getCurrentTimestampSeconds() {
        return new Date().getTime() / 1000;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(simpleName);
        sb.append(")");
        sb.append(" MAX AGE: ");
        sb.append(this.maxAgeSeconds);
        return sb.toString();
    }
}
