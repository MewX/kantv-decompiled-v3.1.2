package com.kantv.android.screen.androidupnpdemo.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.kantv.android.screen.R;
import com.kantv.android.screen.androidupnpdemo.entity.ClingDevice;
import org.fourthline.cling.model.meta.Device;

public class DevicesAdapter extends ArrayAdapter<ClingDevice> {
    private LayoutInflater mInflater;

    public DevicesAdapter(Context context) {
        super(context, 0);
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(R.layout.devices_items, null);
        }
        ClingDevice clingDevice = (ClingDevice) getItem(i);
        if (!(clingDevice == null || clingDevice.getDevice() == null)) {
            Device device = clingDevice.getDevice();
            ((ImageView) view.findViewById(R.id.listview_item_image)).setBackgroundResource(R.drawable.ic_action_dock);
            ((TextView) view.findViewById(R.id.listview_item_line_one)).setText(device.getDetails().getFriendlyName());
        }
        return view;
    }
}
