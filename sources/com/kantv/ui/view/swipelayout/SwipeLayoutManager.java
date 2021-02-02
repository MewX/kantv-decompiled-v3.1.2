package com.kantv.ui.view.swipelayout;

public class SwipeLayoutManager {
    private SwipeLayout openInstance;

    private static class LazyHolder {
        /* access modifiers changed from: private */
        public static final SwipeLayoutManager INSTANCE = new SwipeLayoutManager();

        private LazyHolder() {
        }
    }

    private SwipeLayoutManager() {
    }

    public static SwipeLayoutManager getInstance() {
        return LazyHolder.INSTANCE;
    }

    public void setOpenInstance(SwipeLayout swipeLayout) {
        this.openInstance = swipeLayout;
    }

    public boolean isCouldSwipe(SwipeLayout swipeLayout) {
        boolean z = true;
        if (isOpenInstance(swipeLayout)) {
            return true;
        }
        if (this.openInstance != null) {
            z = false;
        }
        return z;
    }

    public boolean isOpenInstance(SwipeLayout swipeLayout) {
        return swipeLayout == this.openInstance;
    }

    public void closeOpenInstance() {
        SwipeLayout swipeLayout = this.openInstance;
        if (swipeLayout != null) {
            swipeLayout.closeDeleteMenu();
            this.openInstance = null;
        }
    }
}
