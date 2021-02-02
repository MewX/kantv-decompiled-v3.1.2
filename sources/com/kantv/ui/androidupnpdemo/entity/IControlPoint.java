package com.kantv.ui.androidupnpdemo.entity;

public interface IControlPoint<T> {
    void destroy();

    T getControlPoint();

    void setControlPoint(T t);
}
