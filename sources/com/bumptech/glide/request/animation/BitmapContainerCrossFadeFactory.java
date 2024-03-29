package com.bumptech.glide.request.animation;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import com.bumptech.glide.request.animation.GlideAnimation.ViewAdapter;

public abstract class BitmapContainerCrossFadeFactory<T> implements GlideAnimationFactory<T> {
    private final GlideAnimationFactory<Drawable> realFactory;

    private class BitmapGlideAnimation implements GlideAnimation<T> {
        private final GlideAnimation<Drawable> transition;

        public BitmapGlideAnimation(GlideAnimation<Drawable> glideAnimation) {
            this.transition = glideAnimation;
        }

        public boolean animate(T t, ViewAdapter viewAdapter) {
            return this.transition.animate(new BitmapDrawable(viewAdapter.getView().getResources(), BitmapContainerCrossFadeFactory.this.getBitmap(t)), viewAdapter);
        }
    }

    /* access modifiers changed from: protected */
    public abstract Bitmap getBitmap(T t);

    public BitmapContainerCrossFadeFactory() {
        this((GlideAnimationFactory<Drawable>) new DrawableCrossFadeFactory<Drawable>());
    }

    public BitmapContainerCrossFadeFactory(int i) {
        this((GlideAnimationFactory<Drawable>) new DrawableCrossFadeFactory<Drawable>(i));
    }

    public BitmapContainerCrossFadeFactory(Context context, int i, int i2) {
        this((GlideAnimationFactory<Drawable>) new DrawableCrossFadeFactory<Drawable>(context, i, i2));
    }

    public BitmapContainerCrossFadeFactory(Animation animation, int i) {
        this((GlideAnimationFactory<Drawable>) new DrawableCrossFadeFactory<Drawable>(animation, i));
    }

    public BitmapContainerCrossFadeFactory(GlideAnimationFactory<Drawable> glideAnimationFactory) {
        this.realFactory = glideAnimationFactory;
    }

    public GlideAnimation<T> build(boolean z, boolean z2) {
        return new BitmapGlideAnimation(this.realFactory.build(z, z2));
    }
}
