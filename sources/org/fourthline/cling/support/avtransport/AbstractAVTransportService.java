package org.fourthline.cling.support.avtransport;

import java.beans.PropertyChangeSupport;
import java.net.URI;
import org.fourthline.cling.binding.annotations.UpnpAction;
import org.fourthline.cling.binding.annotations.UpnpInputArgument;
import org.fourthline.cling.binding.annotations.UpnpOutputArgument;
import org.fourthline.cling.binding.annotations.UpnpService;
import org.fourthline.cling.binding.annotations.UpnpServiceId;
import org.fourthline.cling.binding.annotations.UpnpServiceType;
import org.fourthline.cling.binding.annotations.UpnpStateVariable;
import org.fourthline.cling.binding.annotations.UpnpStateVariables;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportLastChangeParser;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.AVTransportURI;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.AVTransportURIMetaData;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.CurrentMediaDuration;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.CurrentPlayMode;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.CurrentRecordQualityMode;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.CurrentTrack;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.CurrentTrackDuration;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.CurrentTrackMetaData;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.CurrentTrackURI;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.CurrentTransportActions;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.NextAVTransportURI;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.NextAVTransportURIMetaData;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.NumberOfTracks;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.PossiblePlaybackStorageMedia;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.PossibleRecordQualityModes;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.PossibleRecordStorageMedia;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.RecordStorageMedium;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.TransportPlaySpeed;
import org.fourthline.cling.support.lastchange.LastChange;
import org.fourthline.cling.support.lastchange.LastChangeDelegator;
import org.fourthline.cling.support.lastchange.LastChangeParser;
import org.fourthline.cling.support.model.DeviceCapabilities;
import org.fourthline.cling.support.model.MediaInfo;
import org.fourthline.cling.support.model.PlayMode;
import org.fourthline.cling.support.model.PositionInfo;
import org.fourthline.cling.support.model.RecordMediumWriteStatus;
import org.fourthline.cling.support.model.RecordQualityMode;
import org.fourthline.cling.support.model.SeekMode;
import org.fourthline.cling.support.model.StorageMedium;
import org.fourthline.cling.support.model.TransportAction;
import org.fourthline.cling.support.model.TransportInfo;
import org.fourthline.cling.support.model.TransportSettings;
import org.fourthline.cling.support.model.TransportState;
import org.fourthline.cling.support.model.TransportStatus;

