package com.samsung.multiscreen;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.util.Log;
import com.samsung.multiscreen.ble.adparser.AdElement;
import com.samsung.multiscreen.ble.adparser.AdParser;
import com.samsung.multiscreen.ble.adparser.TypeManufacturerData;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class BLESearchProvider extends SearchProvider {
    private static final String BLE_NETWORK_TYPE = "BLE";
    private static final String BLE_NOT_SUPPORTED = "BLE is not supported";
    private static final int BLE_RSSI_MIMIMUM = -100;
    private static final String BLUETOOTH_NOT_SUPPORTED = "Bluetooth not supported";
    private static final long DEFAULT_TTL = 5000;
    private static final byte SAMSUNG_DEVICE_STATUS = 20;
    private static final String SAMSUNG_MANUFACTURER_ID = "0075";
    private static final String TAG = "BLESearchProvider";
    /* access modifiers changed from: private */
    public final ArrayList<String> BT_devices = new ArrayList<>();
    private BluetoothAdapter bluetoothAdapter;
    private final Context context;
    /* access modifiers changed from: private */
    public final Map<BluetoothService, Long> devices = new ConcurrentHashMap();
    private final LeScanCallback leScanCallback = new LeScanCallback() {
        private boolean isTV(byte[] bArr) {
            ArrayList parseAdData = AdParser.parseAdData(bArr);
            StringBuilder sb = new StringBuilder();
            boolean z = false;
            for (int i = 0; i < parseAdData.size(); i++) {
                AdElement adElement = (AdElement) parseAdData.get(i);
                if (i > 0) {
                    sb.append(" ; ");
                }
                sb.append(adElement.toString());
                if (adElement instanceof TypeManufacturerData) {
                    TypeManufacturerData typeManufacturerData = (TypeManufacturerData) adElement;
                    if (typeManufacturerData.getManufacturer().equals(BLESearchProvider.SAMSUNG_MANUFACTURER_ID)) {
                        byte[] bytes = typeManufacturerData.getBytes();
                        byte b = bytes[0];
                        byte b2 = bytes[1];
                        if (DeviceType.TV.getValue() == bytes[2] && bytes[3] == 1) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            StringBuilder sb = new StringBuilder();
            for (byte valueOf : bArr) {
                sb.append(String.format("%02x", new Object[]{Byte.valueOf(valueOf)}));
            }
            BluetoothService bluetoothService = new BluetoothService(bluetoothDevice);
            if (!BLESearchProvider.this.devices.containsKey(bluetoothService)) {
                BLESearchProvider.this.updateAlive(bluetoothService, 5000);
                if (isTV(bArr) && !BLESearchProvider.this.BT_devices.contains(bluetoothDevice.getAddress())) {
                    BLESearchProvider.this.BT_devices.add(bluetoothDevice.getAddress());
                    if (i >= -100) {
                        BLESearchProvider.this.addTVOnlyBle(bluetoothDevice.getName());
                    }
                }
            } else {
                BLESearchProvider.this.updateAlive(bluetoothService, 5000);
            }
            reapServices();
        }

        private void reapServices() {
            long currentTimeMillis = System.currentTimeMillis();
            for (BluetoothService bluetoothService : BLESearchProvider.this.devices.keySet()) {
                if (((Long) BLESearchProvider.this.devices.get(bluetoothService)).longValue() < currentTimeMillis) {
                    Service serviceById = BLESearchProvider.this.getServiceById(bluetoothService.getId());
                    BLESearchProvider.this.devices.remove(bluetoothService);
                    BLESearchProvider.this.removeServiceAndNotify(serviceById);
                }
            }
        }
    };

    private class BluetoothService {
        private final BluetoothDevice device;
        private String id;

        public BluetoothService(BluetoothDevice bluetoothDevice) {
            this.device = bluetoothDevice;
        }

        public void setId(String str) {
            this.id = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("BLESearchProvider.BluetoothService(device=");
            sb.append(getDevice());
            sb.append(", id=");
            sb.append(getId());
            sb.append(")");
            return sb.toString();
        }

        /* access modifiers changed from: protected */
        public boolean canEqual(Object obj) {
            return obj instanceof BluetoothService;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof BluetoothService)) {
                return false;
            }
            BluetoothService bluetoothService = (BluetoothService) obj;
            if (!bluetoothService.canEqual(this)) {
                return false;
            }
            BluetoothDevice device2 = getDevice();
            BluetoothDevice device3 = bluetoothService.getDevice();
            return device2 != null ? device2.equals(device3) : device3 == null;
        }

        public int hashCode() {
            BluetoothDevice device2 = getDevice();
            return 59 + (device2 == null ? 43 : device2.hashCode());
        }

        public BluetoothDevice getDevice() {
            return this.device;
        }

        public String getId() {
            return this.id;
        }
    }

    private enum DeviceType {
        Unknown(0),
        TV(1),
        Mobile(2),
        PXD(3),
        AVDevice(4);
        
        private final int deviceType;

        private DeviceType(int i) {
            this.deviceType = i;
        }

        public int getValue() {
            return this.deviceType;
        }
    }

    /* access modifiers changed from: private */
    public void updateAlive(BluetoothService bluetoothService, long j) {
        this.devices.put(bluetoothService, Long.valueOf(System.currentTimeMillis() + j));
    }

    private BLESearchProvider(Context context2) {
        this.context = context2;
        setupBluetoothAdapter();
    }

    private BLESearchProvider(Context context2, SearchListener searchListener) {
        super(searchListener);
        this.context = context2;
        setupBluetoothAdapter();
    }

    private void setupBluetoothAdapter() {
        if (this.context.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            this.bluetoothAdapter = ((BluetoothManager) this.context.getSystemService("bluetooth")).getAdapter();
            if (this.bluetoothAdapter == null) {
                throw new UnsupportedOperationException(BLUETOOTH_NOT_SUPPORTED);
            }
            return;
        }
        throw new UnsupportedOperationException(BLE_NOT_SUPPORTED);
    }

    public void start() {
        Log.w(TAG, "Start BLE search");
        if (this.searching) {
            stop();
        }
        this.devices.clear();
        this.BT_devices.clear();
        this.TVListOnlyBle.clear();
        clearServices();
        this.searching = this.bluetoothAdapter.startLeScan(this.leScanCallback);
    }

    public boolean stop() {
        Log.w(TAG, "Stop BLE search");
        if (!this.searching) {
            return false;
        }
        this.searching = false;
        this.bluetoothAdapter.stopLeScan(this.leScanCallback);
        return true;
    }

    public static SearchProvider create(Context context2) {
        return new BLESearchProvider(context2);
    }

    static SearchProvider create(Context context2, SearchListener searchListener) {
        return new BLESearchProvider(context2, searchListener);
    }
}
