package io.flutter.view;

import android.content.Context;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import java.io.IOException;

class ResourcePaths {
    public static final String TEMPORARY_RESOURCE_PREFIX = ".org.chromium.Chromium.";

    ResourcePaths() {
    }

    public static File createTempFile(Context context, String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
        sb.append(str);
        return File.createTempFile(TEMPORARY_RESOURCE_PREFIX, sb.toString(), context.getCacheDir());
    }
}
