package com.kantv.ui.androidupnpdemo.entity;

import org.fourthline.cling.controlpoint.ControlPoint;

public class ClingControlPoint implements IControlPoint<ControlPoint> {
    private static ClingControlPoint INSTANCE;
    private ControlPoint mControlPoint;

    private ClingControlPoint() {
    }

    public static ClingControlPoint getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new ClingControlPoint();
        }
        return INSTANCE;
    }

    public ControlPoint getControlPoint() {
        return this.mControlPoint;
    }

    public void setControlPoint(ControlPoint controlPoint) {
        this.mControlPoint = controlPoint;
    }

    public void destroy() {
        this.mControlPoint = null;
        INSTANCE = null;
    }
}
