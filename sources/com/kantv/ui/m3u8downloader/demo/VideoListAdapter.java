package com.kantv.ui.m3u8downloader.demo;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.imkan.tv.R;
import com.kantv.ui.m3u8downloader.M3U8Downloader;
import com.kantv.ui.m3u8downloader.bean.M3U8Task;

public class VideoListAdapter extends ArrayAdapter<M3U8Task> {
    public VideoListAdapter(@NonNull Context context, @LayoutRes int i, @NonNull M3U8Task[] m3U8TaskArr) {
        super(context, i, m3U8TaskArr);
    }

    @NonNull
    public View getView(int i, @Nullable View view, @NonNull ViewGroup viewGroup) {
        M3U8Task m3U8Task = (M3U8Task) getItem(i);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.list_item, null);
        ((TextView) inflate.findViewById(R.id.url_tv)).setText(m3U8Task.getUrl());
        setStateText((TextView) inflate.findViewById(R.id.state_tv), m3U8Task);
        setProgressText((TextView) inflate.findViewById(R.id.progress_tv), m3U8Task);
        return inflate;
    }

    private void setProgressText(TextView textView, M3U8Task m3U8Task) {
        int state = m3U8Task.getState();
        String str = "%.1f ";
        String str2 = "进度：";
        if (state == 2) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(String.format(str, new Object[]{Float.valueOf(m3U8Task.getProgress() * 100.0f)}));
            sb.append("%       速度：");
            sb.append(m3U8Task.getFormatSpeed());
            textView.setText(sb.toString());
        } else if (state == 3) {
            textView.setText(m3U8Task.getFormatTotalSize());
        } else if (state != 5) {
            textView.setText("");
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(String.format(str, new Object[]{Float.valueOf(m3U8Task.getProgress() * 100.0f)}));
            sb2.append("%");
            sb2.append(m3U8Task.getFormatTotalSize());
            textView.setText(sb2.toString());
        }
    }

    private void setStateText(TextView textView, M3U8Task m3U8Task) {
        if (M3U8Downloader.getInstance().checkM3U8IsExist(m3U8Task.getUrl())) {
            textView.setText("已下载");
            return;
        }
        switch (m3U8Task.getState()) {
            case -1:
                textView.setText("等待中");
                break;
            case 1:
                textView.setText("准备中");
                break;
            case 2:
                textView.setText("正在下载");
                break;
            case 3:
                textView.setText("下载完成");
                break;
            case 4:
                textView.setText("下载异常，点击重试");
                break;
            case 5:
                textView.setText("暂停中");
                break;
            case 6:
                textView.setText("存储空间不足");
                break;
            default:
                textView.setText("未下载");
                break;
        }
    }

    public void notifyChanged(M3U8Task[] m3U8TaskArr, M3U8Task m3U8Task) {
        for (int i = 0; i < getCount(); i++) {
            if (((M3U8Task) getItem(i)).equals(m3U8Task)) {
                m3U8TaskArr[i] = m3U8Task;
                notifyDataSetChanged();
            }
        }
    }
}
