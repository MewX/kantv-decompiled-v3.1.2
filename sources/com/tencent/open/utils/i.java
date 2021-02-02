package com.tencent.open.utils;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;

/* compiled from: ProGuard */
public final class i {
    public static final Executor a = c();
    private static Object b = new Object();
    private static Handler c;
    private static HandlerThread d;

    /* compiled from: ProGuard */
    private static class a implements Executor {
        final Queue<Runnable> a;
        Runnable b;

        private a() {
            this.a = new LinkedList();
        }

        public synchronized void execute(final Runnable runnable) {
            this.a.offer(new Runnable() {
                public void run() {
                    try {
                        runnable.run();
                    } finally {
                        a.this.a();
                    }
                }
            });
            if (this.b == null) {
                a();
            }
        }

        /* access modifiers changed from: protected */
        public synchronized void a() {
            Runnable runnable = (Runnable) this.a.poll();
            this.b = runnable;
            if (runnable != null) {
                i.a.execute(this.b);
            }
        }
    }

    /* JADX WARNING: type inference failed for: r0v1, types: [java.util.concurrent.Executor] */
    /* JADX WARNING: type inference failed for: r1v2 */
    /* JADX WARNING: type inference failed for: r0v6, types: [java.util.concurrent.Executor] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.util.concurrent.Executor c() {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 11
            if (r0 < r1) goto L_0x0018
            java.util.concurrent.ThreadPoolExecutor r0 = new java.util.concurrent.ThreadPoolExecutor
            r3 = 1
            r4 = 1
            r5 = 0
            java.util.concurrent.TimeUnit r7 = java.util.concurrent.TimeUnit.SECONDS
            java.util.concurrent.LinkedBlockingQueue r8 = new java.util.concurrent.LinkedBlockingQueue
            r8.<init>()
            r2 = r0
            r2.<init>(r3, r4, r5, r7, r8)
            goto L_0x003d
        L_0x0018:
            java.lang.Class<android.os.AsyncTask> r0 = android.os.AsyncTask.class
            java.lang.String r1 = "sExecutor"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch:{ Exception -> 0x002c }
            r1 = 1
            r0.setAccessible(r1)     // Catch:{ Exception -> 0x002c }
            r1 = 0
            java.lang.Object r0 = r0.get(r1)     // Catch:{ Exception -> 0x002c }
            java.util.concurrent.Executor r0 = (java.util.concurrent.Executor) r0     // Catch:{ Exception -> 0x002c }
            goto L_0x003d
        L_0x002c:
            java.util.concurrent.ThreadPoolExecutor r0 = new java.util.concurrent.ThreadPoolExecutor
            r2 = 1
            r3 = 1
            r4 = 0
            java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.SECONDS
            java.util.concurrent.LinkedBlockingQueue r7 = new java.util.concurrent.LinkedBlockingQueue
            r7.<init>()
            r1 = r0
            r1.<init>(r2, r3, r4, r6, r7)
        L_0x003d:
            boolean r1 = r0 instanceof java.util.concurrent.ThreadPoolExecutor
            if (r1 == 0) goto L_0x0048
            r1 = r0
            java.util.concurrent.ThreadPoolExecutor r1 = (java.util.concurrent.ThreadPoolExecutor) r1
            r2 = 3
            r1.setCorePoolSize(r2)
        L_0x0048:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.utils.i.c():java.util.concurrent.Executor");
    }

    public static Handler a() {
        if (c == null) {
            synchronized (i.class) {
                d = new HandlerThread("SDK_SUB");
                d.start();
                c = new Handler(d.getLooper());
            }
        }
        return c;
    }

    public static void a(Runnable runnable) {
        a().post(runnable);
    }

    public static Executor b() {
        return new a();
    }
}
