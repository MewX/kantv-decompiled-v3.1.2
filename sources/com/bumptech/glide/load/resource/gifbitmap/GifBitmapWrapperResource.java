package com.bumptech.glide.load.resource.gifbitmap;

import com.bumptech.glide.load.engine.Resource;

public class GifBitmapWrapperResource implements Resource<GifBitmapWrapper> {
    private final GifBitmapWrapper data;

    public GifBitmapWrapperResource(GifBitmapWrapper gifBitmapWrapper) {
        if (gifBitmapWrapper != null) {
            this.data = gifBitmapWrapper;
            return;
        }
        throw new NullPointerException("Data must not be null");
    }

    public GifBitmapWrapper get() {
        return this.data;
    }

    public int getSize() {
        return this.data.getSize();
    }

    public void recycle() {
        Resource bitmapResource = this.data.getBitmapResource();
        if (bitmapResource != null) {
            bitmapResource.recycle();
        }
        Resource gifResource = this.data.getGifResource();
        if (gifResource != null) {
            gifResource.recycle();
        }
    }
}
