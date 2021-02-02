package com.bumptech.glide;

import android.content.Context;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.load.resource.transcode.UnitTranscoder;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.provider.FixedLoadProvider;
import com.bumptech.glide.provider.LoadProvider;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.target.Target;
import java.io.File;

public class GenericTranscodeRequest<ModelType, DataType, ResourceType> extends GenericRequestBuilder<ModelType, DataType, ResourceType, ResourceType> implements DownloadOptions {
    private final Class<DataType> dataClass;
    private final ModelLoader<ModelType, DataType> modelLoader;
    private final OptionsApplier optionsApplier;
    private final Class<ResourceType> resourceClass;

    private static <A, T, Z, R> LoadProvider<A, T, Z, R> build(Glide glide, ModelLoader<A, T> modelLoader2, Class<T> cls, Class<Z> cls2, ResourceTranscoder<Z, R> resourceTranscoder) {
        return new FixedLoadProvider(modelLoader2, resourceTranscoder, glide.buildDataProvider(cls, cls2));
    }

    GenericTranscodeRequest(Class<ResourceType> cls, GenericRequestBuilder<ModelType, ?, ?, ?> genericRequestBuilder, ModelLoader<ModelType, DataType> modelLoader2, Class<DataType> cls2, Class<ResourceType> cls3, OptionsApplier optionsApplier2) {
        super(build(genericRequestBuilder.glide, modelLoader2, cls2, cls3, UnitTranscoder.get()), cls, genericRequestBuilder);
        this.modelLoader = modelLoader2;
        this.dataClass = cls2;
        this.resourceClass = cls3;
        this.optionsApplier = optionsApplier2;
    }

    GenericTranscodeRequest(Context context, Glide glide, Class<ModelType> cls, ModelLoader<ModelType, DataType> modelLoader2, Class<DataType> cls2, Class<ResourceType> cls3, RequestTracker requestTracker, Lifecycle lifecycle, OptionsApplier optionsApplier2) {
        ModelLoader<ModelType, DataType> modelLoader3 = modelLoader2;
        Class<DataType> cls4 = cls2;
        Class<ResourceType> cls5 = cls3;
        Glide glide2 = glide;
        super(context, cls, build(glide, modelLoader3, cls4, cls5, UnitTranscoder.get()), cls3, glide2, requestTracker, lifecycle);
        this.modelLoader = modelLoader3;
        this.dataClass = cls4;
        this.resourceClass = cls5;
        this.optionsApplier = optionsApplier2;
    }

    public <TranscodeType> GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> transcode(ResourceTranscoder<ResourceType, TranscodeType> resourceTranscoder, Class<TranscodeType> cls) {
        return this.optionsApplier.apply(new GenericRequestBuilder(build(this.glide, this.modelLoader, this.dataClass, this.resourceClass, resourceTranscoder), cls, this));
    }

    public <Y extends Target<File>> Y downloadOnly(Y y) {
        return getDownloadOnlyRequest().into(y);
    }

    public FutureTarget<File> downloadOnly(int i, int i2) {
        return getDownloadOnlyRequest().into(i, i2);
    }

    private GenericRequestBuilder<ModelType, DataType, File, File> getDownloadOnlyRequest() {
        return this.optionsApplier.apply(new GenericRequestBuilder(new FixedLoadProvider(this.modelLoader, UnitTranscoder.get(), this.glide.buildDataProvider(this.dataClass, File.class)), File.class, this)).priority(Priority.LOW).diskCacheStrategy(DiskCacheStrategy.SOURCE).skipMemoryCache(true);
    }
}
