package com.kantv.kt_player.ExoPlayer.player;

import com.kantv.kt_player.ExoPlayer.model.GSYModel;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public interface IPlayerInitSuccessListener {
    void onPlayerInitSuccess(IMediaPlayer iMediaPlayer, GSYModel gSYModel);
}
