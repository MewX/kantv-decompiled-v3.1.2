package com.kantv.ui.adapter;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.exoplayer2.C;
import com.imkan.tv.R;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.gallery.GalleryAdapter;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.activity.WebViewActivity;
import com.kantv.ui.bean.SlideImgBean;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.view.ShapedImageView;
import java.util.List;

public class ScrolGalleryAdapter extends GalleryAdapter {
    private static final String TAG = "ScrolGalleryAdapter";
    Context mContext;
    /* access modifiers changed from: private */
    public List<SlideImgBean> mImgData;
    int scrollImgSum = 6;

    public ScrolGalleryAdapter(List<SlideImgBean> list, Context context) {
        this.mImgData = list;
        this.mContext = context;
    }

    public int getGallerSize() {
        List<SlideImgBean> list = this.mImgData;
        return list == null ? this.scrollImgSum : list.size();
    }

    public View getItemView(final int i) {
        View inflate = LayoutInflater.from(Utils.getContext()).inflate(R.layout.item_image, null);
        ShapedImageView shapedImageView = (ShapedImageView) inflate.findViewById(R.id.scroll_shaped_img);
        List<SlideImgBean> list = this.mImgData;
        if (list != null) {
            try {
                GlideUtils.loadimage2(((SlideImgBean) list.get(i - 1)).getPhoto(), shapedImageView);
            } catch (Exception e) {
                AILog.d(TAG, "*** Glide loadimage error ***");
                e.printStackTrace();
            }
        }
        shapedImageView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                try {
                    String url = ((SlideImgBean) ScrolGalleryAdapter.this.mImgData.get(i - 1)).getUrl();
                    Bundle bundle = new Bundle();
                    if (!StringUtils.isEmpty(url)) {
                        if (!url.contains("http")) {
                            if (!url.contains("www")) {
                                bundle.putString("seo", ((SlideImgBean) ScrolGalleryAdapter.this.mImgData.get(i - 1)).getSeo());
                                bundle.putString("tid", ((SlideImgBean) ScrolGalleryAdapter.this.mImgData.get(i - 1)).getTvid());
                                Intent intent = new Intent(Utils.getContext(), VideoPlayActivity.class);
                                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                                intent.putExtras(bundle);
                                Utils.getContext().startActivity(intent);
                                return;
                            }
                        }
                        if (StringUtils.isEmpty(((SlideImgBean) ScrolGalleryAdapter.this.mImgData.get(i - 1)).getOpentype()) || !((SlideImgBean) ScrolGalleryAdapter.this.mImgData.get(i - 1)).getOpentype().equals("0")) {
                            bundle.putString("title", ((SlideImgBean) ScrolGalleryAdapter.this.mImgData.get(i - 1)).getTitle());
                            bundle.putString("url", url);
                            Intent intent2 = new Intent(Utils.getContext(), WebViewActivity.class);
                            intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                            intent2.putExtras(bundle);
                            Utils.getContext().startActivity(intent2);
                            return;
                        }
                        Intent intent3 = new Intent();
                        intent3.setAction("android.intent.action.VIEW");
                        intent3.setData(Uri.parse(url));
                        intent3.setFlags(C.ENCODING_PCM_MU_LAW);
                        Utils.getContext().startActivity(intent3);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        return inflate;
    }
}
