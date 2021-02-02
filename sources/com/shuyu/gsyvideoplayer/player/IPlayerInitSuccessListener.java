package com.shuyu.gsyvideoplayer.player;

import com.shuyu.gsyvideoplayer.model.GSYModel;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public interface IPlayerInitSuccessListener {
    void onPlayerInitSuccess(IMediaPlayer iMediaPlayer, GSYModel gSYModel);
}
