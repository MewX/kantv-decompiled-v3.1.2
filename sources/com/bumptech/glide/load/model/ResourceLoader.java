package com.bumptech.glide.load.model;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.load.data.DataFetcher;

public class ResourceLoader<T> implements ModelLoader<Integer, T> {
    private static final String TAG = "ResourceLoader";
    private final Resources resources;
    private final ModelLoader<Uri, T> uriLoader;

    public ResourceLoader(Context context, ModelLoader<Uri, T> modelLoader) {
        this(context.getResources(), modelLoader);
    }

    public ResourceLoader(Resources resources2, ModelLoader<Uri, T> modelLoader) {
        this.resources = resources2;
        this.uriLoader = modelLoader;
    }

    public DataFetcher<T> getResourceFetcher(Integer num, int i, int i2) {
        Object obj;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("android.resource://");
            sb.append(this.resources.getResourcePackageName(num.intValue()));
            sb.append('/');
            sb.append(this.resources.getResourceTypeName(num.intValue()));
            sb.append('/');
            sb.append(this.resources.getResourceEntryName(num.intValue()));
            obj = Uri.parse(sb.toString());
        } catch (NotFoundException e) {
            String str = TAG;
            if (Log.isLoggable(str, 5)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Received invalid resource id: ");
                sb2.append(num);
                Log.w(str, sb2.toString(), e);
            }
            obj = null;
        }
        if (obj != null) {
            return this.uriLoader.getResourceFetcher(obj, i, i2);
        }
        return null;
    }
}
