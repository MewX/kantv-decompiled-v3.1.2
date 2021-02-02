package com.tencent.a.a.a.a;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Iterator;

final class b extends f {
    b(Context context) {
        super(context);
    }

    /* access modifiers changed from: protected */
    public final void a(String str) {
        synchronized (this) {
            Log.i("MID", "write mid to InternalStorage");
            StringBuilder sb = new StringBuilder();
            sb.append(Environment.getExternalStorageDirectory());
            sb.append("/");
            sb.append(h.f("6X8Y4XdM2Vhvn0I="));
            a.d(sb.toString());
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(new File(Environment.getExternalStorageDirectory(), h.f("6X8Y4XdM2Vhvn0KfzcEatGnWaNU="))));
                StringBuilder sb2 = new StringBuilder();
                sb2.append(h.f("4kU71lN96TJUomD1vOU9lgj9Tw=="));
                sb2.append(",");
                sb2.append(str);
                bufferedWriter.write(sb2.toString());
                bufferedWriter.write("\n");
                bufferedWriter.close();
            } catch (Exception e) {
                Log.w("MID", e);
            }
        }
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return h.a(this.a, "android.permission.WRITE_EXTERNAL_STORAGE") && Environment.getExternalStorageState().equals("mounted");
    }

    /* access modifiers changed from: protected */
    public final String b() {
        String str;
        synchronized (this) {
            Log.i("MID", "read mid from InternalStorage");
            try {
                Iterator it = a.a(new File(Environment.getExternalStorageDirectory(), h.f("6X8Y4XdM2Vhvn0KfzcEatGnWaNU="))).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    String[] split = ((String) it.next()).split(",");
                    if (split.length == 2 && split[0].equals(h.f("4kU71lN96TJUomD1vOU9lgj9Tw=="))) {
                        StringBuilder sb = new StringBuilder("read mid from InternalStorage:");
                        sb.append(split[1]);
                        Log.i("MID", sb.toString());
                        str = split[1];
                        break;
                    }
                }
            } catch (IOException e) {
                Log.w("MID", e);
            }
            str = null;
        }
        return str;
    }
}
