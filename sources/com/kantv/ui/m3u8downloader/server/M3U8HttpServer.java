package com.kantv.ui.m3u8downloader.server;

import android.net.Uri;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.nanohttpd.protocols.http.IHTTPSession;
import org.nanohttpd.protocols.http.NanoHTTPD;
import org.nanohttpd.protocols.http.response.IStatus;
import org.nanohttpd.protocols.http.response.Response;
import org.nanohttpd.protocols.http.response.Status;

public class M3U8HttpServer extends NanoHTTPD {
    private static final int DEFAULT_PORT = 8686;
    public String filesDir = null;
    private FileInputStream fis;
    private NanoHTTPD server;

    public M3U8HttpServer() {
        super(DEFAULT_PORT);
    }

    public M3U8HttpServer(int i) {
        super(i);
    }

    public String createLocalHttpUrl(String str) {
        String str2;
        Uri parse = Uri.parse(str);
        if (parse.getScheme() != null) {
            str2 = parse.toString();
        } else {
            str2 = parse.getPath();
        }
        if (str2 == null) {
            return null;
        }
        this.filesDir = str2.substring(0, str2.lastIndexOf("/") + 1);
        return String.format("http://127.0.0.1:%d%s", new Object[]{Integer.valueOf(this.myPort), str2});
    }

    public void execute() {
        try {
            this.server = (NanoHTTPD) M3U8HttpServer.class.newInstance();
            this.server.start(5000, true);
        } catch (IOException unused) {
            System.exit(-1);
        } catch (Exception unused2) {
            System.exit(-1);
        }
    }

    public void finish() {
        NanoHTTPD nanoHTTPD = this.server;
        if (nanoHTTPD != null) {
            nanoHTTPD.stop();
            this.server = null;
        }
    }

    public Response handle(IHTTPSession iHTTPSession) {
        return super.handle(iHTTPSession);
    }

    public Response serve(IHTTPSession iHTTPSession) {
        String valueOf = String.valueOf(iHTTPSession.getUri());
        File file = new File(valueOf);
        Status status = Status.NOT_FOUND;
        StringBuilder sb = new StringBuilder();
        String str = "文件不存在：";
        sb.append(str);
        sb.append(valueOf);
        String str2 = "text/html";
        Response newFixedLengthResponse = Response.newFixedLengthResponse((IStatus) status, str2, sb.toString());
        if (file.exists()) {
            try {
                this.fis = new FileInputStream(file);
                try {
                    newFixedLengthResponse = Response.newFixedLengthResponse(Status.OK, valueOf.contains(".m3u8") ? "video/x-mpegURL" : "video/mpeg", this.fis, (long) this.fis.available());
                } catch (IOException unused) {
                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                Status status2 = Status.NOT_FOUND;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(valueOf);
                return Response.newFixedLengthResponse((IStatus) status2, str2, sb2.toString());
            }
        }
        return newFixedLengthResponse;
    }
}
