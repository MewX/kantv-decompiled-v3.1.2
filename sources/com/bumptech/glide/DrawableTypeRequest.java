package com.bumptech.glide;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.model.ImageVideoModelLoader;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.provider.FixedLoadProvider;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.target.Target;
import java.io.File;
import java.io.InputStream;

public class DrawableTypeRequest<ModelType> extends DrawableRequestBuilder<ModelType> implements DownloadOptions {
    private final ModelLoader<ModelType, ParcelFileDescriptor> fileDescriptorModelLoader;
    private final OptionsApplier optionsApplier;
    private final ModelLoader<ModelType, InputStream> streamModelLoader;

    private static <A, Z, R> FixedLoadProvider<A, ImageVideoWrapper, Z, R> buildProvider(Glide glide, ModelLoader<A, InputStream> modelLoader, ModelLoader<A, ParcelFileDescriptor> modelLoader2, Class<Z> cls, Class<R> cls2, ResourceTranscoder<Z, R> resourceTranscoder) {
        if (modelLoader == null && modelLoader2 == null) {
            return null;
        }
        if (resourceTranscoder == null) {
            resourceTranscoder = glide.buildTranscoder(cls, cls2);
        }
        return new FixedLoadProvider<>(new ImageVideoModelLoader(modelLoader, modelLoader2), resourceTranscoder, glide.buildDataProvider(ImageVideoWrapper.class, cls));
    }

    DrawableTypeRequest(Class<ModelType> cls, ModelLoader<ModelType, InputStream> modelLoader, ModelLoader<ModelType, ParcelFileDescriptor> modelLoader2, Context context, Glide glide, RequestTracker requestTracker, Lifecycle lifecycle, OptionsApplier optionsApplier2) {
        FixedLoadProvider buildProvider = buildProvider(glide, modelLoader, modelLoader2, GifBitmapWrapper.class, GlideDrawable.class, null);
        super(context, cls, buildProvider, glide, requestTracker, lifecycle);
        this.streamModelLoader = modelLoader;
        this.fileDescriptorModelLoader = modelLoader2;
        this.optionsApplier = optionsApplier2;
    }

    public BitmapTypeRequest<ModelType> asBitmap() {
        OptionsApplier optionsApplier2 = this.optionsApplier;
        return (BitmapTypeRequest) optionsApplier2.apply(new BitmapTypeRequest(this, this.streamModelLoader, this.fileDescriptorModelLoader, optionsApplier2));
    }

    public GifTypeRequest<ModelType> asGif() {
        OptionsApplier optionsApplier2 = this.optionsApplier;
        return (GifTypeRequest) optionsApplier2.apply(new GifTypeRequest(this, this.streamModelLoader, optionsApplier2));
    }

    public <Y extends Target<File>> Y downloadOnly(Y y) {
        return getDownloadOnlyRequest().downloadOnly(y);
    }

    public FutureTarget<File> downloadOnly(int i, int i2) {
        return getDownloadOnlyRequest().downloadOnly(i, i2);
    }

    private GenericTranscodeRequest<ModelType, InputStream, File> getDownloadOnlyRequest() {
        OptionsApplier optionsApplier2 = this.optionsApplier;
        GenericTranscodeRequest genericTranscodeRequest = new GenericTranscodeRequest(File.class, this, this.streamModelLoader, InputStream.class, File.class, optionsApplier2);
        return (GenericTranscodeRequest) optionsApplier2.apply(genericTranscodeRequest);
    }
}
