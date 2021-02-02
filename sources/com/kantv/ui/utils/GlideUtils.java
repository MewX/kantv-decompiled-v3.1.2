package com.kantv.ui.utils;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.imkan.tv.R;
import com.kantv.common.utils.Utils;
import java.lang.ref.WeakReference;
import jp.wasabeef.glide.transformations.BlurTransformation;

public class GlideUtils {
    public static void loadimage(String str, ImageView imageView) {
        Glide.with(Utils.getContext().getApplicationContext()).load(str).placeholder((int) R.drawable.placeholder).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.SOURCE).into(imageView);
    }

    public static void loadimage2(String str, ImageView imageView) {
        Glide.with(Utils.getContext().getApplicationContext()).load(str).placeholder((int) R.drawable.placeholder2).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.SOURCE).into(imageView);
    }

    public static void loadimage3(String str, ImageView imageView) {
        Glide.with(Utils.getContext().getApplicationContext()).load(str).placeholder((int) R.drawable.placeholder3).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.SOURCE).into(imageView);
    }

    public static void loadimage4(String str, ImageView imageView) {
        Glide.with(Utils.getContext().getApplicationContext()).load(str).placeholder((int) R.drawable.placeholder4).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.SOURCE).into(imageView);
    }

    public static void loadimageRoundness(String str, final ImageView imageView, int i, int i2) {
        Glide.with(Utils.getContext().getApplicationContext()).load(str).placeholder((int) R.drawable.placeholder).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.SOURCE).centerCrop().override(i, i2).into(new SimpleTarget<GlideDrawable>() {
            public void onResourceReady(GlideDrawable glideDrawable, GlideAnimation<? super GlideDrawable> glideAnimation) {
                imageView.setImageDrawable(glideDrawable);
            }
        });
    }

    public static void loadimageRound(String str, final ImageView imageView, int i, int i2) {
        Glide.with(Utils.getContext().getApplicationContext()).load(str).placeholder((int) R.drawable.avatar).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.SOURCE).override(i, i2).into(new SimpleTarget<GlideDrawable>() {
            public void onResourceReady(GlideDrawable glideDrawable, GlideAnimation<? super GlideDrawable> glideAnimation) {
                imageView.setImageDrawable(glideDrawable);
            }
        });
    }

    public static void loadImageBlur(String str, ImageView imageView) {
        Glide.with(Utils.getContext().getApplicationContext()).load(str).placeholder((int) R.color.temp_tv_color).error((int) R.color.temp_tv_color).skipMemoryCache(false).bitmapTransform(new BlurTransformation(Utils.getContext(), 23, 4)).diskCacheStrategy(DiskCacheStrategy.SOURCE).into(imageView);
    }

    public static void loadImage(Context context, String str, ImageView imageView, int i, int i2, int i3, SizeReadyCallback sizeReadyCallback) {
        if (((ImageView) new WeakReference(imageView).get()) == null) {
            return;
        }
        if (i2 == 0 || i3 == 0) {
            Glide.with(context).load(str).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.SOURCE).placeholder(i).into(imageView).getSize(sizeReadyCallback);
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            Glide.with(context).load(str).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.SOURCE).placeholder(i).override(i2, i3).into(imageView);
        } else if (str.contains("x-oss-process")) {
            Glide.with(context).load(str).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.SOURCE).placeholder(i).override(i2, i3).into(imageView);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("w_");
            sb.append(i2);
            String replace = "?x-oss-process=image/resize,w_w,h_h,m_fill/sharpen,100/quality,Q_100".replace("w_w", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("h_");
            sb2.append(i3);
            String replace2 = replace.replace("h_h", sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append(replace2);
            str = sb3.toString();
            Glide.with(context).load(str).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.SOURCE).placeholder(i).override(i2, i3).into(imageView);
        }
        Glide.with(context).load(str).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.SOURCE).placeholder(i).override(i2, i3).into(imageView);
    }
}
