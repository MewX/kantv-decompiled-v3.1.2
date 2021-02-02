package org.fourthline.cling.support.avtransport.impl;

import java.net.URI;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.support.avtransport.AVTransportErrorCode;
import org.fourthline.cling.support.avtransport.AVTransportException;
import org.fourthline.cling.support.avtransport.AbstractAVTransportService;
import org.fourthline.cling.support.avtransport.impl.state.AbstractState;
import org.fourthline.cling.support.lastchange.LastChange;
import org.fourthline.cling.support.model.AVTransport;
import org.fourthline.cling.support.model.DeviceCapabilities;
import org.fourthline.cling.support.model.MediaInfo;
import org.fourthline.cling.support.model.PlayMode;
import org.fourthline.cling.support.model.PositionInfo;
import org.fourthline.cling.support.model.RecordQualityMode;
import org.fourthline.cling.support.model.SeekMode;
import org.fourthline.cling.support.model.StorageMedium;
import org.fourthline.cling.support.model.TransportAction;
import org.fourthline.cling.support.model.TransportInfo;
import org.fourthline.cling.support.model.TransportSettings;
import org.seamless.statemachine.StateMachineBuilder;
import org.seamless.statemachine.TransitionException;

public class AVTransportService<T extends AVTransport> extends AbstractAVTransportService {
    private static final Logger log = Logger.getLogger(AVTransportService.class.getName());
    final Class<? extends AbstractState> initialState;
    final Class<? extends AVTransportStateMachine> stateMachineDefinition;
    private final Map<Long, AVTransportStateMachine> stateMachines;
    final Class<? extends AVTransport> transportClass;

    public AVTransportService(Class<? extends AVTransportStateMachine> cls, Class<? extends AbstractState> cls2) {
        this(cls, cls2, AVTransport.class);
    }

    public AVTransportService(Class<? extends AVTransportStateMachine> cls, Class<? extends AbstractState> cls2, Class<T> cls3) {
        this.stateMachines = new ConcurrentHashMap();
        this.stateMachineDefinition = cls;
        this.initialState = cls2;
        this.transportClass = cls3;
    }

    public void setAVTransportURI(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str, String str2) throws AVTransportException {
        try {
            try {
                findStateMachine(unsignedIntegerFourBytes, true).setTransportURI(new URI(str), str2);
            } catch (TransitionException e) {
                throw new AVTransportException(AVTransportErrorCode.TRANSITION_NOT_AVAILABLE, e.getMessage());
            }
        } catch (Exception unused) {
            throw new AVTransportException(ErrorCode.INVALID_ARGS, "CurrentURI can not be null or malformed");
        }
    }

    public void setNextAVTransportURI(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str, String str2) throws AVTransportException {
        try {
            try {
                findStateMachine(unsignedIntegerFourBytes, true).setNextTransportURI(new URI(str), str2);
            } catch (TransitionException e) {
                throw new AVTransportException(AVTransportErrorCode.TRANSITION_NOT_AVAILABLE, e.getMessage());
            }
        } catch (Exception unused) {
            throw new AVTransportException(ErrorCode.INVALID_ARGS, "NextURI can not be null or malformed");
        }
    }

    public void setPlayMode(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str) throws AVTransportException {
        AVTransport transport = ((AbstractState) findStateMachine(unsignedIntegerFourBytes).getCurrentState()).getTransport();
        try {
            transport.setTransportSettings(new TransportSettings(PlayMode.valueOf(str), transport.getTransportSettings().getRecQualityMode()));
        } catch (IllegalArgumentException unused) {
            AVTransportErrorCode aVTransportErrorCode = AVTransportErrorCode.PLAYMODE_NOT_SUPPORTED;
            StringBuilder sb = new StringBuilder();
            sb.append("Unsupported play mode: ");
            sb.append(str);
            throw new AVTransportException(aVTransportErrorCode, sb.toString());
        }
    }

    public void setRecordQualityMode(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str) throws AVTransportException {
        AVTransport transport = ((AbstractState) findStateMachine(unsignedIntegerFourBytes).getCurrentState()).getTransport();
        try {
            transport.setTransportSettings(new TransportSettings(transport.getTransportSettings().getPlayMode(), RecordQualityMode.valueOrExceptionOf(str)));
        } catch (IllegalArgumentException unused) {
            AVTransportErrorCode aVTransportErrorCode = AVTransportErrorCode.RECORDQUALITYMODE_NOT_SUPPORTED;
            StringBuilder sb = new StringBuilder();
            sb.append("Unsupported record quality mode: ");
            sb.append(str);
            throw new AVTransportException(aVTransportErrorCode, sb.toString());
        }
    }

