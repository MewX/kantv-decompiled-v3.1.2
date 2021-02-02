package com.kantv.ui.androidupnpdemo.control;

import android.util.Log;
import androidx.annotation.Nullable;
import com.kantv.ui.androidupnpdemo.control.callback.ControlCallback;
import com.kantv.ui.androidupnpdemo.control.callback.ControlReceiveCallback;
import com.kantv.ui.androidupnpdemo.entity.ClingPositionResponse;
import com.kantv.ui.androidupnpdemo.entity.ClingResponse;
import com.kantv.ui.androidupnpdemo.entity.ClingVolumeResponse;
import com.kantv.ui.androidupnpdemo.entity.IResponse;
import com.kantv.ui.androidupnpdemo.service.manager.ClingManager;
import com.kantv.ui.androidupnpdemo.util.ClingUtils;
import com.kantv.ui.androidupnpdemo.util.Utils;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.support.avtransport.callback.GetPositionInfo;
import org.fourthline.cling.support.avtransport.callback.Pause;
import org.fourthline.cling.support.avtransport.callback.Play;
import org.fourthline.cling.support.avtransport.callback.Seek;
import org.fourthline.cling.support.avtransport.callback.SetAVTransportURI;
import org.fourthline.cling.support.avtransport.callback.Stop;
import org.fourthline.cling.support.model.DIDLObject;
import org.fourthline.cling.support.model.PositionInfo;
import org.fourthline.cling.support.model.ProtocolInfo;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.item.VideoItem;
import org.fourthline.cling.support.renderingcontrol.callback.GetVolume;
import org.fourthline.cling.support.renderingcontrol.callback.SetMute;
import org.fourthline.cling.support.renderingcontrol.callback.SetVolume;
import org.seamless.util.MimeType;

public class ClingPlayControl implements IPlayControl {
    private static final String DIDL_LITE_FOOTER = "</DIDL-Lite>";
    private static final String DIDL_LITE_HEADER = "<?xml version=\"1.0\"?><DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" xmlns:dlna=\"urn:schemas-dlna-org:metadata-1-0/\">";
    private static final int RECEIVE_DELAY = 500;
    private static final String TAG = "ClingPlayControl";
    private int mCurrentState = 3;
    private long mVolumeLastTime;

    public void playNew(final String str, final ControlCallback controlCallback) {
        stop(new ControlCallback() {
            public void success(IResponse iResponse) {
                ClingPlayControl.this.setAVTransportURI(str, new ControlCallback() {
                    public void success(IResponse iResponse) {
                        ClingPlayControl.this.play(controlCallback);
                    }

                    public void fail(IResponse iResponse) {
                        if (Utils.isNotNull(controlCallback)) {
                            controlCallback.fail(iResponse);
                        }
                    }
                });
            }

            public void fail(IResponse iResponse) {
                if (Utils.isNotNull(controlCallback)) {
                    controlCallback.fail(iResponse);
                }
            }
        });
    }

