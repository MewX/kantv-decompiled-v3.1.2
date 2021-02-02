package com.kantv.android.screen.manager;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import com.kantv.android.screen.R;
import com.kantv.android.screen.androidupnpdemo.control.ClingPlayControl;
import com.kantv.android.screen.androidupnpdemo.control.callback.ControlCallback;
import com.kantv.android.screen.androidupnpdemo.control.callback.ControlReceiveCallback;
import com.kantv.android.screen.androidupnpdemo.entity.ClingDevice;
import com.kantv.android.screen.androidupnpdemo.entity.ClingDeviceList;
import com.kantv.android.screen.androidupnpdemo.entity.IDevice;
import com.kantv.android.screen.androidupnpdemo.entity.IResponse;
import com.kantv.android.screen.androidupnpdemo.entity.TestEvent;
import com.kantv.android.screen.androidupnpdemo.listener.BrowseRegistryListener;
import com.kantv.android.screen.androidupnpdemo.listener.DeviceListChangedListener;
import com.kantv.android.screen.androidupnpdemo.service.ClingUpnpService;
import com.kantv.android.screen.androidupnpdemo.service.ClingUpnpService.LocalBinder;
import com.kantv.android.screen.androidupnpdemo.service.manager.ClingManager;
import com.kantv.android.screen.androidupnpdemo.service.manager.DeviceManager;
import com.kantv.android.screen.androidupnpdemo.util.Utils;
import com.kantv.android.screen.samsung.MediaLauncherSingleton;
import com.samsung.multiscreen.Search;
import com.samsung.multiscreen.Search.OnServiceFoundListener;
import com.samsung.multiscreen.Search.OnServiceLostListener;
import com.samsung.multiscreen.Search.OnStartListener;
import com.samsung.multiscreen.Search.OnStopListener;
import com.samsung.multiscreen.Service;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import org.fourthline.cling.model.meta.Device;
import org.greenrobot.eventbus.EventBus;

public class ScreenManager {
    /* access modifiers changed from: private */
    public static final String TAG = "ScreenManager";
    private static ScreenManager upnpManager;
    /* access modifiers changed from: private */
    public List<ClingDevice> mClingDevices;
    private ClingPlayControl mClingPlayControl = new ClingPlayControl();
    /* access modifiers changed from: private */
    public Context mContext;
    /* access modifiers changed from: private */
    public DlnaDeviceListener mDlnaDeviceListener;
    /* access modifiers changed from: private */
    public BrowseRegistryListener mDlnaTempListener = new BrowseRegistryListener();
    private GoogleDeviceListener mGoogleDeviceListener;
    /* access modifiers changed from: private */
    public final Handler mHandler;
    /* access modifiers changed from: private */
    public SamsungDeviceListener mSamsungDeviceListener;
    /* access modifiers changed from: private */
    public Search mSearch;
    public int mSelectDeviceType;
    /* access modifiers changed from: private */
    public List<Service> mSumsanDevices;
    private TransportStateBroadcastReceiver mTransportStateBroadcastReceiver;
    private ServiceConnection mUpnpServiceConnection = new ServiceConnection() {
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.e(ScreenManager.TAG, "mUpnpServiceConnection onServiceConnected");
            ClingUpnpService service = ((LocalBinder) iBinder).getService();
            ClingManager instance = ClingManager.getInstance();
            instance.setUpnpService(service);
            instance.setDeviceManager(new DeviceManager());
            instance.getRegistry().addListener(ScreenManager.this.mDlnaTempListener);
            instance.searchDevices();
        }

