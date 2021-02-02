package com.kantv.android.screen.androidupnpdemo.entity;

public interface IControlPoint<T> {
    void destroy();

    T getControlPoint();

    void setControlPoint(T t);
}
