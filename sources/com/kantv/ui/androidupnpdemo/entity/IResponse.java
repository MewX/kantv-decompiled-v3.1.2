package com.kantv.ui.androidupnpdemo.entity;

public interface IResponse<T> {
    T getResponse();

    void setResponse(T t);
}
