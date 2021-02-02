package com.shuyu.gsyvideoplayer.player;

import com.shuyu.gsyvideoplayer.model.GSYModel;

public abstract class BasePlayerManager implements IPlayerManager {
    protected IPlayerInitSuccessListener mPlayerInitSuccessListener;

    public IPlayerInitSuccessListener getPlayerPreparedSuccessListener() {
        return this.mPlayerInitSuccessListener;
    }

    public void setPlayerInitSuccessListener(IPlayerInitSuccessListener iPlayerInitSuccessListener) {
        this.mPlayerInitSuccessListener = iPlayerInitSuccessListener;
    }

    /* access modifiers changed from: protected */
    public void initSuccess(GSYModel gSYModel) {
        IPlayerInitSuccessListener iPlayerInitSuccessListener = this.mPlayerInitSuccessListener;
        if (iPlayerInitSuccessListener != null) {
            iPlayerInitSuccessListener.onPlayerInitSuccess(getMediaPlayer(), gSYModel);
        }
    }
}