    public MediaInfo getMediaInfo(UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException {
        return ((AbstractState) findStateMachine(unsignedIntegerFourBytes).getCurrentState()).getTransport().getMediaInfo();
    }

    public TransportInfo getTransportInfo(UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException {
        return ((AbstractState) findStateMachine(unsignedIntegerFourBytes).getCurrentState()).getTransport().getTransportInfo();
    }

    public PositionInfo getPositionInfo(UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException {
        return ((AbstractState) findStateMachine(unsignedIntegerFourBytes).getCurrentState()).getTransport().getPositionInfo();
    }

    public DeviceCapabilities getDeviceCapabilities(UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException {
        return ((AbstractState) findStateMachine(unsignedIntegerFourBytes).getCurrentState()).getTransport().getDeviceCapabilities();
    }

    public TransportSettings getTransportSettings(UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException {
        return ((AbstractState) findStateMachine(unsignedIntegerFourBytes).getCurrentState()).getTransport().getTransportSettings();
    }

    public void stop(UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException {
        try {
            findStateMachine(unsignedIntegerFourBytes).stop();
        } catch (TransitionException e) {
            throw new AVTransportException(AVTransportErrorCode.TRANSITION_NOT_AVAILABLE, e.getMessage());
        }
    }

    public void play(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str) throws AVTransportException {
        try {
            findStateMachine(unsignedIntegerFourBytes).play(str);
        } catch (TransitionException e) {
            throw new AVTransportException(AVTransportErrorCode.TRANSITION_NOT_AVAILABLE, e.getMessage());
        }
    }

    public void pause(UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException {
        try {
            findStateMachine(unsignedIntegerFourBytes).pause();
        } catch (TransitionException e) {
            throw new AVTransportException(AVTransportErrorCode.TRANSITION_NOT_AVAILABLE, e.getMessage());
        }
    }

    public void record(UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException {
        try {
            findStateMachine(unsignedIntegerFourBytes).record();
        } catch (TransitionException e) {
            throw new AVTransportException(AVTransportErrorCode.TRANSITION_NOT_AVAILABLE, e.getMessage());
        }
    }

    public void seek(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str, String str2) throws AVTransportException {
        try {
            try {
                findStateMachine(unsignedIntegerFourBytes).seek(SeekMode.valueOrExceptionOf(str), str2);
            } catch (TransitionException e) {
                throw new AVTransportException(AVTransportErrorCode.TRANSITION_NOT_AVAILABLE, e.getMessage());
            }
        } catch (IllegalArgumentException unused) {
            AVTransportErrorCode aVTransportErrorCode = AVTransportErrorCode.SEEKMODE_NOT_SUPPORTED;
            StringBuilder sb = new StringBuilder();
            sb.append("Unsupported seek mode: ");
            sb.append(str);
            throw new AVTransportException(aVTransportErrorCode, sb.toString());
        }
    }

    public void next(UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException {
        try {
            findStateMachine(unsignedIntegerFourBytes).next();
        } catch (TransitionException e) {
            throw new AVTransportException(AVTransportErrorCode.TRANSITION_NOT_AVAILABLE, e.getMessage());
        }
    }

    public void previous(UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException {
        try {
            findStateMachine(unsignedIntegerFourBytes).previous();
        } catch (TransitionException e) {
            throw new AVTransportException(AVTransportErrorCode.TRANSITION_NOT_AVAILABLE, e.getMessage());
        }
    }

    /* access modifiers changed from: protected */
    public TransportAction[] getCurrentTransportActions(UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws Exception {
        try {
            return ((AbstractState) findStateMachine(unsignedIntegerFourBytes).getCurrentState()).getCurrentTransportActions();
        } catch (TransitionException unused) {
            return new TransportAction[0];
        }
    }

    public UnsignedIntegerFourBytes[] getCurrentInstanceIds() {
        UnsignedIntegerFourBytes[] unsignedIntegerFourBytesArr;
        synchronized (this.stateMachines) {
            unsignedIntegerFourBytesArr = new UnsignedIntegerFourBytes[this.stateMachines.size()];
            int i = 0;
            for (Long longValue : this.stateMachines.keySet()) {
                unsignedIntegerFourBytesArr[i] = new UnsignedIntegerFourBytes(longValue.longValue());
                i++;
            }
        }
        return unsignedIntegerFourBytesArr;
    }

    /* access modifiers changed from: protected */
    public AVTransportStateMachine findStateMachine(UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException {
        return findStateMachine(unsignedIntegerFourBytes, true);
    }

    /* access modifiers changed from: protected */
    public AVTransportStateMachine findStateMachine(UnsignedIntegerFourBytes unsignedIntegerFourBytes, boolean z) throws AVTransportException {
        AVTransportStateMachine aVTransportStateMachine;
        synchronized (this.stateMachines) {
            long longValue = unsignedIntegerFourBytes.getValue().longValue();
            aVTransportStateMachine = (AVTransportStateMachine) this.stateMachines.get(Long.valueOf(longValue));
            if (aVTransportStateMachine == null && longValue == 0 && z) {
                log.fine("Creating default transport instance with ID '0'");
                aVTransportStateMachine = createStateMachine(unsignedIntegerFourBytes);
                this.stateMachines.put(Long.valueOf(longValue), aVTransportStateMachine);
            } else if (aVTransportStateMachine == null) {
                throw new AVTransportException(AVTransportErrorCode.INVALID_INSTANCE_ID);
            }
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Found transport control with ID '");
            sb.append(longValue);
            sb.append("'");
            logger.fine(sb.toString());
        }
        return aVTransportStateMachine;
    }

    /* access modifiers changed from: protected */
    public AVTransportStateMachine createStateMachine(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        return (AVTransportStateMachine) StateMachineBuilder.build(this.stateMachineDefinition, this.initialState, new Class[]{this.transportClass}, new Object[]{createTransport(unsignedIntegerFourBytes, getLastChange())});
    }

    /* access modifiers changed from: protected */
    public AVTransport createTransport(UnsignedIntegerFourBytes unsignedIntegerFourBytes, LastChange lastChange) {
        return new AVTransport(unsignedIntegerFourBytes, lastChange, StorageMedium.NETWORK);
    }
}
