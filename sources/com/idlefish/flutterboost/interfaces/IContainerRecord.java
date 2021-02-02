package com.idlefish.flutterboost.interfaces;

public interface IContainerRecord extends IOperateSyncer {
    public static final int STATE_APPEAR = 2;
    public static final int STATE_CREATED = 1;
    public static final int STATE_DESTROYED = 4;
    public static final int STATE_DISAPPEAR = 3;
    public static final int STATE_UNKNOW = 0;
    public static final String UNIQ_KEY = "__container_uniqueId_key__";

    IFlutterViewContainer getContainer();

    int getState();

    String uniqueId();
}
