package com.bumptech.glide.load.model;

import android.net.Uri;
import master.flame.danmaku.danmaku.parser.IDataSource;

final class AssetUriParser {
    private static final String ASSET_PATH_SEGMENT = "android_asset";
    private static final String ASSET_PREFIX = "file:///android_asset/";
    private static final int ASSET_PREFIX_LENGTH = 22;

    private AssetUriParser() {
    }

    public static boolean isAssetUri(Uri uri) {
        if (!IDataSource.SCHEME_FILE_TAG.equals(uri.getScheme()) || uri.getPathSegments().isEmpty()) {
            return false;
        }
        return ASSET_PATH_SEGMENT.equals(uri.getPathSegments().get(0));
    }

    public static String toAssetPath(Uri uri) {
        return uri.toString().substring(ASSET_PREFIX_LENGTH);
    }
}
