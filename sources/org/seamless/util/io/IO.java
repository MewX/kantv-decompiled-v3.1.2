package org.seamless.util.io;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.CharArrayWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;

public class IO {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    public static final String LINE_SEPARATOR;

    public interface FileFinder {
        void found(File file);
    }

    public static String makeRelativePath(String str, String str2) {
        if (str == null || str.length() <= 0) {
            return "";
        }
        String str3 = "/";
        if (str.startsWith(str3)) {
            if (str.startsWith(str2)) {
                str = str.substring(str2.length());
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(str);
                str = sb.toString();
            }
        } else if (str.endsWith(str3)) {
            str = str.substring(0, str.length() - 1);
        }
        return str.startsWith(str3) ? str.substring(1) : str;
    }

    public static void recursiveRename(File file, String str, String str2) {
        File[] listFiles;
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                recursiveRename(file2, str, str2);
                file2.renameTo(new File(file, file2.getName().replace(str, str2)));
            } else {
                file2.renameTo(new File(file, file2.getName().replace(str, str2)));
            }
        }
    }

    public static void findFiles(File file, FileFinder fileFinder) {
        fileFinder.found(file);
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File findFiles : listFiles) {
                findFiles(findFiles, fileFinder);
            }
        }
    }

    public static boolean deleteFile(File file) {
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        deleteFile(file2);
                    } else {
                        file2.delete();
                    }
                }
            }
        }
        return file.delete();
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0041  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0046  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void copyFile(java.io.File r9, java.io.File r10) throws java.io.IOException {
        /*
            boolean r0 = r10.exists()
            if (r0 != 0) goto L_0x0009
            r10.createNewFile()
        L_0x0009:
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch:{ all -> 0x003d }
            r1.<init>(r9)     // Catch:{ all -> 0x003d }
            java.nio.channels.FileChannel r9 = r1.getChannel()     // Catch:{ all -> 0x003d }
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ all -> 0x0037 }
            r1.<init>(r10)     // Catch:{ all -> 0x0037 }
            java.nio.channels.FileChannel r10 = r1.getChannel()     // Catch:{ all -> 0x0037 }
            r4 = 0
            long r6 = r9.size()     // Catch:{ all -> 0x0032 }
            r2 = r10
            r3 = r9
            r2.transferFrom(r3, r4, r6)     // Catch:{ all -> 0x0032 }
            if (r9 == 0) goto L_0x002c
            r9.close()
        L_0x002c:
            if (r10 == 0) goto L_0x0031
            r10.close()
        L_0x0031:
            return
        L_0x0032:
            r0 = move-exception
            r8 = r0
            r0 = r9
            r9 = r8
            goto L_0x003f
        L_0x0037:
            r10 = move-exception
            r8 = r0
            r0 = r9
            r9 = r10
            r10 = r8
            goto L_0x003f
        L_0x003d:
            r9 = move-exception
            r10 = r0
        L_0x003f:
            if (r0 == 0) goto L_0x0044
            r0.close()
        L_0x0044:
            if (r10 == 0) goto L_0x0049
            r10.close()
        L_0x0049:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.io.IO.copyFile(java.io.File, java.io.File):void");
    }

    public static byte[] readBytes(InputStream inputStream) throws IOException {
        return toByteArray(inputStream);
    }

    public static byte[] readBytes(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return readBytes((InputStream) fileInputStream);
        } finally {
            fileInputStream.close();
        }
    }

    public static void writeBytes(OutputStream outputStream, byte[] bArr) throws IOException {
        write(bArr, outputStream);
    }

    public static void writeBytes(File file, byte[] bArr) throws IOException {
        if (file == null) {
            throw new IllegalArgumentException("File should not be null.");
        } else if (!file.exists()) {
            StringBuilder sb = new StringBuilder();
            sb.append("File does not exist: ");
            sb.append(file);
            throw new FileNotFoundException(sb.toString());
        } else if (!file.isFile()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Should not be a directory: ");
            sb2.append(file);
            throw new IllegalArgumentException(sb2.toString());
        } else if (file.canWrite()) {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                writeBytes((OutputStream) fileOutputStream, bArr);
                fileOutputStream.flush();
            } finally {
                fileOutputStream.close();
            }
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("File cannot be written: ");
            sb3.append(file);
            throw new IllegalArgumentException(sb3.toString());
        }
    }

    public static void writeUTF8(OutputStream outputStream, String str) throws IOException {
        write(str, outputStream, "UTF-8");
    }

    public static void writeUTF8(File file, String str) throws IOException {
        if (file == null) {
            throw new IllegalArgumentException("File should not be null.");
        } else if (!file.exists()) {
            StringBuilder sb = new StringBuilder();
            sb.append("File does not exist: ");
            sb.append(file);
            throw new FileNotFoundException(sb.toString());
        } else if (!file.isFile()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Should not be a directory: ");
            sb2.append(file);
            throw new IllegalArgumentException(sb2.toString());
        } else if (file.canWrite()) {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                writeUTF8((OutputStream) fileOutputStream, str);
                fileOutputStream.flush();
            } finally {
                fileOutputStream.close();
            }
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("File cannot be written: ");
            sb3.append(file);
            throw new IllegalArgumentException(sb3.toString());
        }
    }

    public static String readLines(InputStream inputStream) throws IOException {
        if (inputStream != null) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                sb.append(System.getProperty("line.separator"));
            }
            return sb.length() > 0 ? sb.toString() : "";
        }
        throw new IllegalArgumentException("Inputstream was null");
    }

    public static String readLines(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return readLines((InputStream) fileInputStream);
        } finally {
            fileInputStream.close();
        }
    }

    public static String[] readLines(File file, boolean z) throws IOException {
        return readLines(file, z, null);
    }

    public static String[] readLines(File file, boolean z, Character ch) throws IOException {
        return readLines(file, z, ch, false);
    }

    /* JADX INFO: finally extract failed */
    public static String[] readLines(File file, boolean z, Character ch, boolean z2) throws IOException {
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (ch != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("^\\s*");
                        sb.append(ch);
                        sb.append(".*");
                        if (readLine.matches(sb.toString())) {
                        }
                    }
                    if (z) {
                        readLine = readLine.trim();
                    }
                    if (!z2 || readLine.length() != 0) {
                        arrayList.add(readLine);
                    }
                } else {
                    bufferedReader.close();
                    return (String[]) arrayList.toArray(new String[arrayList.size()]);
                }
            } catch (Throwable th) {
                bufferedReader.close();
                throw th;
            }
        }
    }

    static {
        StringWriter stringWriter = new StringWriter(4);
        new PrintWriter(stringWriter).println();
        LINE_SEPARATOR = stringWriter.toString();
    }

    public static void closeQuietly(Reader reader) {
        if (reader != null) {
            try {
                reader.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void closeQuietly(Writer writer) {
        if (writer != null) {
            try {
                writer.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void closeQuietly(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void closeQuietly(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, (OutputStream) byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toByteArray(Reader reader) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(reader, (OutputStream) byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toByteArray(Reader reader, String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(reader, (OutputStream) byteArrayOutputStream, str);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toByteArray(String str) throws IOException {
        return str.getBytes();
    }

    public static char[] toCharArray(InputStream inputStream) throws IOException {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        copy(inputStream, (Writer) charArrayWriter);
        return charArrayWriter.toCharArray();
    }

    public static char[] toCharArray(InputStream inputStream, String str) throws IOException {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        copy(inputStream, (Writer) charArrayWriter, str);
        return charArrayWriter.toCharArray();
    }

    public static char[] toCharArray(Reader reader) throws IOException {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        copy(reader, (Writer) charArrayWriter);
        return charArrayWriter.toCharArray();
    }

    public static String toString(InputStream inputStream) throws IOException {
        StringWriter stringWriter = new StringWriter();
        copy(inputStream, (Writer) stringWriter);
        return stringWriter.toString();
    }

    public static String toString(InputStream inputStream, String str) throws IOException {
        StringWriter stringWriter = new StringWriter();
        copy(inputStream, (Writer) stringWriter, str);
        return stringWriter.toString();
    }

    public static String toString(Reader reader) throws IOException {
        StringWriter stringWriter = new StringWriter();
        copy(reader, (Writer) stringWriter);
        return stringWriter.toString();
    }

    public static String toString(byte[] bArr) throws IOException {
        return new String(bArr);
    }

    public static String toString(byte[] bArr, String str) throws IOException {
        if (str == null) {
            return new String(bArr);
        }
        return new String(bArr, str);
    }

    public static InputStream toInputStream(String str) {
        return new ByteArrayInputStream(str.getBytes());
    }

    public static InputStream toInputStream(String str, String str2) throws IOException {
        return new ByteArrayInputStream(str2 != null ? str.getBytes(str2) : str.getBytes());
    }

    public static void write(byte[] bArr, OutputStream outputStream) throws IOException {
        if (bArr != null) {
            outputStream.write(bArr);
        }
    }

    public static void write(byte[] bArr, Writer writer) throws IOException {
        if (bArr != null) {
            writer.write(new String(bArr));
        }
    }

    public static void write(byte[] bArr, Writer writer, String str) throws IOException {
        if (bArr == null) {
            return;
        }
        if (str == null) {
            write(bArr, writer);
        } else {
            writer.write(new String(bArr, str));
        }
    }

    public static void write(char[] cArr, Writer writer) throws IOException {
        if (cArr != null) {
            writer.write(cArr);
        }
    }

    public static void write(char[] cArr, OutputStream outputStream) throws IOException {
        if (cArr != null) {
            outputStream.write(new String(cArr).getBytes());
        }
    }

    public static void write(char[] cArr, OutputStream outputStream, String str) throws IOException {
        if (cArr == null) {
            return;
        }
        if (str == null) {
            write(cArr, outputStream);
        } else {
            outputStream.write(new String(cArr).getBytes(str));
        }
    }

    public static void write(String str, Writer writer) throws IOException {
        if (str != null) {
            writer.write(str);
        }
    }

    public static void write(String str, OutputStream outputStream) throws IOException {
        if (str != null) {
            outputStream.write(str.getBytes());
        }
    }

    public static void write(String str, OutputStream outputStream, String str2) throws IOException {
        if (str == null) {
            return;
        }
        if (str2 == null) {
            write(str, outputStream);
        } else {
            outputStream.write(str.getBytes(str2));
        }
    }

    public static void write(StringBuffer stringBuffer, Writer writer) throws IOException {
        if (stringBuffer != null) {
            writer.write(stringBuffer.toString());
        }
    }

    public static void write(StringBuffer stringBuffer, OutputStream outputStream) throws IOException {
        if (stringBuffer != null) {
            outputStream.write(stringBuffer.toString().getBytes());
        }
    }

    public static void write(StringBuffer stringBuffer, OutputStream outputStream, String str) throws IOException {
        if (stringBuffer == null) {
            return;
        }
        if (str == null) {
            write(stringBuffer, outputStream);
        } else {
            outputStream.write(stringBuffer.toString().getBytes(str));
        }
    }

    public static int copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        long copyLarge = copyLarge(inputStream, outputStream);
        if (copyLarge > 2147483647L) {
            return -1;
        }
        return (int) copyLarge;
    }

    public static long copyLarge(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 == read) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += (long) read;
        }
    }

    public static void copy(InputStream inputStream, Writer writer) throws IOException {
        copy((Reader) new InputStreamReader(inputStream), writer);
    }

    public static void copy(InputStream inputStream, Writer writer, String str) throws IOException {
        if (str == null) {
            copy(inputStream, writer);
        } else {
            copy((Reader) new InputStreamReader(inputStream, str), writer);
        }
    }

    public static int copy(Reader reader, Writer writer) throws IOException {
        long copyLarge = copyLarge(reader, writer);
        if (copyLarge > 2147483647L) {
            return -1;
        }
        return (int) copyLarge;
    }

    public static long copyLarge(Reader reader, Writer writer) throws IOException {
        char[] cArr = new char[4096];
        long j = 0;
        while (true) {
            int read = reader.read(cArr);
            if (-1 == read) {
                return j;
            }
            writer.write(cArr, 0, read);
            j += (long) read;
        }
    }

    public static void copy(Reader reader, OutputStream outputStream) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream);
        copy(reader, (Writer) outputStreamWriter);
        outputStreamWriter.flush();
    }

    public static void copy(Reader reader, OutputStream outputStream, String str) throws IOException {
        if (str == null) {
            copy(reader, outputStream);
            return;
        }
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, str);
        copy(reader, (Writer) outputStreamWriter);
        outputStreamWriter.flush();
    }

    public static boolean contentEquals(InputStream inputStream, InputStream inputStream2) throws IOException {
        if (!(inputStream instanceof BufferedInputStream)) {
            inputStream = new BufferedInputStream(inputStream);
        }
        if (!(inputStream2 instanceof BufferedInputStream)) {
            inputStream2 = new BufferedInputStream(inputStream2);
        }
        int read = inputStream.read();
        while (true) {
            boolean z = false;
            if (-1 == read) {
                if (inputStream2.read() == -1) {
                    z = true;
                }
                return z;
            } else if (read != inputStream2.read()) {
                return false;
            } else {
                read = inputStream.read();
            }
        }
    }

    public static boolean contentEquals(Reader reader, Reader reader2) throws IOException {
        if (!(reader instanceof BufferedReader)) {
            reader = new BufferedReader(reader);
        }
        if (!(reader2 instanceof BufferedReader)) {
            reader2 = new BufferedReader(reader2);
        }
        int read = reader.read();
        while (true) {
            boolean z = false;
            if (-1 == read) {
                if (reader2.read() == -1) {
                    z = true;
                }
                return z;
            } else if (read != reader2.read()) {
                return false;
            } else {
                read = reader.read();
            }
        }
    }
}
