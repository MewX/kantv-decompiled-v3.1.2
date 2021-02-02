package com.avos.avoscloud;

import android.annotation.SuppressLint;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

@SuppressLint({"NewApi"})
public class ArchiveRequestTaskController {
    private static final long TIME_DELAY_FOR_ARCHIVEREQUEST = 30;
    static Runnable archiveRequestTask = new Runnable() {
        public void run() {
            if (AVOSCloud.showInternalDebugLog()) {
                avlog.d("trying to send archive request");
            }
            if (AVUtils.isBlankString(AVOSCloud.applicationId) || AVOSCloud.applicationContext == null) {
                log.e("applicationContext is null, Please call AVOSCloud.initialize first");
            } else if (ArchiveRequestTaskController.lock.tryLock()) {
                try {
                    PaasClient.storageInstance().handleAllArchivedRequest(true);
                    RequestStatisticsUtil.getInstance().sendToServer();
                } catch (Exception e) {
                    log.e("Exception happended during processing archive requests", e);
                } catch (Throwable th) {
                    ArchiveRequestTaskController.lock.unlock();
                    throw th;
                }
                ArchiveRequestTaskController.lock.unlock();
            }
        }
    };
    /* access modifiers changed from: private */
    public static Lock lock = new ReentrantLock();
    static ScheduledExecutorService scheduledExecutorService;
    static ScheduledFuture<?> scheduledFuture;

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x003c, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized void schedule() {
        /*
            java.lang.Class<com.avos.avoscloud.ArchiveRequestTaskController> r0 = com.avos.avoscloud.ArchiveRequestTaskController.class
            monitor-enter(r0)
            java.lang.Boolean r1 = com.avos.avoscloud.RequestStatisticsUtil.REPORT_INTERNAL_STATS     // Catch:{ all -> 0x003d }
            boolean r1 = r1.booleanValue()     // Catch:{ all -> 0x003d }
            if (r1 != 0) goto L_0x000d
            monitor-exit(r0)
            return
        L_0x000d:
            java.util.concurrent.ScheduledExecutorService r1 = scheduledExecutorService     // Catch:{ all -> 0x003d }
            r2 = 1
            if (r1 != 0) goto L_0x0018
            java.util.concurrent.ScheduledExecutorService r1 = java.util.concurrent.Executors.newScheduledThreadPool(r2)     // Catch:{ all -> 0x003d }
            scheduledExecutorService = r1     // Catch:{ all -> 0x003d }
        L_0x0018:
            java.util.concurrent.ScheduledFuture<?> r1 = scheduledFuture     // Catch:{ all -> 0x003d }
            if (r1 == 0) goto L_0x002b
            java.util.concurrent.ScheduledFuture<?> r1 = scheduledFuture     // Catch:{ all -> 0x003d }
            boolean r1 = r1.isDone()     // Catch:{ all -> 0x003d }
            if (r1 != 0) goto L_0x002b
            java.util.concurrent.ScheduledFuture<?> r1 = scheduledFuture     // Catch:{ all -> 0x003d }
            r2 = 0
            boolean r2 = r1.cancel(r2)     // Catch:{ all -> 0x003d }
        L_0x002b:
            if (r2 == 0) goto L_0x003b
            java.util.concurrent.ScheduledExecutorService r1 = scheduledExecutorService     // Catch:{ all -> 0x003d }
            java.lang.Runnable r2 = archiveRequestTask     // Catch:{ all -> 0x003d }
            r3 = 30
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.SECONDS     // Catch:{ all -> 0x003d }
            java.util.concurrent.ScheduledFuture r1 = r1.schedule(r2, r3, r5)     // Catch:{ all -> 0x003d }
            scheduledFuture = r1     // Catch:{ all -> 0x003d }
        L_0x003b:
            monitor-exit(r0)
            return
        L_0x003d:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.ArchiveRequestTaskController.schedule():void");
    }
}
