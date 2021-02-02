package io.flutter.view;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

class ResourceExtractor {
    private static final String[] SUPPORTED_ABIS = getSupportedAbis();
    private static final String TAG = "ResourceExtractor";
    private static final String TIMESTAMP_PREFIX = "res_timestamp-";
    @NonNull
    private final AssetManager mAssetManager;
    @NonNull
    private final String mDataDirPath;
    private ExtractTask mExtractTask;
    @NonNull
    private final PackageManager mPackageManager;
    @NonNull
    private final String mPackageName;
    @NonNull
    private final HashSet<String> mResources = new HashSet<>();

    private static class ExtractTask extends AsyncTask<Void, Void, Void> {
        @NonNull
        private final AssetManager mAssetManager;
        @NonNull
        private final String mDataDirPath;
        @NonNull
        private final PackageManager mPackageManager;
        @NonNull
        private final String mPackageName;
        @NonNull
        private final HashSet<String> mResources;

        ExtractTask(@NonNull String str, @NonNull HashSet<String> hashSet, @NonNull String str2, @NonNull PackageManager packageManager, @NonNull AssetManager assetManager) {
            this.mDataDirPath = str;
            this.mResources = hashSet;
            this.mAssetManager = assetManager;
            this.mPackageName = str2;
            this.mPackageManager = packageManager;
        }

        /* access modifiers changed from: protected */
        public Void doInBackground(Void... voidArr) {
            File file = new File(this.mDataDirPath);
            String access$000 = ResourceExtractor.checkTimestamp(file, this.mPackageManager, this.mPackageName);
            if (access$000 == null) {
                return null;
            }
            ResourceExtractor.deleteFiles(this.mDataDirPath, this.mResources);
            if (extractAPK(file) && access$000 != null) {
                try {
                    new File(file, access$000).createNewFile();
                } catch (IOException unused) {
                    Log.w(ResourceExtractor.TAG, "Failed to write resource timestamp");
                }
            }
            return null;
        }

        @WorkerThread
        private boolean extractAPK(@NonNull File file) {
            InputStream open;
            Throwable th;
            FileOutputStream fileOutputStream;
            Throwable th2;
            Throwable th3;
            Iterator it = this.mResources.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append("assets/");
                    sb.append(str);
                    sb.toString();
                    File file2 = new File(file, str);
                    if (!file2.exists()) {
                        if (file2.getParentFile() != null) {
                            file2.getParentFile().mkdirs();
                        }
                        open = this.mAssetManager.open(str);
                        try {
                            fileOutputStream = new FileOutputStream(file2);
                            try {
                                ResourceExtractor.copy(open, fileOutputStream);
                                fileOutputStream.close();
                                if (open != null) {
                                    open.close();
                                }
                            } catch (Throwable th4) {
                                Throwable th5 = th4;
                                th2 = r2;
                                th3 = th5;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            throw th;
                        }
                    }
                } catch (FileNotFoundException unused) {
                } catch (IOException e) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Exception unpacking resources: ");
                    sb2.append(e.getMessage());
                    Log.w(ResourceExtractor.TAG, sb2.toString());
                    ResourceExtractor.deleteFiles(this.mDataDirPath, this.mResources);
                    return false;
                } catch (Throwable th7) {
                    th.addSuppressed(th7);
                }
            }
            return true;
            throw th;
            throw th3;
            if (th2 != null) {
                fileOutputStream.close();
            } else {
                fileOutputStream.close();
            }
            throw th3;
        }
    }

    static long getVersionCode(@NonNull PackageInfo packageInfo) {
        if (VERSION.SDK_INT >= 28) {
            return packageInfo.getLongVersionCode();
        }
        return (long) packageInfo.versionCode;
    }

    ResourceExtractor(@NonNull String str, @NonNull String str2, @NonNull PackageManager packageManager, @NonNull AssetManager assetManager) {
        this.mDataDirPath = str;
        this.mPackageName = str2;
        this.mPackageManager = packageManager;
        this.mAssetManager = assetManager;
    }

    /* access modifiers changed from: 0000 */
    public ResourceExtractor addResource(@NonNull String str) {
        this.mResources.add(str);
        return this;
    }

    /* access modifiers changed from: 0000 */
    public ResourceExtractor addResources(@NonNull Collection<String> collection) {
        this.mResources.addAll(collection);
        return this;
    }

    /* access modifiers changed from: 0000 */
    public ResourceExtractor start() {
        ExtractTask extractTask = new ExtractTask(this.mDataDirPath, this.mResources, this.mPackageName, this.mPackageManager, this.mAssetManager);
        this.mExtractTask = extractTask;
        this.mExtractTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        return this;
    }

    /* access modifiers changed from: 0000 */
    public void waitForCompletion() {
        ExtractTask extractTask = this.mExtractTask;
        if (extractTask != null) {
            try {
                extractTask.get();
            } catch (InterruptedException | CancellationException | ExecutionException unused) {
                deleteFiles(this.mDataDirPath, this.mResources);
            }
        }
    }

    private static String[] getExistingTimestamps(File file) {
        return file.list(new FilenameFilter() {
            public boolean accept(File file, String str) {
                return str.startsWith(ResourceExtractor.TIMESTAMP_PREFIX);
            }
        });
    }

    /* access modifiers changed from: private */
    public static void deleteFiles(@NonNull String str, @NonNull HashSet<String> hashSet) {
        File file = new File(str);
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            File file2 = new File(file, (String) it.next());
            if (file2.exists()) {
                file2.delete();
            }
        }
        String[] existingTimestamps = getExistingTimestamps(file);
        if (existingTimestamps != null) {
            for (String file3 : existingTimestamps) {
                new File(file, file3).delete();
            }
        }
    }

    /* access modifiers changed from: private */
    public static String checkTimestamp(@NonNull File file, @NonNull PackageManager packageManager, @NonNull String str) {
        String str2 = TIMESTAMP_PREFIX;
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo == null) {
                return str2;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(getVersionCode(packageInfo));
            sb.append("-");
            sb.append(packageInfo.lastUpdateTime);
            String sb2 = sb.toString();
            String[] existingTimestamps = getExistingTimestamps(file);
            if (existingTimestamps == null) {
                return sb2;
            }
            int length = existingTimestamps.length;
            if (existingTimestamps.length != 1 || !sb2.equals(existingTimestamps[0])) {
                return sb2;
            }
            return null;
        } catch (NameNotFoundException unused) {
            return str2;
        }
    }

    /* access modifiers changed from: private */
    public static void copy(@NonNull InputStream inputStream, @NonNull OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[16384];
        while (true) {
            int read = inputStream.read(bArr);
            if (read >= 0) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    private static String[] getSupportedAbis() {
        if (VERSION.SDK_INT >= 21) {
            return Build.SUPPORTED_ABIS;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(new String[]{Build.CPU_ABI, Build.CPU_ABI2}));
        arrayList.removeAll(Arrays.asList(new String[]{null, ""}));
        return (String[]) arrayList.toArray(new String[0]);
    }
}