@UpnpStateVariables({@UpnpStateVariable(allowedValuesEnum = TransportState.class, name = "TransportState", sendEvents = false), @UpnpStateVariable(allowedValuesEnum = TransportStatus.class, name = "TransportStatus", sendEvents = false), @UpnpStateVariable(allowedValuesEnum = StorageMedium.class, defaultValue = "NONE", name = "PlaybackStorageMedium", sendEvents = false), @UpnpStateVariable(allowedValuesEnum = StorageMedium.class, defaultValue = "NOT_IMPLEMENTED", name = "RecordStorageMedium", sendEvents = false), @UpnpStateVariable(datatype = "string", defaultValue = "NETWORK", name = "PossiblePlaybackStorageMedia", sendEvents = false), @UpnpStateVariable(datatype = "string", defaultValue = "NOT_IMPLEMENTED", name = "PossibleRecordStorageMedia", sendEvents = false), @UpnpStateVariable(allowedValuesEnum = PlayMode.class, defaultValue = "NORMAL", name = "CurrentPlayMode", sendEvents = false), @UpnpStateVariable(datatype = "string", defaultValue = "1", name = "TransportPlaySpeed", sendEvents = false), @UpnpStateVariable(allowedValuesEnum = RecordMediumWriteStatus.class, defaultValue = "NOT_IMPLEMENTED", name = "RecordMediumWriteStatus", sendEvents = false), @UpnpStateVariable(allowedValuesEnum = RecordQualityMode.class, defaultValue = "NOT_IMPLEMENTED", name = "CurrentRecordQualityMode", sendEvents = false), @UpnpStateVariable(datatype = "string", defaultValue = "NOT_IMPLEMENTED", name = "PossibleRecordQualityModes", sendEvents = false), @UpnpStateVariable(datatype = "ui4", defaultValue = "0", name = "NumberOfTracks", sendEvents = false), @UpnpStateVariable(datatype = "ui4", defaultValue = "0", name = "CurrentTrack", sendEvents = false), @UpnpStateVariable(datatype = "string", name = "CurrentTrackDuration", sendEvents = false), @UpnpStateVariable(datatype = "string", defaultValue = "00:00:00", name = "CurrentMediaDuration", sendEvents = false), @UpnpStateVariable(datatype = "string", defaultValue = "NOT_IMPLEMENTED", name = "CurrentTrackMetaData", sendEvents = false), @UpnpStateVariable(datatype = "string", name = "CurrentTrackURI", sendEvents = false), @UpnpStateVariable(datatype = "string", name = "AVTransportURI", sendEvents = false), @UpnpStateVariable(datatype = "string", defaultValue = "NOT_IMPLEMENTED", name = "AVTransportURIMetaData", sendEvents = false), @UpnpStateVariable(datatype = "string", defaultValue = "NOT_IMPLEMENTED", name = "NextAVTransportURI", sendEvents = false), @UpnpStateVariable(datatype = "string", defaultValue = "NOT_IMPLEMENTED", name = "NextAVTransportURIMetaData", sendEvents = false), @UpnpStateVariable(datatype = "string", name = "RelativeTimePosition", sendEvents = false), @UpnpStateVariable(datatype = "string", name = "AbsoluteTimePosition", sendEvents = false), @UpnpStateVariable(datatype = "i4", defaultValue = "2147483647", name = "RelativeCounterPosition", sendEvents = false), @UpnpStateVariable(datatype = "i4", defaultValue = "2147483647", name = "AbsoluteCounterPosition", sendEvents = false), @UpnpStateVariable(datatype = "string", name = "CurrentTransportActions", sendEvents = false), @UpnpStateVariable(allowedValuesEnum = SeekMode.class, name = "A_ARG_TYPE_SeekMode", sendEvents = false), @UpnpStateVariable(datatype = "string", name = "A_ARG_TYPE_SeekTarget", sendEvents = false), @UpnpStateVariable(datatype = "ui4", name = "A_ARG_TYPE_InstanceID", sendEvents = false)})
@UpnpService(serviceId = @UpnpServiceId("AVTransport"), serviceType = @UpnpServiceType(value = "AVTransport", version = 1), stringConvertibleTypes = {LastChange.class})
public abstract class AbstractAVTransportService implements LastChangeDelegator {
    @UpnpStateVariable(eventMaximumRateMilliseconds = 200)
    private final LastChange lastChange;
    protected final PropertyChangeSupport propertyChangeSupport;

