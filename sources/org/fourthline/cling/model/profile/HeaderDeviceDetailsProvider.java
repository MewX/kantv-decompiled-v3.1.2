package org.fourthline.cling.model.profile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.fourthline.cling.model.meta.DeviceDetails;

public class HeaderDeviceDetailsProvider implements DeviceDetailsProvider {
    private final DeviceDetails defaultDeviceDetails;
    private final Map<Key, DeviceDetails> headerDetails;

    public static class Key {
        final String headerName;
        final Pattern pattern;
        final String valuePattern;

        public Key(String str, String str2) {
            this.headerName = str;
            this.valuePattern = str2;
            this.pattern = Pattern.compile(str2, 2);
        }

        public String getHeaderName() {
            return this.headerName;
        }

        public String getValuePattern() {
            return this.valuePattern;
        }

        public boolean isValuePatternMatch(String str) {
            return this.pattern.matcher(str).matches();
        }
    }

    public HeaderDeviceDetailsProvider(DeviceDetails deviceDetails) {
        this(deviceDetails, null);
    }

    public HeaderDeviceDetailsProvider(DeviceDetails deviceDetails, Map<Key, DeviceDetails> map) {
        this.defaultDeviceDetails = deviceDetails;
        if (map == null) {
            map = new HashMap<>();
        }
        this.headerDetails = map;
    }

    public DeviceDetails getDefaultDeviceDetails() {
        return this.defaultDeviceDetails;
    }

    public Map<Key, DeviceDetails> getHeaderDetails() {
        return this.headerDetails;
    }

    public DeviceDetails provide(RemoteClientInfo remoteClientInfo) {
        if (remoteClientInfo == null || remoteClientInfo.getRequestHeaders().isEmpty()) {
            return getDefaultDeviceDetails();
        }
        for (Key key : getHeaderDetails().keySet()) {
            List<String> list = remoteClientInfo.getRequestHeaders().get((Object) key.getHeaderName());
            if (list != null) {
                for (String isValuePatternMatch : list) {
                    if (key.isValuePatternMatch(isValuePatternMatch)) {
                        return (DeviceDetails) getHeaderDetails().get(key);
                    }
                }
                continue;
            }
        }
        return getDefaultDeviceDetails();
    }
}
