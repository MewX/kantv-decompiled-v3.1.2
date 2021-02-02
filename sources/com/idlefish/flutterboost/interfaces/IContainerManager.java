package com.idlefish.flutterboost.interfaces;

public interface IContainerManager {
    IFlutterViewContainer findContainerById(String str);

    IOperateSyncer generateSyncer(IFlutterViewContainer iFlutterViewContainer);

    IContainerRecord getCurrentTopRecord();

    IContainerRecord getLastGenerateRecord();

    boolean hasContainerAppear();
}
