package com.kantv.ui.photo;

import android.annotation.SuppressLint;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore.Audio;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video;
import android.util.Log;
import master.flame.danmaku.danmaku.parser.IDataSource;

public class CropUtils {
    @SuppressLint({"NewApi"})
    public static String getPath(Context context, Uri uri) {
        Uri uri2 = null;
        if (!(VERSION.SDK_INT >= 19) || !DocumentsContract.isDocumentUri(context, uri)) {
            if ("content".equalsIgnoreCase(uri.getScheme())) {
                return getDataColumn(context, uri, null, null);
            }
            if (IDataSource.SCHEME_FILE_TAG.equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
            String uri3 = uri.toString();
            if (uri3.substring(10, uri3.length()).startsWith("com.sec.android.gallery3d")) {
                StringBuilder sb = new StringBuilder();
                sb.append("It's auto backup pic path:");
                sb.append(uri.toString());
                Log.e("ContentValues", sb.toString());
                return null;
            }
            String[] strArr = {"_data"};
            Cursor query = context.getContentResolver().query(uri, strArr, null, null, null);
            if (query != null) {
                query.moveToFirst();
            }
            String string = query.getString(query.getColumnIndex(strArr[0]));
            query.close();
            return string;
        }
        String str = ":";
        if (isExternalStorageDocument(uri)) {
            String[] split = DocumentsContract.getDocumentId(uri).split(str);
            if ("primary".equalsIgnoreCase(split[0])) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Environment.getExternalStorageDirectory());
                sb2.append("/");
                sb2.append(split[1]);
                return sb2.toString();
            }
        } else if (isDownloadsDocument(uri)) {
            return getDataColumn(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
        } else if (isMediaDocument(uri)) {
            String[] split2 = DocumentsContract.getDocumentId(uri).split(str);
            String str2 = split2[0];
            if ("image".equals(str2)) {
                uri2 = Media.EXTERNAL_CONTENT_URI;
            } else if ("video".equals(str2)) {
                uri2 = Video.Media.EXTERNAL_CONTENT_URI;
            } else if ("audio".equals(str2)) {
                uri2 = Audio.Media.EXTERNAL_CONTENT_URI;
            }
            return getDataColumn(context, uri2, "_id=?", new String[]{split2[1]});
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0035  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String getDataColumn(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) {
        /*
            java.lang.String r0 = "_data"
            java.lang.String[] r3 = new java.lang.String[]{r0}
            r7 = 0
            android.content.ContentResolver r1 = r8.getContentResolver()     // Catch:{ all -> 0x0031 }
            r6 = 0
            r2 = r9
            r4 = r10
            r5 = r11
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6)     // Catch:{ all -> 0x0031 }
            if (r8 == 0) goto L_0x002b
            boolean r9 = r8.moveToFirst()     // Catch:{ all -> 0x0029 }
            if (r9 == 0) goto L_0x002b
            int r9 = r8.getColumnIndexOrThrow(r0)     // Catch:{ all -> 0x0029 }
            java.lang.String r9 = r8.getString(r9)     // Catch:{ all -> 0x0029 }
            if (r8 == 0) goto L_0x0028
            r8.close()
        L_0x0028:
            return r9
        L_0x0029:
            r9 = move-exception
            goto L_0x0033
        L_0x002b:
            if (r8 == 0) goto L_0x0030
            r8.close()
        L_0x0030:
            return r7
        L_0x0031:
            r9 = move-exception
            r8 = r7
        L_0x0033:
            if (r8 == 0) goto L_0x0038
            r8.close()
        L_0x0038:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.photo.CropUtils.getDataColumn(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    private static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    private static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    private static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }
}
