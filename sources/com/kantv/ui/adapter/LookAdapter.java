package com.kantv.ui.adapter;

import android.content.Context;
import android.widget.ImageView;
import com.imkan.tv.R;
import com.kantv.ui.bean.LookBean.DataBean.ListBean;
import java.util.List;

public class LookAdapter extends CommonAdapter<ListBean> {
    public LookAdapter(Context context, int i, List<ListBean> list) {
        super(context, i, list);
    }

    /* access modifiers changed from: protected */
    public void convert(ViewHolder viewHolder, ListBean listBean, int i) {
        viewHolder.setText(R.id.item_news_title, listBean.getTitle());
        viewHolder.setText(R.id.item_news_author, listBean.getSource());
        StringBuilder sb = new StringBuilder();
        sb.append(listBean.getComm_nums());
        String str = "";
        sb.append(str);
        viewHolder.setText(R.id.newslist_comment_tv, sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(listBean.getTotalcount());
        sb2.append(str);
        viewHolder.setText(R.id.news_eye_totalcount, sb2.toString());
        viewHolder.setImageURL3(R.id.item_news_img, listBean.getThumb());
        ImageView imageView = (ImageView) viewHolder.getView(R.id.isPlay_img);
        if (listBean.getIsplay() == 1) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
    }
}