    /* access modifiers changed from: protected */
    public abstract TransportAction[] getCurrentTransportActions(UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws Exception;

    @UpnpAction(out = {@UpnpOutputArgument(getterName = "getPlayMediaString", name = "PlayMedia", stateVariable = "PossiblePlaybackStorageMedia"), @UpnpOutputArgument(getterName = "getRecMediaString", name = "RecMedia", stateVariable = "PossibleRecordStorageMedia"), @UpnpOutputArgument(getterName = "getRecQualityModesString", name = "RecQualityModes", stateVariable = "PossibleRecordQualityModes")})
    public abstract DeviceCapabilities getDeviceCapabilities(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException;

    @UpnpAction(out = {@UpnpOutputArgument(getterName = "getNumberOfTracks", name = "NrTracks", stateVariable = "NumberOfTracks"), @UpnpOutputArgument(getterName = "getMediaDuration", name = "MediaDuration", stateVariable = "CurrentMediaDuration"), @UpnpOutputArgument(getterName = "getCurrentURI", name = "CurrentURI", stateVariable = "AVTransportURI"), @UpnpOutputArgument(getterName = "getCurrentURIMetaData", name = "CurrentURIMetaData", stateVariable = "AVTransportURIMetaData"), @UpnpOutputArgument(getterName = "getNextURI", name = "NextURI", stateVariable = "NextAVTransportURI"), @UpnpOutputArgument(getterName = "getNextURIMetaData", name = "NextURIMetaData", stateVariable = "NextAVTransportURIMetaData"), @UpnpOutputArgument(getterName = "getPlayMedium", name = "PlayMedium", stateVariable = "PlaybackStorageMedium"), @UpnpOutputArgument(getterName = "getRecordMedium", name = "RecordMedium", stateVariable = "RecordStorageMedium"), @UpnpOutputArgument(getterName = "getWriteStatus", name = "WriteStatus", stateVariable = "RecordMediumWriteStatus")})
    public abstract MediaInfo getMediaInfo(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException;

    @UpnpAction(out = {@UpnpOutputArgument(getterName = "getTrack", name = "Track", stateVariable = "CurrentTrack"), @UpnpOutputArgument(getterName = "getTrackDuration", name = "TrackDuration", stateVariable = "CurrentTrackDuration"), @UpnpOutputArgument(getterName = "getTrackMetaData", name = "TrackMetaData", stateVariable = "CurrentTrackMetaData"), @UpnpOutputArgument(getterName = "getTrackURI", name = "TrackURI", stateVariable = "CurrentTrackURI"), @UpnpOutputArgument(getterName = "getRelTime", name = "RelTime", stateVariable = "RelativeTimePosition"), @UpnpOutputArgument(getterName = "getAbsTime", name = "AbsTime", stateVariable = "AbsoluteTimePosition"), @UpnpOutputArgument(getterName = "getRelCount", name = "RelCount", stateVariable = "RelativeCounterPosition"), @UpnpOutputArgument(getterName = "getAbsCount", name = "AbsCount", stateVariable = "AbsoluteCounterPosition")})
    public abstract PositionInfo getPositionInfo(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException;

    @UpnpAction(out = {@UpnpOutputArgument(getterName = "getCurrentTransportState", name = "CurrentTransportState", stateVariable = "TransportState"), @UpnpOutputArgument(getterName = "getCurrentTransportStatus", name = "CurrentTransportStatus", stateVariable = "TransportStatus"), @UpnpOutputArgument(getterName = "getCurrentSpeed", name = "CurrentSpeed", stateVariable = "TransportPlaySpeed")})
    public abstract TransportInfo getTransportInfo(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException;

    @UpnpAction(out = {@UpnpOutputArgument(getterName = "getPlayMode", name = "PlayMode", stateVariable = "CurrentPlayMode"), @UpnpOutputArgument(getterName = "getRecQualityMode", name = "RecQualityMode", stateVariable = "CurrentRecordQualityMode")})
    public abstract TransportSettings getTransportSettings(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException;

    @UpnpAction
    public abstract void next(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException;

    @UpnpAction
    public abstract void pause(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException;

    @UpnpAction
    public abstract void play(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes, @UpnpInputArgument(name = "Speed", stateVariable = "TransportPlaySpeed") String str) throws AVTransportException;

    @UpnpAction
    public abstract void previous(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException;

    @UpnpAction
    public abstract void record(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException;

    @UpnpAction
    public abstract void seek(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes, @UpnpInputArgument(name = "Unit", stateVariable = "A_ARG_TYPE_SeekMode") String str, @UpnpInputArgument(name = "Target", stateVariable = "A_ARG_TYPE_SeekTarget") String str2) throws AVTransportException;

    @UpnpAction
    public abstract void setAVTransportURI(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes, @UpnpInputArgument(name = "CurrentURI", stateVariable = "AVTransportURI") String str, @UpnpInputArgument(name = "CurrentURIMetaData", stateVariable = "AVTransportURIMetaData") String str2) throws AVTransportException;

    @UpnpAction
    public abstract void setNextAVTransportURI(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes, @UpnpInputArgument(name = "NextURI", stateVariable = "AVTransportURI") String str, @UpnpInputArgument(name = "NextURIMetaData", stateVariable = "AVTransportURIMetaData") String str2) throws AVTransportException;

    @UpnpAction
    public abstract void setPlayMode(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes, @UpnpInputArgument(name = "NewPlayMode", stateVariable = "CurrentPlayMode") String str) throws AVTransportException;

    @UpnpAction
    public abstract void setRecordQualityMode(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes, @UpnpInputArgument(name = "NewRecordQualityMode", stateVariable = "CurrentRecordQualityMode") String str) throws AVTransportException;

    @UpnpAction
    public abstract void stop(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException;

    protected AbstractAVTransportService() {
        this.propertyChangeSupport = new PropertyChangeSupport(this);
        this.lastChange = new LastChange((LastChangeParser) new AVTransportLastChangeParser());
    }

    protected AbstractAVTransportService(LastChange lastChange2) {
        this.propertyChangeSupport = new PropertyChangeSupport(this);
        this.lastChange = lastChange2;
    }

    protected AbstractAVTransportService(PropertyChangeSupport propertyChangeSupport2) {
        this.propertyChangeSupport = propertyChangeSupport2;
        this.lastChange = new LastChange((LastChangeParser) new AVTransportLastChangeParser());
    }

    protected AbstractAVTransportService(PropertyChangeSupport propertyChangeSupport2, LastChange lastChange2) {
        this.propertyChangeSupport = propertyChangeSupport2;
        this.lastChange = lastChange2;
    }

    public LastChange getLastChange() {
        return this.lastChange;
    }

    public void appendCurrentState(LastChange lastChange2, UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws Exception {
        MediaInfo mediaInfo = getMediaInfo(unsignedIntegerFourBytes);
        TransportInfo transportInfo = getTransportInfo(unsignedIntegerFourBytes);
        TransportSettings transportSettings = getTransportSettings(unsignedIntegerFourBytes);
        PositionInfo positionInfo = getPositionInfo(unsignedIntegerFourBytes);
        DeviceCapabilities deviceCapabilities = getDeviceCapabilities(unsignedIntegerFourBytes);
        lastChange2.setEventedValue(unsignedIntegerFourBytes, new AVTransportURI(URI.create(mediaInfo.getCurrentURI())), new AVTransportURIMetaData(mediaInfo.getCurrentURIMetaData()), new CurrentMediaDuration(mediaInfo.getMediaDuration()), new CurrentPlayMode(transportSettings.getPlayMode()), new CurrentRecordQualityMode(transportSettings.getRecQualityMode()), new CurrentTrack(positionInfo.getTrack()), new CurrentTrackDuration(positionInfo.getTrackDuration()), new CurrentTrackMetaData(positionInfo.getTrackMetaData()), new CurrentTrackURI(URI.create(positionInfo.getTrackURI())), new CurrentTransportActions(getCurrentTransportActions(unsignedIntegerFourBytes)), new NextAVTransportURI(URI.create(mediaInfo.getNextURI())), new NextAVTransportURIMetaData(mediaInfo.getNextURIMetaData()), new NumberOfTracks(mediaInfo.getNumberOfTracks()), new PossiblePlaybackStorageMedia(deviceCapabilities.getPlayMedia()), new PossibleRecordQualityModes(deviceCapabilities.getRecQualityModes()), new PossibleRecordStorageMedia(deviceCapabilities.getRecMedia()), new AVTransportVariable.RecordMediumWriteStatus(mediaInfo.getWriteStatus()), new RecordStorageMedium(mediaInfo.getRecordMedium()), new TransportPlaySpeed(transportInfo.getCurrentSpeed()), new AVTransportVariable.TransportState(transportInfo.getCurrentTransportState()), new AVTransportVariable.TransportStatus(transportInfo.getCurrentTransportStatus()));
    }

    public PropertyChangeSupport getPropertyChangeSupport() {
        return this.propertyChangeSupport;
    }

    public static UnsignedIntegerFourBytes getDefaultInstanceID() {
        return new UnsignedIntegerFourBytes(0);
    }

    @UpnpAction(name = "GetCurrentTransportActions", out = {@UpnpOutputArgument(name = "Actions", stateVariable = "CurrentTransportActions")})
    public String getCurrentTransportActionsString(@UpnpInputArgument(name = "InstanceID") UnsignedIntegerFourBytes unsignedIntegerFourBytes) throws AVTransportException {
        try {
            return ModelUtil.toCommaSeparatedList(getCurrentTransportActions(unsignedIntegerFourBytes));
        } catch (Exception unused) {
            return "";
        }
    }
}
