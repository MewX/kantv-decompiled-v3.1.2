package com.kantv.ui.m3u8downloader.utils;

import com.kantv.common.log.AILog;
import com.kantv.ui.m3u8downloader.M3U8DownloaderConfig;
import com.kantv.ui.m3u8downloader.bean.M3U8;
import com.kantv.ui.m3u8downloader.bean.M3U8Ts;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;

public class MUtils {
    private static float GB = (MB * 1024.0f);
    private static float KB = 1024.0f;
    private static float MB = (KB * 1024.0f);

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0063, code lost:
        if (r5.endsWith("m3u8") == false) goto L_0x0079;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0065, code lost:
        r0 = new java.lang.StringBuilder();
        r0.append(r7);
        r0.append(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0078, code lost:
        return parseIndex(r0.toString());
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.kantv.ui.m3u8downloader.bean.M3U8 parseIndex(java.lang.String r7) throws java.io.IOException {
        /*
            com.kantv.ui.m3u8downloader.bean.M3U8 r0 = new com.kantv.ui.m3u8downloader.bean.M3U8
            r0.<init>()
            java.io.BufferedReader r1 = new java.io.BufferedReader
            java.io.InputStreamReader r2 = new java.io.InputStreamReader
            java.net.URL r3 = new java.net.URL
            r3.<init>(r7)
            java.io.InputStream r3 = r3.openStream()
            r2.<init>(r3)
            r1.<init>(r2)
            java.lang.String r2 = "/"
            int r2 = r7.lastIndexOf(r2)
            int r2 = r2 + 1
            r3 = 0
            java.lang.String r7 = r7.substring(r3, r2)
            r0.setBasePath(r7)
            r2 = 0
        L_0x0029:
            r4 = 0
        L_0x002a:
            java.lang.String r5 = r1.readLine()
            if (r5 == 0) goto L_0x0082
            java.lang.String r6 = "#"
            boolean r6 = r5.startsWith(r6)
            if (r6 == 0) goto L_0x005d
            java.lang.String r6 = "#EXTINF:"
            boolean r6 = r5.startsWith(r6)
            if (r6 == 0) goto L_0x002a
            r4 = 8
            java.lang.String r4 = r5.substring(r4)
            java.lang.String r5 = ","
            boolean r5 = r4.endsWith(r5)
            if (r5 == 0) goto L_0x0058
            int r5 = r4.length()
            int r5 = r5 + -1
            java.lang.String r4 = r4.substring(r3, r5)
        L_0x0058:
            float r4 = java.lang.Float.parseFloat(r4)
            goto L_0x002a
        L_0x005d:
            java.lang.String r6 = "m3u8"
            boolean r6 = r5.endsWith(r6)
            if (r6 == 0) goto L_0x0079
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r7)
            r0.append(r5)
            java.lang.String r7 = r0.toString()
            com.kantv.ui.m3u8downloader.bean.M3U8 r7 = parseIndex(r7)
            return r7
        L_0x0079:
            com.kantv.ui.m3u8downloader.bean.M3U8Ts r6 = new com.kantv.ui.m3u8downloader.bean.M3U8Ts
            r6.<init>(r5, r4)
            r0.addTs(r6)
            goto L_0x0029
        L_0x0082:
            r1.close()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.m3u8downloader.utils.MUtils.parseIndex(java.lang.String):com.kantv.ui.m3u8downloader.bean.M3U8");
    }

    public static boolean clearDir(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                return file.delete();
            }
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                for (File clearDir : listFiles) {
                    clearDir(clearDir);
                }
                return file.delete();
            }
        }
        return true;
    }

    public static String formatFileSize(long j) {
        float f = (float) j;
        float f2 = GB;
        if (f >= f2) {
            return String.format("%.1f GB", new Object[]{Float.valueOf(f / f2)});
        }
        float f3 = MB;
        if (f >= f3) {
            float f4 = f / f3;
            return String.format(f4 > 100.0f ? "%.0f MB" : "%.1f MB", new Object[]{Float.valueOf(f4)});
        }
        float f5 = KB;
        if (f >= f5) {
            float f6 = f / f5;
            return String.format(f6 > 100.0f ? "%.0f KB" : "%.1f KB", new Object[]{Float.valueOf(f6)});
        }
        return String.format("%d B", new Object[]{Long.valueOf(j)});
    }

    public static File createLocalM3U8(File file, String str, M3U8 m3u8) throws IOException {
        return createLocalM3U8(file, str, m3u8, null);
    }

    public static File createLocalM3U8(File file, String str, M3U8 m3u8, String str2) throws IOException {
        File file2 = new File(file, str);
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file2, false));
        bufferedWriter.write("#EXTM3U\n");
        bufferedWriter.write("#EXT-X-VERSION:3\n");
        bufferedWriter.write("#EXT-X-MEDIA-SEQUENCE:0\n");
        bufferedWriter.write("#EXT-X-TARGETDURATION:13\n");
        if (str2 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("#EXT-X-KEY:METHOD=AES-128,URI=\"");
            sb.append(str2);
            sb.append("\"\n");
            bufferedWriter.write(sb.toString());
        }
        for (M3U8Ts m3U8Ts : m3u8.getTsList()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("#EXTINF:");
            sb2.append(m3U8Ts.getSeconds());
            sb2.append(",\n");
            bufferedWriter.write(sb2.toString());
            bufferedWriter.write(m3U8Ts.getFile());
            bufferedWriter.newLine();
        }
        bufferedWriter.write("#EXT-X-ENDLIST");
        bufferedWriter.flush();
        bufferedWriter.close();
        return file2;
    }

    public static byte[] readFile(String str) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(new File(str));
        byte[] bArr = new byte[fileInputStream.available()];
        fileInputStream.read(bArr);
        fileInputStream.close();
        return bArr;
    }

    public static void saveFile(byte[] bArr, String str) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
        fileOutputStream.write(bArr);
        fileOutputStream.flush();
        fileOutputStream.close();
    }

    public static String getSaveFileDir(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("M3U8DownloaderConfig getSaveFileDir");
        sb.append(M3U8DownloaderConfig.getSaveDir());
        sb.append(File.separator);
        sb.append(str);
        AILog.d("getSaveFileDir", sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(M3U8DownloaderConfig.getSaveDir());
        sb2.append(File.separator);
        sb2.append(str);
        return sb2.toString();
    }

    public static String getKey(String str) throws IOException {
        String str2 = "";
        String str3 = null;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new URL(str).openStream()));
            str.substring(0, str.lastIndexOf("/") + 1);
            while (true) {
                str3 = bufferedReader.readLine();
                if (str3 != null) {
                    if (str3.startsWith("#") && str3.startsWith("#EXT-X-KEY")) {
                        str3 = str3.split(",")[1].replace("URI=\"", str2).replace("\"", str2);
                        break;
                    }
                } else {
                    break;
                }
            }
            bufferedReader.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str3;
    }

    public static void RecursionDeleteFile(File file) {
        StringBuilder sb = new StringBuilder();
        sb.append("执行删除文件");
        sb.append(file.getAbsolutePath());
        AILog.d("MUtils", sb.toString());
        if (file.isFile()) {
            file.delete();
            return;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null || listFiles.length == 0) {
                file.delete();
            } else {
                for (File RecursionDeleteFile : listFiles) {
                    RecursionDeleteFile(RecursionDeleteFile);
                }
                file.delete();
            }
        }
    }
}
