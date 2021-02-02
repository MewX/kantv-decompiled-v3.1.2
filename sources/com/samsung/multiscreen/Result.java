package com.samsung.multiscreen;

public interface Result<T> {
    void onError(Error error);

    void onSuccess(T t);
}