        public void onServiceDisconnected(ComponentName componentName) {
            Log.e(ScreenManager.TAG, "mUpnpServiceConnection onServiceDisconnected");
            ClingManager.getInstance().setUpnpService(null);
        }
    };
    public String name;
    public int progressMax;
    public String seo;
    public String tid;
    public String title;
    public String url;

    public interface CallBack {
        void onCurrentPosition(int i);
    }

    public interface DlnaDeviceListener {
        void onDlnaDeviceAdd(IDevice iDevice);

        void onDlnaDeviceRemoved(IDevice iDevice);
    }

    public interface GoogleDeviceListener {
        void onGoogleDeviceState(int i);
    }

    public interface SamsungDeviceListener {
        void onSamsungDeviceAdd(Service service);

        void onSamsungDeviceRemoved(Service service);
    }

    private class TransportStateBroadcastReceiver extends BroadcastReceiver {
        private TransportStateBroadcastReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            String access$400 = ScreenManager.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("Receive playback intent:");
            sb.append(action);
            Log.e(access$400, sb.toString());
            if (!"com.zane.androidupnpdemo.action.playing".equals(action) && !"com.zane.androidupnpdemo.action.paused_playback".equals(action) && !"com.zane.androidupnpdemo.action.stopped".equals(action)) {
                "com.zane.androidupnpdemo.action.transitioning".equals(action);
            }
        }
    }

    private ScreenManager(Context context) {
        String str = "";
        this.tid = str;
        this.seo = str;
        this.name = str;
        this.title = str;
        this.url = str;
        this.mContext = context;
        this.mHandler = new Handler();
    }

    public static ScreenManager getInstance(Context context) {
        if (upnpManager == null) {
            synchronized (ScreenManager.class) {
                upnpManager = new ScreenManager((Context) new WeakReference(context).get());
            }
        }
        return upnpManager;
    }

    public void initScreenService() {
        this.mClingDevices = new ArrayList();
        this.mSumsanDevices = new ArrayList();
        this.mDlnaTempListener.setOnDeviceListChangedListener(new DeviceListChangedListener() {
            public void onDeviceAdded(final IDevice iDevice) {
                ScreenManager.this.mHandler.post(new Runnable() {
                    public void run() {
                        if (iDevice != null && !ScreenManager.this.mClingDevices.contains((ClingDevice) iDevice)) {
                            ScreenManager.this.mClingDevices.add((ClingDevice) iDevice);
                            if (ScreenManager.this.mDlnaDeviceListener != null) {
                                ScreenManager.this.mDlnaDeviceListener.onDlnaDeviceAdd(iDevice);
                            }
                            TestEvent testEvent = new TestEvent();
                            testEvent.message = TestEvent.ADD_DEVICE;
                            testEvent.tag = 1007;
                            EventBus.getDefault().post(testEvent);
                        }
                    }
                });
            }

            public void onDeviceRemoved(final IDevice iDevice) {
                ScreenManager.this.mHandler.post(new Runnable() {
                    public void run() {
                        if (iDevice != null && ScreenManager.this.mClingDevices.contains((ClingDevice) iDevice)) {
                            ScreenManager.this.mClingDevices.remove((ClingDevice) iDevice);
                            if (ScreenManager.this.mDlnaDeviceListener != null) {
                                ScreenManager.this.mDlnaDeviceListener.onDlnaDeviceRemoved(iDevice);
                            }
                            TestEvent testEvent = new TestEvent();
                            testEvent.message = TestEvent.REMOVE_DEVICE;
                            testEvent.tag = 1007;
                            EventBus.getDefault().post(testEvent);
                        }
                    }
                });
            }
        });
        this.mContext.bindService(new Intent(this.mContext, ClingUpnpService.class), this.mUpnpServiceConnection, 1);
        registerReceivers();
        searchSumDevices();
    }

    private void registerReceivers() {
        this.mTransportStateBroadcastReceiver = new TransportStateBroadcastReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.zane.androidupnpdemo.action.playing");
        intentFilter.addAction("com.zane.androidupnpdemo.action.paused_playback");
        intentFilter.addAction("com.zane.androidupnpdemo.action.stopped");
        intentFilter.addAction("com.zane.androidupnpdemo.action.transitioning");
        this.mContext.registerReceiver(this.mTransportStateBroadcastReceiver, intentFilter);
    }

    private void searchSumDevices() {
        new Thread() {
            public void run() {
                super.run();
                try {
                    ScreenManager.this.mSearch = Service.search(ScreenManager.this.mContext);
                    if (ScreenManager.this.mSearch == null) {
                        String access$400 = ScreenManager.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Device (");
                        sb.append(ScreenManager.this.mSearch);
                        sb.append(") Search instantiated..");
                        Log.v(access$400, sb.toString());
                        ScreenManager.this.mSearch.setOnServiceFoundListener(new OnServiceFoundListener() {
                            public void onFound(final Service service) {
                                String access$400 = ScreenManager.TAG;
                                StringBuilder sb = new StringBuilder();
                                sb.append("setOnServiceFoundListener(): onFound(): Service Added: ");
                                sb.append(service);
                                Log.v(access$400, sb.toString());
                                if (service == null) {
                                    Log.w(ScreenManager.TAG, "updateTVList(): NULL service!!!");
                                } else {
                                    ScreenManager.this.mHandler.post(new Runnable() {
                                        public void run() {
                                            if (!ScreenManager.this.mSumsanDevices.contains(service)) {
                                                ScreenManager.this.mSumsanDevices.add(service);
                                                TestEvent testEvent = new TestEvent();
                                                testEvent.message = TestEvent.ADD_DEVICE;
                                                testEvent.tag = 1006;
                                                EventBus.getDefault().post(testEvent);
                                                if (ScreenManager.this.mSamsungDeviceListener != null) {
                                                    ScreenManager.this.mSamsungDeviceListener.onSamsungDeviceAdd(service);
                                                }
                                            }
                                        }
                                    });
                                }
                            }
                        });
                        ScreenManager.this.mSearch.setOnStartListener(new OnStartListener() {
                            public void onStart() {
                                Log.v(ScreenManager.TAG, "Starting Discovery.");
                            }
                        });
                        ScreenManager.this.mSearch.setOnStopListener(new OnStopListener() {
                            public void onStop() {
                                Log.v(ScreenManager.TAG, "Discovery Stopped.");
                            }
                        });
                        ScreenManager.this.mSearch.setOnServiceLostListener(new OnServiceLostListener() {
                            public void onLost(final Service service) {
                                Log.v(ScreenManager.TAG, "Discovery: Service Lost!!!");
                                if (service != null) {
                                    ScreenManager.this.mHandler.post(new Runnable() {
                                        public void run() {
                                            if (ScreenManager.this.mSumsanDevices.contains(service)) {
                                                ScreenManager.this.mSumsanDevices.remove(service);
                                                TestEvent testEvent = new TestEvent();
                                                testEvent.message = TestEvent.REMOVE_DEVICE;
                                                testEvent.tag = 1006;
                                                EventBus.getDefault().post(testEvent);
                                                if (ScreenManager.this.mSamsungDeviceListener != null) {
                                                    ScreenManager.this.mSamsungDeviceListener.onSamsungDeviceRemoved(service);
                                                }
                                            }
                                        }
                                    });
                                }
                            }
                        });
                    }
                    if (ScreenManager.this.mSearch.start(Boolean.valueOf(true))) {
                        Log.v(ScreenManager.TAG, "Discovery Already Started..");
                    } else {
                        Log.v(ScreenManager.TAG, "New Discovery Started..");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public DlnaDeviceListener getDlnaDeviceListener() {
        return this.mDlnaDeviceListener;
    }

    public void setDlnaDeviceListener(DlnaDeviceListener dlnaDeviceListener) {
        this.mDlnaDeviceListener = dlnaDeviceListener;
    }

    public GoogleDeviceListener getGoogleDeviceListener() {
        return this.mGoogleDeviceListener;
    }

    public void setGoogleDeviceListener(GoogleDeviceListener googleDeviceListener) {
        this.mGoogleDeviceListener = googleDeviceListener;
    }

    public SamsungDeviceListener getSamsungDeviceListener() {
        return this.mSamsungDeviceListener;
    }

    public void setSamsungDeviceListener(SamsungDeviceListener samsungDeviceListener) {
        this.mSamsungDeviceListener = samsungDeviceListener;
    }

    public List<ClingDevice> getClingDevices() {
        return this.mClingDevices;
    }

    public List<Service> getSumsamDeivces() {
        return this.mSumsanDevices;
    }

    public void selectDevice(int i, int i2, String str, String str2) {
        this.mSelectDeviceType = i2;
        if (i2 == 1006) {
            MediaLauncherSingleton.getInstance(this.mContext).setService((Service) getInstance(this.mContext).getSumsamDeivces().get(i));
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            MediaLauncherSingleton.getInstance(this.mContext).playContent(str, str2, "");
        } else if (i2 == 1007) {
            ClingDevice clingDevice = (ClingDevice) getInstance(this.mContext).getClingDevices().get(i);
            if (!Utils.isNull(clingDevice)) {
                ClingManager.getInstance().setSelectedDevice(clingDevice);
                Device device = clingDevice.getDevice();
                if (!Utils.isNull(device)) {
                    String format = String.format(this.mContext.getString(R.string.selectedText), new Object[]{device.getDetails().getFriendlyName()});
                    StringBuilder sb = new StringBuilder();
                    String str3 = "selectedDeviceName";
                    sb.append(str3);
                    sb.append(format);
                    String sb2 = sb.toString();
                    String str4 = TAG;
                    Log.d(str4, sb2);
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(str3);
                    sb3.append(format);
                    Log.d(str4, sb3.toString());
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("itemshifou");
                    sb4.append(clingDevice.isSelected());
                    Log.d(str4, sb4.toString());
                    getInstance(this.mContext).play(str, str2, new ControlCallback() {
                        public void fail(IResponse iResponse) {
                        }

                        public void success(IResponse iResponse) {
                            ClingManager.getInstance().registerAVTransport(ScreenManager.this.mContext);
                            ClingManager.getInstance().registerRenderingControl(ScreenManager.this.mContext);
                        }
                    });
                }
            }
        }
    }

    public void release() {
        Log.d(TAG, "release");
        stop();
        List<Service> list = this.mSumsanDevices;
        if (list != null) {
            list.clear();
        }
        List<ClingDevice> list2 = this.mClingDevices;
        if (list2 != null) {
            list2.clear();
        }
        Context context = this.mContext;
        if (context != null) {
            ServiceConnection serviceConnection = this.mUpnpServiceConnection;
            if (serviceConnection != null) {
                context.unbindService(serviceConnection);
            }
            TransportStateBroadcastReceiver transportStateBroadcastReceiver = this.mTransportStateBroadcastReceiver;
            if (transportStateBroadcastReceiver != null) {
                this.mContext.unregisterReceiver(transportStateBroadcastReceiver);
            }
            try {
                ClingManager.getInstance().destroy();
                ClingDeviceList.getInstance().destroy();
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (this.mSearch != null) {
                    this.mSearch.stop();
                    this.mSearch = null;
                    Log.v(TAG, "Stopping Discovery.");
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        upnpManager = null;
    }

    public void play(String str, String str2, ControlCallback controlCallback) {
        String str3 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("play url ");
        sb.append(str);
        Log.d(str3, sb.toString());
        int currentState = this.mClingPlayControl.getCurrentState();
        String str4 = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("1currentState");
        sb2.append(currentState);
        Log.d(str4, sb2.toString());
        this.mClingPlayControl.playNew(str, controlCallback);
    }

    public void pause() {
        int i = this.mSelectDeviceType;
        if (i == 1006) {
            MediaLauncherSingleton.getInstance(this.mContext).pause();
        } else if (i == 1007) {
            Log.d(TAG, "运行pause");
            this.mClingPlayControl.pause(new ControlCallback() {
                public void fail(IResponse iResponse) {
                }

                public void success(IResponse iResponse) {
                }
            });
        }
    }

    public void stop() {
        int i = this.mSelectDeviceType;
        if (i == 1006) {
            MediaLauncherSingleton.getInstance(this.mContext).stop();
        } else if (i == 1007) {
            this.mClingPlayControl.stop(new ControlCallback() {
                public void success(IResponse iResponse) {
                    Log.d(ScreenManager.TAG, "stop success");
                }

                public void fail(IResponse iResponse) {
                    Log.d(ScreenManager.TAG, "stop fail");
                }
            });
        }
    }

    public void restartPlay() {
        int i = this.mSelectDeviceType;
        if (i == 1006) {
            MediaLauncherSingleton.getInstance(this.mContext).play();
        } else if (i == 1007) {
            this.mClingPlayControl.play(new ControlCallback() {
                public void success(IResponse iResponse) {
                }

                public void fail(IResponse iResponse) {
                    Log.d(ScreenManager.TAG, "play fail");
                }
            });
        }
    }

    public void seek(int i) {
        int i2 = this.mSelectDeviceType;
        if (i2 == 1006) {
            MediaLauncherSingleton.getInstance(this.mContext).seekTo(i);
        } else if (i2 == 1007) {
            this.mClingPlayControl.seek(i, new ControlCallback() {
                public void fail(IResponse iResponse) {
                }

                public void success(IResponse iResponse) {
                }
            });
        }
    }

    public void getCurrentTime(final CallBack callBack) {
        if (callBack != null) {
            int i = this.mSelectDeviceType;
            if (i != 1006 && i == 1007) {
                this.mClingPlayControl.getPositionInfo(new ControlReceiveCallback() {
                    public void fail(IResponse iResponse) {
                    }

                    public void success(IResponse iResponse) {
                    }

                    public void receive(IResponse iResponse) {
                        String obj = iResponse.getResponse().toString();
                        String str = "RelTime:";
                        if (obj.contains(str)) {
                            String[] split = obj.split(str);
                            String access$400 = ScreenManager.TAG;
                            StringBuilder sb = new StringBuilder();
                            sb.append("getPositionInfo reltime");
                            sb.append(split[1]);
                            Log.d(access$400, sb.toString());
                            if (split.length >= 1) {
                                String str2 = "Duration:";
                                if (split[1].contains(str2)) {
                                    String[] split2 = split[1].split(str2);
                                    if (split2 != null) {
                                        String access$4002 = ScreenManager.TAG;
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("getPositionInfo duration[0]");
                                        sb2.append(split2[0]);
                                        Log.d(access$4002, sb2.toString());
                                        String str3 = ":";
                                        if (split2[0].contains(str3)) {
                                            String[] split3 = split2[0].split(str3);
                                            if (split3 != null) {
                                                String access$4003 = ScreenManager.TAG;
                                                StringBuilder sb3 = new StringBuilder();
                                                sb3.append("getPositionInfo dmaohao");
                                                sb3.append(split3.toString());
                                                Log.d(access$4003, sb3.toString());
                                                int i = 0;
                                                for (int i2 = 0; i2 < split3.length; i2++) {
                                                    if (i2 == 0) {
                                                        int parseInt = Integer.parseInt(split3[0].trim()) * 60 * 60;
                                                        String access$4004 = ScreenManager.TAG;
                                                        StringBuilder sb4 = new StringBuilder();
                                                        sb4.append("getPositionInfo mll");
                                                        sb4.append(parseInt);
                                                        Log.d(access$4004, sb4.toString());
                                                        i += parseInt;
                                                    } else {
                                                        String str4 = "getPositionInfo myy";
                                                        if (i2 == 1) {
                                                            int parseInt2 = Integer.parseInt(split3[1].trim()) * 60;
                                                            i += parseInt2;
                                                            String access$4005 = ScreenManager.TAG;
                                                            StringBuilder sb5 = new StringBuilder();
                                                            sb5.append(str4);
                                                            sb5.append(parseInt2);
                                                            Log.d(access$4005, sb5.toString());
                                                        } else if (i2 == 2) {
                                                            int parseInt3 = Integer.parseInt(split3[2].trim());
                                                            i += parseInt3;
                                                            String access$4006 = ScreenManager.TAG;
                                                            StringBuilder sb6 = new StringBuilder();
                                                            sb6.append(str4);
                                                            sb6.append(parseInt3);
                                                            Log.d(access$4006, sb6.toString());
                                                        }
                                                    }
                                                }
                                                String access$4007 = ScreenManager.TAG;
                                                StringBuilder sb7 = new StringBuilder();
                                                sb7.append("getPositionInfo curettime");
                                                sb7.append(i);
                                                Log.d(access$4007, sb7.toString());
                                                callBack.onCurrentPosition(i);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                });
            }
        }
    }
}
