package com.kantv.kt_player.ExoPlayer.player;

public class PlayerFactory {
    private static Class<? extends IPlayerManager> sPlayerManager;

    public static void setPlayManager(Class<? extends IPlayerManager> cls) {
        sPlayerManager = cls;
    }

    public static IPlayerManager getPlayManager() {
        if (sPlayerManager == null) {
            sPlayerManager = ExoPlayerManager.class;
        }
        try {
            return (IPlayerManager) sPlayerManager.newInstance();
        } catch (InstantiationException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
