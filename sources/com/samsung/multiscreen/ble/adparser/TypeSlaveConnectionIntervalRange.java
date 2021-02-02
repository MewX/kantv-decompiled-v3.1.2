package com.samsung.multiscreen.ble.adparser;

import androidx.core.internal.view.SupportMenu;
import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import io.reactivex.annotations.SchedulerSupport;

public class TypeSlaveConnectionIntervalRange extends AdElement {
    int connIntervalMax = SupportMenu.USER_MASK;
    int connIntervalMin = SupportMenu.USER_MASK;

    public TypeSlaveConnectionIntervalRange(byte[] bArr, int i, int i2) {
        if (i2 >= 4) {
            int i3 = i + 1;
            int i4 = i3 + 1;
            this.connIntervalMin = (bArr[i] & Draft_75.END_OF_FRAME) | ((bArr[i3] & Draft_75.END_OF_FRAME) << 8);
            this.connIntervalMax = ((bArr[i4 + 1] & Draft_75.END_OF_FRAME) << 8) | (bArr[i4] & Draft_75.END_OF_FRAME);
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("Slave Connection Interval Range: ");
        stringBuffer.append("conn_interval_min: ");
        int i = this.connIntervalMin;
        String str = SchedulerSupport.NONE;
        String str2 = " msec";
        if (i == 65535) {
            stringBuffer.append(str);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(Float.toString(((float) this.connIntervalMin) * 1.25f));
            sb.append(str2);
            stringBuffer.append(sb.toString());
        }
        stringBuffer.append(",conn_interval_max: ");
        if (this.connIntervalMax == 65535) {
            stringBuffer.append(str);
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Float.toString(((float) this.connIntervalMax) * 1.25f));
            sb2.append(str2);
            stringBuffer.append(sb2.toString());
        }
        return new String(stringBuffer);
    }

    public int getConnIntervalMin() {
        return this.connIntervalMin;
    }

    public int getConnIntervalMax() {
        return this.connIntervalMax;
    }
}