    public void play(final ControlCallback controlCallback) {
        Service findServiceFromSelectedDevice = ClingUtils.findServiceFromSelectedDevice(ClingManager.AV_TRANSPORT_SERVICE);
        if (!Utils.isNull(findServiceFromSelectedDevice)) {
            ControlPoint controlPoint = ClingUtils.getControlPoint();
            if (!Utils.isNull(controlPoint)) {
                controlPoint.execute((ActionCallback) new Play(findServiceFromSelectedDevice) {
                    public void success(ActionInvocation actionInvocation) {
                        super.success(actionInvocation);
                        if (Utils.isNotNull(controlCallback)) {
                            controlCallback.success(new ClingResponse(actionInvocation));
                        }
                    }

                    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                        if (Utils.isNotNull(controlCallback)) {
                            controlCallback.fail(new ClingResponse(actionInvocation, upnpResponse, str));
                        }
                    }
                });
            }
        }
    }

    public void pause(final ControlCallback controlCallback) {
        Service findServiceFromSelectedDevice = ClingUtils.findServiceFromSelectedDevice(ClingManager.AV_TRANSPORT_SERVICE);
        if (!Utils.isNull(findServiceFromSelectedDevice)) {
            ControlPoint controlPoint = ClingUtils.getControlPoint();
            if (!Utils.isNull(controlPoint)) {
                controlPoint.execute((ActionCallback) new Pause(findServiceFromSelectedDevice) {
                    public void success(ActionInvocation actionInvocation) {
                        super.success(actionInvocation);
                        if (Utils.isNotNull(controlCallback)) {
                            controlCallback.success(new ClingResponse(actionInvocation));
                        }
                    }

                    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                        if (Utils.isNotNull(controlCallback)) {
                            controlCallback.fail(new ClingResponse(actionInvocation, upnpResponse, str));
                        }
                    }
                });
            }
        }
    }

    public void stop(final ControlCallback controlCallback) {
        Service findServiceFromSelectedDevice = ClingUtils.findServiceFromSelectedDevice(ClingManager.AV_TRANSPORT_SERVICE);
        if (!Utils.isNull(findServiceFromSelectedDevice)) {
            ControlPoint controlPoint = ClingUtils.getControlPoint();
            if (!Utils.isNull(controlPoint)) {
                controlPoint.execute((ActionCallback) new Stop(findServiceFromSelectedDevice) {
                    public void success(ActionInvocation actionInvocation) {
                        super.success(actionInvocation);
                        if (Utils.isNotNull(controlCallback)) {
                            controlCallback.success(new ClingResponse(actionInvocation));
                        }
                    }

                    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                        if (Utils.isNotNull(controlCallback)) {
                            controlCallback.fail(new ClingResponse(actionInvocation, upnpResponse, str));
                        }
                    }
                });
            }
        }
    }

    public void seek(int i, final ControlCallback controlCallback) {
        Service findServiceFromSelectedDevice = ClingUtils.findServiceFromSelectedDevice(ClingManager.AV_TRANSPORT_SERVICE);
        if (!Utils.isNull(findServiceFromSelectedDevice)) {
            ControlPoint controlPoint = ClingUtils.getControlPoint();
            if (!Utils.isNull(controlPoint)) {
                String stringTime = Utils.getStringTime(i);
                String str = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("seek->pos: ");
                sb.append(i);
                sb.append(", time: ");
                sb.append(stringTime);
                Log.e(str, sb.toString());
                controlPoint.execute((ActionCallback) new Seek(findServiceFromSelectedDevice, stringTime) {
                    public void success(ActionInvocation actionInvocation) {
                        super.success(actionInvocation);
                        if (Utils.isNotNull(controlCallback)) {
                            controlCallback.success(new ClingResponse(actionInvocation));
                        }
                    }

                    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                        if (Utils.isNotNull(controlCallback)) {
                            controlCallback.fail(new ClingResponse(actionInvocation, upnpResponse, str));
                        }
                    }
                });
            }
        }
    }

    public void setVolume(int i, @Nullable ControlCallback controlCallback) {
        Service findServiceFromSelectedDevice = ClingUtils.findServiceFromSelectedDevice(ClingManager.RENDERING_CONTROL_SERVICE);
        if (!Utils.isNull(findServiceFromSelectedDevice)) {
            ControlPoint controlPoint = ClingUtils.getControlPoint();
            if (!Utils.isNull(controlPoint)) {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis > this.mVolumeLastTime + 500) {
                    final ControlCallback controlCallback2 = controlCallback;
                    AnonymousClass6 r1 = new SetVolume(findServiceFromSelectedDevice, (long) i) {
                        public void success(ActionInvocation actionInvocation) {
                            if (Utils.isNotNull(controlCallback2)) {
                                controlCallback2.success(new ClingResponse(actionInvocation));
                            }
                        }

                        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                            if (Utils.isNotNull(controlCallback2)) {
                                controlCallback2.fail(new ClingResponse(actionInvocation, upnpResponse, str));
                            }
                        }
                    };
                    controlPoint.execute((ActionCallback) r1);
                }
                this.mVolumeLastTime = currentTimeMillis;
            }
        }
    }

    public void setMute(boolean z, @Nullable final ControlCallback controlCallback) {
        Service findServiceFromSelectedDevice = ClingUtils.findServiceFromSelectedDevice(ClingManager.RENDERING_CONTROL_SERVICE);
        if (!Utils.isNull(findServiceFromSelectedDevice)) {
            ControlPoint controlPoint = ClingUtils.getControlPoint();
            if (!Utils.isNull(controlPoint)) {
                controlPoint.execute((ActionCallback) new SetMute(findServiceFromSelectedDevice, z) {
                    public void success(ActionInvocation actionInvocation) {
                        if (Utils.isNotNull(controlCallback)) {
                            controlCallback.success(new ClingResponse(actionInvocation));
                        }
                    }

                    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                        if (Utils.isNotNull(controlCallback)) {
                            controlCallback.fail(new ClingResponse(actionInvocation, upnpResponse, str));
                        }
                    }
                });
            }
        }
    }

    /* access modifiers changed from: private */
    public void setAVTransportURI(String str, ControlCallback controlCallback) {
        if (!Utils.isNull(str)) {
            String pushMediaToRender = pushMediaToRender(str, "id", "name", "0");
            Service findServiceFromSelectedDevice = ClingUtils.findServiceFromSelectedDevice(ClingManager.AV_TRANSPORT_SERVICE);
            if (!Utils.isNull(findServiceFromSelectedDevice)) {
                ControlPoint controlPoint = ClingUtils.getControlPoint();
                if (!Utils.isNull(controlPoint)) {
                    final ControlCallback controlCallback2 = controlCallback;
                    AnonymousClass8 r3 = new SetAVTransportURI(findServiceFromSelectedDevice, str, pushMediaToRender) {
                        public void success(ActionInvocation actionInvocation) {
                            super.success(actionInvocation);
                            if (Utils.isNotNull(controlCallback2)) {
                                controlCallback2.success(new ClingResponse(actionInvocation));
                            }
                        }

                        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                            if (Utils.isNotNull(controlCallback2)) {
                                controlCallback2.fail(new ClingResponse(actionInvocation, upnpResponse, str));
                            }
                        }
                    };
                    controlPoint.execute((ActionCallback) r3);
                }
            }
        }
    }

    public void getPositionInfo(final ControlReceiveCallback controlReceiveCallback) {
        Service findServiceFromSelectedDevice = ClingUtils.findServiceFromSelectedDevice(ClingManager.AV_TRANSPORT_SERVICE);
        if (!Utils.isNull(findServiceFromSelectedDevice)) {
            Log.d(TAG, "Found media render service in device, sending get position");
            AnonymousClass9 r1 = new GetPositionInfo(findServiceFromSelectedDevice) {
                public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                    if (Utils.isNotNull(controlReceiveCallback)) {
                        controlReceiveCallback.fail(new ClingPositionResponse(actionInvocation, upnpResponse, str));
                    }
                }

                public void success(ActionInvocation actionInvocation) {
                    super.success(actionInvocation);
                    if (Utils.isNotNull(controlReceiveCallback)) {
                        controlReceiveCallback.success(new ClingPositionResponse(actionInvocation));
                    }
                }

                public void received(ActionInvocation actionInvocation, PositionInfo positionInfo) {
                    if (Utils.isNotNull(controlReceiveCallback)) {
                        controlReceiveCallback.receive(new ClingPositionResponse(actionInvocation, positionInfo));
                    }
                }
            };
            ControlPoint controlPoint = ClingUtils.getControlPoint();
            if (!Utils.isNull(controlPoint)) {
                controlPoint.execute((ActionCallback) r1);
            }
        }
    }

    public void getVolume(final ControlReceiveCallback controlReceiveCallback) {
        Service findServiceFromSelectedDevice = ClingUtils.findServiceFromSelectedDevice(ClingManager.RENDERING_CONTROL_SERVICE);
        if (!Utils.isNull(findServiceFromSelectedDevice)) {
            AnonymousClass10 r1 = new GetVolume(findServiceFromSelectedDevice) {
                public void received(ActionInvocation actionInvocation, int i) {
                    if (Utils.isNotNull(controlReceiveCallback)) {
                        controlReceiveCallback.receive(new ClingVolumeResponse(actionInvocation, Integer.valueOf(i)));
                    }
                }

                public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
                    if (Utils.isNotNull(controlReceiveCallback)) {
                        controlReceiveCallback.fail(new ClingVolumeResponse(actionInvocation, upnpResponse, str));
                    }
                }
            };
            ControlPoint controlPoint = ClingUtils.getControlPoint();
            if (!Utils.isNull(controlPoint)) {
                controlPoint.execute((ActionCallback) r1);
            }
        }
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    public void setCurrentState(int i) {
        if (this.mCurrentState != i) {
            this.mCurrentState = i;
        }
    }

    private String pushMediaToRender(String str, String str2, String str3, String str4) {
        String str5 = "*";
        String str6 = "0";
        String str7 = str2;
        String str8 = str3;
        VideoItem videoItem = new VideoItem(str7, str6, str8, "unknow", new Res(new MimeType(str5, str5), Long.valueOf(0), str));
        String createItemMetadata = createItemMetadata(videoItem);
        String str9 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("metadata: ");
        sb.append(createItemMetadata);
        Log.e(str9, sb.toString());
        return createItemMetadata;
    }

    private String createItemMetadata(DIDLObject dIDLObject) {
        StringBuilder sb = new StringBuilder();
        sb.append(DIDL_LITE_HEADER);
        Object[] objArr = new Object[3];
        objArr[0] = dIDLObject.getId();
        objArr[1] = dIDLObject.getParentID();
        objArr[2] = dIDLObject.isRestricted() ? "1" : "0";
        sb.append(String.format("<item id=\"%s\" parentID=\"%s\" restricted=\"%s\">", objArr));
        sb.append(String.format("<dc:title>%s</dc:title>", new Object[]{dIDLObject.getTitle()}));
        String creator = dIDLObject.getCreator();
        if (creator != null) {
            String str = EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR;
            creator = creator.replaceAll("<", str).replaceAll(">", str);
        }
        sb.append(String.format("<upnp:artist>%s</upnp:artist>", new Object[]{creator}));
        sb.append(String.format("<upnp:class>%s</upnp:class>", new Object[]{dIDLObject.getClazz().getValue()}));
        sb.append(String.format("<dc:date>%s</dc:date>", new Object[]{new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss").format(new Date())}));
        Res firstResource = dIDLObject.getFirstResource();
        if (firstResource != null) {
            ProtocolInfo protocolInfo = firstResource.getProtocolInfo();
            String str2 = "";
            String format = protocolInfo != null ? String.format("protocolInfo=\"%s:%s:%s:%s\"", new Object[]{protocolInfo.getProtocol(), protocolInfo.getNetwork(), protocolInfo.getContentFormatMimeType(), protocolInfo.getAdditionalInfo()}) : str2;
            String str3 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("protocolinfo: ");
            sb2.append(format);
            Log.e(str3, sb2.toString());
            String format2 = (firstResource.getResolution() == null || firstResource.getResolution().length() <= 0) ? str2 : String.format("resolution=\"%s\"", new Object[]{firstResource.getResolution()});
            if (firstResource.getDuration() != null && firstResource.getDuration().length() > 0) {
                str2 = String.format("duration=\"%s\"", new Object[]{firstResource.getDuration()});
            }
            sb.append(String.format("<res %s %s %s>", new Object[]{format, format2, str2}));
            sb.append(firstResource.getValue());
            sb.append("</res>");
        }
        sb.append("</item>");
        sb.append(DIDL_LITE_FOOTER);
        return sb.toString();
    }
}
