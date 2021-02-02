package com.tencent.imsdk.session.remote;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Build.VERSION;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.tencent.imsdk.session.SessionWrapper;

@TargetApi(21)
@Deprecated
public class KeepAliveJobService extends JobService {
    private static final String TAG = "KeepAliveJobService";

    public boolean onStartJob(JobParameters jobParameters) {
        RLog.i(TAG, "onStartJob");
        attemptToStartSessionService();
        addJob(jobParameters);
        return true;
    }

    public boolean onStopJob(JobParameters jobParameters) {
        RLog.i(TAG, "onStopJob");
        return false;
    }

    private void attemptToStartSessionService() {
        if (!SessionWrapper.isServiceRunning(SessionService.class, getApplicationContext())) {
            Intent intent = new Intent(getApplicationContext(), SessionService.class);
            if (VERSION.SDK_INT < 26) {
                RLog.i(TAG, "startService SessionService");
                startService(intent);
            }
        }
    }

    public void addJob(JobParameters jobParameters) {
        if (VERSION.SDK_INT >= 24) {
            Builder builder = new Builder(0, new ComponentName(getApplicationContext(), KeepAliveJobService.class));
            builder.setRequiredNetworkType(1);
            builder.setMinimumLatency(5000);
            builder.setOverrideDeadline(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
            JobInfo build = builder.build();
            JobScheduler jobScheduler = (JobScheduler) getSystemService("jobscheduler");
            if (jobScheduler != null) {
                jobScheduler.schedule(build);
            }
        }
        jobFinished(jobParameters, false);
    }
}
