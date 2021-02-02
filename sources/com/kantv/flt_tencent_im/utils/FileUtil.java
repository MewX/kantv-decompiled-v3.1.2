package com.kantv.flt_tencent_im.utils;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kantv.flt_tencent_im.TUIKit;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import master.flame.danmaku.danmaku.parser.IDataSource;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class FileUtil {
    public static final String DOCUMENTS_DIR = "documents";
    public static final int SIZETYPE_B = 1;
    public static final int SIZETYPE_GB = 4;
    public static final int SIZETYPE_KB = 2;
    public static final int SIZETYPE_MB = 3;

    public static void initPath() {
        File file = new File(TUIKitConstants.MEDIA_DIR);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(TUIKitConstants.RECORD_DIR);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        File file3 = new File(TUIKitConstants.RECORD_DOWNLOAD_DIR);
        if (!file3.exists()) {
            file3.mkdirs();
        }
        File file4 = new File(TUIKitConstants.VIDEO_DOWNLOAD_DIR);
        if (!file4.exists()) {
            file4.mkdirs();
        }
        File file5 = new File(TUIKitConstants.IMAGE_DOWNLOAD_DIR);
        if (!file5.exists()) {
            file5.mkdirs();
        }
        File file6 = new File(TUIKitConstants.FILE_DOWNLOAD_DIR);
        if (!file6.exists()) {
            file6.mkdirs();
        }
        File file7 = new File(TUIKitConstants.CRASH_LOG_DIR);
        if (!file7.exists()) {
            file7.mkdirs();
        }
    }

    public static String saveBitmap(String str, Bitmap bitmap) {
        StringBuilder sb = new StringBuilder();
        sb.append(TUIKitConstants.MEDIA_DIR);
        sb.append(File.separator);
        sb.append("picture_");
        sb.append(new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date()));
        sb.append(".jpg");
        String sb2 = sb.toString();
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(sb2));
            bitmap.compress(CompressFormat.JPEG, 100, bufferedOutputStream);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            return sb2;
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean deleteFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.delete();
        }
        return false;
    }

    public static boolean isExternalStorageWritable() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static String getPathFromUri(Uri uri) {
        try {
            if (VERSION.SDK_INT >= 19) {
                return getPath(TUIKit.getAppContext(), uri);
            }
            return getRealFilePath(uri);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getRealFilePath(Uri uri) {
        String str = null;
        if (uri == null) {
            return null;
        }
        String scheme = uri.getScheme();
        if (scheme == null) {
            str = uri.getPath();
        } else if (IDataSource.SCHEME_FILE_TAG.equals(scheme)) {
            str = uri.getPath();
        } else if ("content".equals(scheme)) {
            String str2 = "_data";
            Cursor query = TUIKit.getAppContext().getContentResolver().query(uri, new String[]{str2}, null, null, null);
            if (query != null) {
                if (query.moveToFirst()) {
                    int columnIndex = query.getColumnIndex(str2);
                    if (columnIndex > -1) {
                        str = query.getString(columnIndex);
                    }
                }
                query.close();
            }
        }
        return str;
    }

    public static Uri getUriFromPath(String str) {
        try {
            if (VERSION.SDK_INT < 24) {
                return Uri.fromFile(new File(str));
            }
            Context appContext = TUIKit.getAppContext();
            StringBuilder sb = new StringBuilder();
            sb.append(TUIKit.getAppContext().getApplicationInfo().packageName);
            sb.append(".uikit.fileprovider");
            return TUIKitFileProvider.getUriForFile(appContext, sb.toString(), new File(str));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean checkAudioExist(String str) {
        File file = new File(TUIKitConstants.RECORD_DOWNLOAD_DIR);
        if (!file.exists()) {
            return false;
        }
        String[] list = file.list();
        for (String equals : list) {
            if (equals.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: type inference failed for: r3v1 */
    /* JADX WARNING: type inference failed for: r3v2, types: [android.net.Uri] */
    /* JADX WARNING: type inference failed for: r3v3, types: [android.net.Uri] */
    /* JADX WARNING: type inference failed for: r3v4, types: [android.net.Uri] */
    /* JADX WARNING: type inference failed for: r3v5, types: [android.net.Uri] */
    /* JADX WARNING: type inference failed for: r3v6, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r3v7, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r3v8 */
    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: type inference failed for: r3v10 */
    /* JADX WARNING: type inference failed for: r3v11 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r3v1
      assigns: [?[int, float, boolean, short, byte, char, OBJECT, ARRAY], java.lang.String, android.net.Uri]
      uses: [android.net.Uri, java.lang.String]
      mth insns count: 101
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 5 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String getPath(android.content.Context r8, android.net.Uri r9) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 1
            r2 = 0
            r3 = 19
            if (r0 < r3) goto L_0x000a
            r0 = 1
            goto L_0x000b
        L_0x000a:
            r0 = 0
        L_0x000b:
            r3 = 0
            if (r0 == 0) goto L_0x00e2
            boolean r0 = android.provider.DocumentsContract.isDocumentUri(r8, r9)
            if (r0 == 0) goto L_0x00e2
            boolean r0 = isExternalStorageDocument(r9)
            java.lang.String r4 = ":"
            if (r0 == 0) goto L_0x0049
            java.lang.String r8 = android.provider.DocumentsContract.getDocumentId(r9)
            java.lang.String[] r8 = r8.split(r4)
            r9 = r8[r2]
            java.lang.String r0 = "primary"
            boolean r9 = r0.equalsIgnoreCase(r9)
            if (r9 == 0) goto L_0x0104
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.io.File r0 = android.os.Environment.getExternalStorageDirectory()
            r9.append(r0)
            java.lang.String r0 = "/"
            r9.append(r0)
            r8 = r8[r1]
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            return r8
        L_0x0049:
            boolean r0 = isDownloadsDocument(r9)
            if (r0 == 0) goto L_0x00a5
            java.lang.String r0 = android.provider.DocumentsContract.getDocumentId(r9)
            java.lang.String r1 = "raw:"
            boolean r4 = r0.startsWith(r1)
            if (r4 == 0) goto L_0x0062
            java.lang.String r8 = ""
            java.lang.String r8 = r0.replaceFirst(r1, r8)
            return r8
        L_0x0062:
            java.lang.String r1 = "content://downloads/public_downloads"
            java.lang.String r4 = "content://downloads/my_downloads"
            java.lang.String r5 = "content://downloads/all_downloads"
            java.lang.String[] r1 = new java.lang.String[]{r1, r4, r5}
            int r4 = r1.length
        L_0x006d:
            if (r2 >= r4) goto L_0x008f
            r5 = r1[r2]
            android.net.Uri r5 = android.net.Uri.parse(r5)
            java.lang.Long r6 = java.lang.Long.valueOf(r0)
            long r6 = r6.longValue()
            android.net.Uri r5 = android.content.ContentUris.withAppendedId(r5, r6)
            java.lang.String r5 = getDataColumn(r8, r5, r3, r3)     // Catch:{ Exception -> 0x0088 }
            if (r5 == 0) goto L_0x008c
            return r5
        L_0x0088:
            r5 = move-exception
            r5.printStackTrace()
        L_0x008c:
            int r2 = r2 + 1
            goto L_0x006d
        L_0x008f:
            java.lang.String r0 = getFileName(r8, r9)
            java.io.File r1 = getDocumentCacheDir(r8)
            java.io.File r0 = generateFileName(r0, r1)
            if (r0 == 0) goto L_0x00a4
            java.lang.String r3 = r0.getAbsolutePath()
            saveFileFromUri(r8, r9, r3)
        L_0x00a4:
            return r3
        L_0x00a5:
            boolean r0 = isMediaDocument(r9)
            if (r0 == 0) goto L_0x0104
            java.lang.String r9 = android.provider.DocumentsContract.getDocumentId(r9)
            java.lang.String[] r9 = r9.split(r4)
            r0 = r9[r2]
            java.lang.String r4 = "image"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L_0x00c0
            android.net.Uri r3 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI
            goto L_0x00d5
        L_0x00c0:
            java.lang.String r4 = "video"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L_0x00cb
            android.net.Uri r3 = android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI
            goto L_0x00d5
        L_0x00cb:
            java.lang.String r4 = "audio"
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto L_0x00d5
            android.net.Uri r3 = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI
        L_0x00d5:
            java.lang.String[] r0 = new java.lang.String[r1]
            r9 = r9[r1]
            r0[r2] = r9
            java.lang.String r9 = "_id=?"
            java.lang.String r8 = getDataColumn(r8, r3, r9, r0)
            return r8
        L_0x00e2:
            java.lang.String r0 = r9.getScheme()
            java.lang.String r1 = "content"
            boolean r0 = r1.equalsIgnoreCase(r0)
            if (r0 == 0) goto L_0x00f3
            java.lang.String r8 = getDataColumn(r8, r9, r3, r3)
            return r8
        L_0x00f3:
            java.lang.String r8 = r9.getScheme()
            java.lang.String r0 = "file"
            boolean r8 = r0.equalsIgnoreCase(r8)
            if (r8 == 0) goto L_0x0104
            java.lang.String r8 = r9.getPath()
            return r8
        L_0x0104:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.flt_tencent_im.utils.FileUtil.getPath(android.content.Context, android.net.Uri):java.lang.String");
    }

    @Nullable
    private static File generateFileName(@Nullable String str, File file) {
        String str2;
        if (str == null) {
            return null;
        }
        File file2 = new File(file, str);
        if (file2.exists()) {
            int lastIndexOf = str.lastIndexOf(46);
            int i = 0;
            if (lastIndexOf > 0) {
                String substring = str.substring(0, lastIndexOf);
                str2 = str.substring(lastIndexOf);
                str = substring;
            } else {
                str2 = "";
            }
            while (file2.exists()) {
                i++;
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append('(');
                sb.append(i);
                sb.append(')');
                sb.append(str2);
                file2 = new File(file, sb.toString());
            }
        }
        try {
            if (!file2.createNewFile()) {
                return null;
            }
            return file2;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static String getFileName(@NonNull Context context, Uri uri) {
        if (context.getContentResolver().getType(uri) == null && context != null) {
            return getName(uri.toString());
        }
        Cursor query = context.getContentResolver().query(uri, null, null, null, null);
        if (query == null) {
            return null;
        }
        int columnIndex = query.getColumnIndex("_display_name");
        query.moveToFirst();
        String string = query.getString(columnIndex);
        query.close();
        return string;
    }

    private static String getName(String str) {
        if (str == null) {
            return null;
        }
        return str.substring(str.lastIndexOf(47) + 1);
    }

    private static File getDocumentCacheDir(@NonNull Context context) {
        File file = new File(context.getCacheDir(), DOCUMENTS_DIR);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r3v1, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r0v1, types: [java.io.BufferedOutputStream] */
    /* JADX WARNING: type inference failed for: r4v1 */
    /* JADX WARNING: type inference failed for: r3v3 */
    /* JADX WARNING: type inference failed for: r0v2 */
    /* JADX WARNING: type inference failed for: r4v2, types: [java.io.BufferedOutputStream] */
    /* JADX WARNING: type inference failed for: r0v3, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r3v5 */
    /* JADX WARNING: type inference failed for: r4v3 */
    /* JADX WARNING: type inference failed for: r3v6 */
    /* JADX WARNING: type inference failed for: r3v8, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r4v4 */
    /* JADX WARNING: type inference failed for: r0v4 */
    /* JADX WARNING: type inference failed for: r4v5 */
    /* JADX WARNING: type inference failed for: r4v6, types: [java.io.BufferedOutputStream] */
    /* JADX WARNING: type inference failed for: r0v6 */
    /* JADX WARNING: type inference failed for: r0v7 */
    /* JADX WARNING: type inference failed for: r0v8 */
    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: type inference failed for: r4v7 */
    /* JADX WARNING: type inference failed for: r3v10 */
    /* JADX WARNING: type inference failed for: r3v11 */
    /* JADX WARNING: type inference failed for: r4v8 */
    /* JADX WARNING: type inference failed for: r4v9 */
    /* JADX WARNING: type inference failed for: r4v10 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r3v3
      assigns: []
      uses: []
      mth insns count: 60
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0042 A[SYNTHETIC, Splitter:B:28:0x0042] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x004a A[Catch:{ IOException -> 0x0046 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0057 A[SYNTHETIC, Splitter:B:39:0x0057] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x005f A[Catch:{ IOException -> 0x005b }] */
    /* JADX WARNING: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Unknown variable types count: 10 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void saveFileFromUri(android.content.Context r3, android.net.Uri r4, java.lang.String r5) {
        /*
            r0 = 0
            android.content.ContentResolver r3 = r3.getContentResolver()     // Catch:{ IOException -> 0x003b, all -> 0x0038 }
            java.io.InputStream r3 = r3.openInputStream(r4)     // Catch:{ IOException -> 0x003b, all -> 0x0038 }
            java.io.BufferedOutputStream r4 = new java.io.BufferedOutputStream     // Catch:{ IOException -> 0x0034, all -> 0x0032 }
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x0034, all -> 0x0032 }
            r2 = 0
            r1.<init>(r5, r2)     // Catch:{ IOException -> 0x0034, all -> 0x0032 }
            r4.<init>(r1)     // Catch:{ IOException -> 0x0034, all -> 0x0032 }
            r5 = 1024(0x400, float:1.435E-42)
            byte[] r5 = new byte[r5]     // Catch:{ IOException -> 0x0030, all -> 0x002e }
            r3.read(r5)     // Catch:{ IOException -> 0x0030, all -> 0x002e }
        L_0x001b:
            r4.write(r5)     // Catch:{ IOException -> 0x0030, all -> 0x002e }
            int r0 = r3.read(r5)     // Catch:{ IOException -> 0x0030, all -> 0x002e }
            r1 = -1
            if (r0 != r1) goto L_0x001b
            if (r3 == 0) goto L_0x002a
            r3.close()     // Catch:{ IOException -> 0x0046 }
        L_0x002a:
            r4.close()     // Catch:{ IOException -> 0x0046 }
            goto L_0x0051
        L_0x002e:
            r5 = move-exception
            goto L_0x0054
        L_0x0030:
            r5 = move-exception
            goto L_0x0036
        L_0x0032:
            r5 = move-exception
            goto L_0x0055
        L_0x0034:
            r5 = move-exception
            r4 = r0
        L_0x0036:
            r0 = r3
            goto L_0x003d
        L_0x0038:
            r5 = move-exception
            r3 = r0
            goto L_0x0055
        L_0x003b:
            r5 = move-exception
            r4 = r0
        L_0x003d:
            r5.printStackTrace()     // Catch:{ all -> 0x0052 }
            if (r0 == 0) goto L_0x0048
            r0.close()     // Catch:{ IOException -> 0x0046 }
            goto L_0x0048
        L_0x0046:
            r3 = move-exception
            goto L_0x004e
        L_0x0048:
            if (r4 == 0) goto L_0x0051
            r4.close()     // Catch:{ IOException -> 0x0046 }
            goto L_0x0051
        L_0x004e:
            r3.printStackTrace()
        L_0x0051:
            return
        L_0x0052:
            r5 = move-exception
            r3 = r0
        L_0x0054:
            r0 = r4
        L_0x0055:
            if (r3 == 0) goto L_0x005d
            r3.close()     // Catch:{ IOException -> 0x005b }
            goto L_0x005d
        L_0x005b:
            r3 = move-exception
            goto L_0x0063
        L_0x005d:
            if (r0 == 0) goto L_0x0066
            r0.close()     // Catch:{ IOException -> 0x005b }
            goto L_0x0066
        L_0x0063:
            r3.printStackTrace()
        L_0x0066:
            goto L_0x0068
        L_0x0067:
            throw r5
        L_0x0068:
            goto L_0x0067
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.flt_tencent_im.utils.FileUtil.saveFileFromUri(android.content.Context, android.net.Uri, java.lang.String):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0035  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String getDataColumn(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.flt_tencent_im.utils.FileUtil.getDataColumn(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static double getFileOrFilesSize(String str, int i) {
        long j;
        File file = new File(str);
        try {
            if (file.isDirectory()) {
                j = getFileSizes(file);
            } else {
                j = getFileSize(file);
            }
        } catch (Exception e) {
            e.printStackTrace();
            j = 0;
        }
        return FormetFileSize(j, i);
    }

    public static String getAutoFileOrFilesSize(String str) {
        long j;
        File file = new File(str);
        try {
            if (file.isDirectory()) {
                j = getFileSizes(file);
            } else {
                j = getFileSize(file);
            }
        } catch (Exception e) {
            e.printStackTrace();
            j = 0;
        }
        return FormetFileSize(j);
    }

    public static long getFileSize(File file) {
        try {
            if (file.exists()) {
                return (long) new FileInputStream(file).available();
            }
            file.createNewFile();
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    private static long getFileSizes(File file) {
        long j;
        File[] listFiles = file.listFiles();
        long j2 = 0;
        for (int i = 0; i < listFiles.length; i++) {
            if (listFiles[i].isDirectory()) {
                j = getFileSizes(listFiles[i]);
            } else {
                j = getFileSize(listFiles[i]);
            }
            j2 += j;
        }
        return j2;
    }

    public static String FormetFileSize(long j) {
        String str;
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        if (j == 0) {
            return "0B";
        }
        if (j < 1024) {
            StringBuilder sb = new StringBuilder();
            sb.append(decimalFormat.format((double) j));
            sb.append("B");
            str = sb.toString();
        } else if (j < 1048576) {
            StringBuilder sb2 = new StringBuilder();
            double d = (double) j;
            Double.isNaN(d);
            sb2.append(decimalFormat.format(d / 1024.0d));
            sb2.append("KB");
            str = sb2.toString();
        } else if (j < IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            StringBuilder sb3 = new StringBuilder();
            double d2 = (double) j;
            Double.isNaN(d2);
            sb3.append(decimalFormat.format(d2 / 1048576.0d));
            sb3.append("MB");
            str = sb3.toString();
        } else {
            StringBuilder sb4 = new StringBuilder();
            double d3 = (double) j;
            Double.isNaN(d3);
            sb4.append(decimalFormat.format(d3 / 1.073741824E9d));
            sb4.append("GB");
            str = sb4.toString();
        }
        return str;
    }

    private static double FormetFileSize(long j, int i) {
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        if (i == 1) {
            return Double.valueOf(decimalFormat.format((double) j)).doubleValue();
        }
        if (i == 2) {
            double d = (double) j;
            Double.isNaN(d);
            return Double.valueOf(decimalFormat.format(d / 1024.0d)).doubleValue();
        } else if (i == 3) {
            double d2 = (double) j;
            Double.isNaN(d2);
            return Double.valueOf(decimalFormat.format(d2 / 1048576.0d)).doubleValue();
        } else if (i != 4) {
            return 0.0d;
        } else {
            double d3 = (double) j;
            Double.isNaN(d3);
            return Double.valueOf(decimalFormat.format(d3 / 1.073741824E9d)).doubleValue();
        }
    }

    public static String reNameFile(File file, final String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(TUIKitConstants.FILE_DOWNLOAD_DIR);
        sb.append(str);
        String sb2 = sb.toString();
        if (new File(sb2).exists()) {
            List asList = Arrays.asList(new File(TUIKitConstants.FILE_DOWNLOAD_DIR).listFiles(new FileFilter() {
                public boolean accept(File file) {
                    return file.getName().startsWith(str);
                }
            }));
            Collections.sort(asList, new Comparator<File>() {
                public int compare(File file, File file2) {
                    return file.getName().compareTo(file2.getName());
                }
            });
            int i = 0;
            String[] split = ((File) asList.get(0)).getName().split(str);
            if (split.length > 1) {
                Integer.parseInt(split[1].split("\\(")[1].split("\\)")[0]);
                i = 1;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append("(");
            sb3.append(i);
            sb3.append(")");
            String sb4 = sb3.toString();
            StringBuilder sb5 = new StringBuilder();
            sb5.append(TUIKitConstants.FILE_DOWNLOAD_DIR);
            sb5.append(sb4);
            file.renameTo(new File(sb5.toString()));
            return sb4;
        }
        file.renameTo(new File(sb2));
        return str;
    }
}
