package okhttp3.logging;

import okhttp3.internal.platform.Platform;
import okhttp3.logging.HttpLoggingInterceptor.Logger;

/* renamed from: okhttp3.logging.-$$Lambda$HttpLoggingInterceptor$Logger$smmbr_QNvGsDM4WCreZZz8uMHLQ reason: invalid class name */
/* compiled from: lambda */
public final /* synthetic */ class $$Lambda$HttpLoggingInterceptor$Logger$smmbr_QNvGsDM4WCreZZz8uMHLQ implements Logger {
    public static final /* synthetic */ $$Lambda$HttpLoggingInterceptor$Logger$smmbr_QNvGsDM4WCreZZz8uMHLQ INSTANCE = new $$Lambda$HttpLoggingInterceptor$Logger$smmbr_QNvGsDM4WCreZZz8uMHLQ();

    private /* synthetic */ $$Lambda$HttpLoggingInterceptor$Logger$smmbr_QNvGsDM4WCreZZz8uMHLQ() {
    }

    public final void log(String str) {
        Platform.get().log(4, str, null);
    }
}
