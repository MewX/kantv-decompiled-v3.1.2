package com.kantv.ui.adapter;

import android.content.Context;
import android.widget.ImageView;
import com.imkan.tv.R;
import com.kantv.ui.bean.NewsCommentBean.DataBean.AssociateBean;
import java.util.List;

public class NewsAdapter extends CommonAdapter<AssociateBean> {
    public NewsAdapter(Context context, int i, List<AssociateBean> list) {
        super(context, i, list);
    }

    /* access modifiers changed from: protected */
    public void convert(ViewHolder viewHolder, AssociateBean associateBean, int i) {
        viewHolder.setText(R.id.item_news_title, associateBean.getTitle());
        viewHolder.setText(R.id.item_news_author, associateBean.getSource());
        StringBuilder sb = new StringBuilder();
        sb.append(associateBean.getComm_nums());
        String str = "";
        sb.append(str);
        viewHolder.setText(R.id.newslist_comment_tv, sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(associateBean.getTotalcount());
        sb2.append(str);
        viewHolder.setText(R.id.news_eye_totalcount, sb2.toString());
        viewHolder.setImageURL3(R.id.item_news_img, associateBean.getThumb());
        ImageView imageView = (ImageView) viewHolder.getView(R.id.isPlay_img);
        if (associateBean.getIsplay() == 1) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
    }
}
