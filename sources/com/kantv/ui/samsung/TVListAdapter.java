package com.kantv.ui.samsung;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.imkan.tv.R;
import com.samsung.multiscreen.Service;

public class TVListAdapter extends ArrayAdapter<Service> {
    private LayoutInflater mInflater;
    private int mLayoutResourceId;

    private class ViewHolder {
        TextView details;
        TextView name;

        private ViewHolder() {
        }
    }

    public TVListAdapter(Context context, int i) {
        super(context, i);
        this.mLayoutResourceId = i;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public TVListAdapter(Context context) {
        super(context, 0);
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public boolean contains(Service service) {
        return getPosition(service) >= 0;
    }

    public void replace(Service service) {
        int position = getPosition(service);
        if (position >= 0) {
            remove(service);
            insert(service, position);
        }
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        ViewHolder viewHolder;
        if (view == null) {
            viewHolder = new ViewHolder();
            view2 = this.mInflater.inflate(R.layout.devices_items, viewGroup, false);
            viewHolder.name = (TextView) view2.findViewById(R.id.listview_item_line_one);
            view2.setTag(viewHolder);
        } else {
            view2 = view;
            viewHolder = (ViewHolder) view.getTag();
        }
        Service service = (Service) getItem(i);
        if (service == null) {
            return view2;
        }
        viewHolder.name.setText(service.getName());
        return view2;
    }
}
