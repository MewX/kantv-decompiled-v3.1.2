package master.flame.danmaku.controller;

public class UpdateThread extends Thread {
    volatile boolean mIsQuited;

    public UpdateThread(String str) {
        super(str);
    }

    public void quit() {
        this.mIsQuited = true;
    }

    public boolean isQuited() {
        return this.mIsQuited;
    }

    public void run() {
        if (this.mIsQuited) {
        }
    }
}
