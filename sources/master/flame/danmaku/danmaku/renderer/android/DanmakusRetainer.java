package master.flame.danmaku.danmaku.renderer.android;

import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.IDanmakus.Consumer;
import master.flame.danmaku.danmaku.model.IDisplayer;
import master.flame.danmaku.danmaku.model.android.Danmakus;
import master.flame.danmaku.danmaku.util.DanmakuUtils;

public class DanmakusRetainer {
    private IDanmakusRetainer fbdrInstance = null;
    private IDanmakusRetainer ftdrInstance = null;
    private IDanmakusRetainer lrdrInstance = null;
    private IDanmakusRetainer rldrInstance = null;

    private static class AlignBottomRetainer extends FTDanmakusRetainer {
        protected RetainerConsumer mConsumer;
        protected Danmakus mVisibleDanmakus;

        protected class RetainerConsumer extends Consumer<BaseDanmaku, RetainerState> {
            public IDisplayer disp;
            public BaseDanmaku drawItem = null;
            public BaseDanmaku firstItem = null;
            int lines = 0;
            public BaseDanmaku removeItem = null;
            float topPos;
            boolean willHit = false;

            protected RetainerConsumer() {
            }

            public void before() {
                this.lines = 0;
                this.firstItem = null;
                this.removeItem = null;
                this.willHit = false;
            }

            public int accept(BaseDanmaku baseDanmaku) {
                if (AlignBottomRetainer.this.mCancelFixingFlag) {
                    return 1;
                }
                this.lines++;
                if (baseDanmaku == this.drawItem) {
                    this.removeItem = null;
                    this.willHit = false;
                    return 1;
                }
                if (this.firstItem == null) {
                    this.firstItem = baseDanmaku;
                    if (this.firstItem.getBottom() != ((float) this.disp.getHeight())) {
                        return 1;
                    }
                }
                if (this.topPos < ((float) this.disp.getAllMarginTop())) {
                    this.removeItem = null;
                    return 1;
                }
                IDisplayer iDisplayer = this.disp;
                BaseDanmaku baseDanmaku2 = this.drawItem;
                this.willHit = DanmakuUtils.willHitInDuration(iDisplayer, baseDanmaku, baseDanmaku2, baseDanmaku2.getDuration(), this.drawItem.getTimer().currMillisecond);
                if (!this.willHit) {
                    this.removeItem = baseDanmaku;
                    return 1;
                }
                this.topPos = (baseDanmaku.getTop() - ((float) this.disp.getMargin())) - this.drawItem.paintHeight;
                return 0;
            }

            public RetainerState result() {
                RetainerState retainerState = new RetainerState();
                retainerState.lines = this.lines;
                retainerState.firstItem = this.firstItem;
                retainerState.removeItem = this.removeItem;
                retainerState.willHit = this.willHit;
                return retainerState;
            }
        }

        private AlignBottomRetainer() {
            super();
            this.mConsumer = new RetainerConsumer();
            this.mVisibleDanmakus = new Danmakus(2);
        }

        public void fix(BaseDanmaku baseDanmaku, IDisplayer iDisplayer, Verifier verifier) {
            boolean z;
            BaseDanmaku baseDanmaku2;
            float f;
            boolean z2;
            boolean z3;
            int i;
            BaseDanmaku baseDanmaku3;
            BaseDanmaku baseDanmaku4 = baseDanmaku;
            IDisplayer iDisplayer2 = iDisplayer;
            Verifier verifier2 = verifier;
            if (!baseDanmaku.isOutside()) {
                boolean isShown = baseDanmaku.isShown();
                float top = isShown ? baseDanmaku.getTop() : -1.0f;
                boolean z4 = true;
                int i2 = 0;
                boolean z5 = !isShown && !this.mVisibleDanmakus.isEmpty();
                if (top < ((float) iDisplayer.getAllMarginTop())) {
                    top = ((float) iDisplayer.getHeight()) - baseDanmaku4.paintHeight;
                }
                if (!isShown) {
                    this.mCancelFixingFlag = false;
                    RetainerConsumer retainerConsumer = this.mConsumer;
                    retainerConsumer.topPos = top;
                    retainerConsumer.disp = iDisplayer2;
                    retainerConsumer.drawItem = baseDanmaku4;
                    this.mVisibleDanmakus.forEachSync(retainerConsumer);
                    RetainerState result = this.mConsumer.result();
                    f = this.mConsumer.topPos;
                    if (result != null) {
                        int i3 = result.lines;
                        BaseDanmaku baseDanmaku5 = result.firstItem;
                        BaseDanmaku baseDanmaku6 = result.removeItem;
                        boolean z6 = result.shown;
                        i = i3;
                        z3 = result.willHit;
                        baseDanmaku3 = baseDanmaku5;
                        baseDanmaku2 = baseDanmaku6;
                        z = z6;
                    } else {
                        z = isShown;
                        z3 = z5;
                        baseDanmaku3 = null;
                        baseDanmaku2 = null;
                        i = 0;
                    }
                    z2 = isOutVerticalEdge(false, baseDanmaku, iDisplayer, f, baseDanmaku3, null);
                    if (z2) {
                        f = ((float) iDisplayer.getHeight()) - baseDanmaku4.paintHeight;
                        i2 = 1;
                    } else {
                        z4 = f >= ((float) iDisplayer.getAllMarginTop()) ? false : z3;
                        i2 = baseDanmaku2 != null ? i - 1 : i;
                    }
                } else {
                    z = isShown;
                    f = top;
                    z4 = z5;
                    baseDanmaku2 = null;
                    z2 = false;
                }
                if (verifier2 == null || !verifier2.skipLayout(baseDanmaku4, f, i2, z4)) {
                    if (z2) {
                        clear();
                    }
                    baseDanmaku4.layout(iDisplayer2, baseDanmaku.getLeft(), f);
                    if (!z) {
                        this.mVisibleDanmakus.removeItem(baseDanmaku2);
                        this.mVisibleDanmakus.addItem(baseDanmaku4);
                    }
                }
            }
        }

        /* access modifiers changed from: protected */
        public boolean isOutVerticalEdge(boolean z, BaseDanmaku baseDanmaku, IDisplayer iDisplayer, float f, BaseDanmaku baseDanmaku2, BaseDanmaku baseDanmaku3) {
            return f < ((float) iDisplayer.getAllMarginTop()) || !(baseDanmaku2 == null || baseDanmaku2.getBottom() == ((float) iDisplayer.getHeight()));
        }

        public void clear() {
            this.mCancelFixingFlag = true;
            this.mVisibleDanmakus.clear();
        }
    }

    private static class AlignTopRetainer implements IDanmakusRetainer {
        protected boolean mCancelFixingFlag;
        protected RetainerConsumer mConsumer;
        protected Danmakus mVisibleDanmakus;

        protected class RetainerConsumer extends Consumer<BaseDanmaku, RetainerState> {
            public IDisplayer disp;
            public BaseDanmaku drawItem = null;
            public BaseDanmaku firstItem = null;
            public BaseDanmaku insertItem = null;
            public BaseDanmaku lastItem = null;
            int lines = 0;
            public BaseDanmaku minRightRow = null;
            boolean overwriteInsert = false;
            boolean shown = false;
            boolean willHit = false;

            protected RetainerConsumer() {
            }

            public void before() {
                this.lines = 0;
                this.minRightRow = null;
                this.lastItem = null;
                this.firstItem = null;
                this.insertItem = null;
                this.willHit = false;
                this.shown = false;
                this.overwriteInsert = false;
            }

            public int accept(BaseDanmaku baseDanmaku) {
                if (AlignTopRetainer.this.mCancelFixingFlag) {
                    return 1;
                }
                this.lines++;
                if (baseDanmaku == this.drawItem) {
                    this.insertItem = baseDanmaku;
                    this.lastItem = null;
                    this.shown = true;
                    this.willHit = false;
                    return 1;
                }
                if (this.firstItem == null) {
                    this.firstItem = baseDanmaku;
                }
                if (this.drawItem.paintHeight + baseDanmaku.getTop() > ((float) this.disp.getHeight())) {
                    this.overwriteInsert = true;
                    return 1;
                }
                BaseDanmaku baseDanmaku2 = this.minRightRow;
                if (baseDanmaku2 == null) {
                    this.minRightRow = baseDanmaku;
                } else if (baseDanmaku2.getRight() >= baseDanmaku.getRight()) {
                    this.minRightRow = baseDanmaku;
                }
                IDisplayer iDisplayer = this.disp;
                BaseDanmaku baseDanmaku3 = this.drawItem;
                this.willHit = DanmakuUtils.willHitInDuration(iDisplayer, baseDanmaku, baseDanmaku3, baseDanmaku3.getDuration(), this.drawItem.getTimer().currMillisecond);
                if (!this.willHit) {
                    this.insertItem = baseDanmaku;
                    return 1;
                }
                this.lastItem = baseDanmaku;
                return 0;
            }

            public RetainerState result() {
                RetainerState retainerState = new RetainerState();
                retainerState.lines = this.lines;
                retainerState.firstItem = this.firstItem;
                retainerState.insertItem = this.insertItem;
                retainerState.lastItem = this.lastItem;
                retainerState.minRightRow = this.minRightRow;
                retainerState.overwriteInsert = this.overwriteInsert;
                retainerState.shown = this.shown;
                retainerState.willHit = this.willHit;
                return retainerState;
            }
        }

        private AlignTopRetainer() {
            this.mVisibleDanmakus = new Danmakus(1);
            this.mCancelFixingFlag = false;
            this.mConsumer = new RetainerConsumer();
        }

        /* JADX WARNING: Removed duplicated region for block: B:35:0x00b3  */
        /* JADX WARNING: Removed duplicated region for block: B:36:0x00bf  */
        /* JADX WARNING: Removed duplicated region for block: B:38:0x00c2  */
        /* JADX WARNING: Removed duplicated region for block: B:39:0x00ca  */
        /* JADX WARNING: Removed duplicated region for block: B:45:0x00dc  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void fix(master.flame.danmaku.danmaku.model.BaseDanmaku r20, master.flame.danmaku.danmaku.model.IDisplayer r21, master.flame.danmaku.danmaku.renderer.android.DanmakusRetainer.Verifier r22) {
            /*
                r19 = this;
                r7 = r19
                r8 = r20
                r9 = r21
                r10 = r22
                boolean r0 = r20.isOutside()
                if (r0 == 0) goto L_0x000f
                return
            L_0x000f:
                int r0 = r21.getAllMarginTop()
                float r0 = (float) r0
                boolean r1 = r20.isShown()
                r11 = 1
                r12 = 0
                if (r1 != 0) goto L_0x0026
                master.flame.danmaku.danmaku.model.android.Danmakus r2 = r7.mVisibleDanmakus
                boolean r2 = r2.isEmpty()
                if (r2 != 0) goto L_0x0026
                r2 = 1
                goto L_0x0027
            L_0x0026:
                r2 = 0
            L_0x0027:
                int r3 = r21.getMargin()
                r4 = 0
                if (r1 != 0) goto L_0x00df
                r7.mCancelFixingFlag = r12
                master.flame.danmaku.danmaku.renderer.android.DanmakusRetainer$AlignTopRetainer$RetainerConsumer r0 = r7.mConsumer
                r0.disp = r9
                r0.drawItem = r8
                master.flame.danmaku.danmaku.model.android.Danmakus r5 = r7.mVisibleDanmakus
                r5.forEachSync(r0)
                master.flame.danmaku.danmaku.renderer.android.DanmakusRetainer$AlignTopRetainer$RetainerConsumer r0 = r7.mConsumer
                master.flame.danmaku.danmaku.renderer.android.DanmakusRetainer$RetainerState r0 = r0.result()
                if (r0 == 0) goto L_0x0059
                int r1 = r0.lines
                master.flame.danmaku.danmaku.model.BaseDanmaku r2 = r0.insertItem
                master.flame.danmaku.danmaku.model.BaseDanmaku r5 = r0.firstItem
                master.flame.danmaku.danmaku.model.BaseDanmaku r6 = r0.lastItem
                master.flame.danmaku.danmaku.model.BaseDanmaku r13 = r0.minRightRow
                boolean r14 = r0.overwriteInsert
                boolean r15 = r0.shown
                boolean r0 = r0.willHit
                r18 = r14
                r14 = r1
                r1 = r18
                goto L_0x0061
            L_0x0059:
                r15 = r1
                r0 = r2
                r2 = r4
                r5 = r2
                r6 = r5
                r13 = r6
                r1 = 0
                r14 = 0
            L_0x0061:
                if (r2 == 0) goto L_0x007c
                if (r6 == 0) goto L_0x006c
                float r13 = r6.getBottom()
                float r3 = (float) r3
                float r13 = r13 + r3
                goto L_0x0070
            L_0x006c:
                float r13 = r2.getTop()
            L_0x0070:
                if (r2 == r8) goto L_0x0076
                r17 = r0
                r15 = r2
                goto L_0x00a6
            L_0x0076:
                r17 = r0
            L_0x0078:
                r16 = r15
                r0 = 1
                goto L_0x009a
            L_0x007c:
                if (r1 == 0) goto L_0x008c
                if (r13 == 0) goto L_0x008c
                float r2 = r13.getTop()
                r17 = r0
                r13 = r2
                r15 = r4
                r0 = 0
            L_0x0089:
                r16 = 0
                goto L_0x00b1
            L_0x008c:
                if (r6 == 0) goto L_0x009c
                float r0 = r6.getBottom()
                float r2 = (float) r3
                float r0 = r0 + r2
                r13 = r0
                r16 = r15
                r0 = 1
                r17 = 0
            L_0x009a:
                r15 = r4
                goto L_0x00b1
            L_0x009c:
                if (r5 == 0) goto L_0x00a8
                float r2 = r5.getTop()
                r17 = r0
                r13 = r2
                r15 = r5
            L_0x00a6:
                r0 = 1
                goto L_0x0089
            L_0x00a8:
                int r2 = r21.getAllMarginTop()
                float r2 = (float) r2
                r17 = r0
                r13 = r2
                goto L_0x0078
            L_0x00b1:
                if (r0 == 0) goto L_0x00bf
                r0 = r19
                r2 = r20
                r3 = r21
                r4 = r13
                boolean r0 = r0.isOutVerticalEdge(r1, r2, r3, r4, r5, r6)
                goto L_0x00c0
            L_0x00bf:
                r0 = 0
            L_0x00c0:
                if (r0 == 0) goto L_0x00ca
                int r1 = r21.getAllMarginTop()
                float r1 = (float) r1
                r13 = r1
                r2 = 1
                goto L_0x00d2
            L_0x00ca:
                if (r15 == 0) goto L_0x00cf
                int r11 = r14 + -1
                goto L_0x00d0
            L_0x00cf:
                r11 = r14
            L_0x00d0:
                r2 = r17
            L_0x00d2:
                int r1 = r21.getAllMarginTop()
                float r1 = (float) r1
                int r1 = (r13 > r1 ? 1 : (r13 == r1 ? 0 : -1))
                if (r1 != 0) goto L_0x00dc
                goto L_0x00e4
            L_0x00dc:
                r12 = r16
                goto L_0x00e4
            L_0x00df:
                r13 = r0
                r12 = r1
                r15 = r4
                r0 = 0
                r11 = 0
            L_0x00e4:
                if (r10 == 0) goto L_0x00ed
                boolean r1 = r10.skipLayout(r8, r13, r11, r2)
                if (r1 == 0) goto L_0x00ed
                return
            L_0x00ed:
                if (r0 == 0) goto L_0x00f2
                r19.clear()
            L_0x00f2:
                float r0 = r20.getLeft()
                r8.layout(r9, r0, r13)
                if (r12 != 0) goto L_0x0105
                master.flame.danmaku.danmaku.model.android.Danmakus r0 = r7.mVisibleDanmakus
                r0.removeItem(r15)
                master.flame.danmaku.danmaku.model.android.Danmakus r0 = r7.mVisibleDanmakus
                r0.addItem(r8)
            L_0x0105:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.danmaku.renderer.android.DanmakusRetainer.AlignTopRetainer.fix(master.flame.danmaku.danmaku.model.BaseDanmaku, master.flame.danmaku.danmaku.model.IDisplayer, master.flame.danmaku.danmaku.renderer.android.DanmakusRetainer$Verifier):void");
        }

        /* access modifiers changed from: protected */
        public boolean isOutVerticalEdge(boolean z, BaseDanmaku baseDanmaku, IDisplayer iDisplayer, float f, BaseDanmaku baseDanmaku2, BaseDanmaku baseDanmaku3) {
            return f < ((float) iDisplayer.getAllMarginTop()) || (baseDanmaku2 != null && baseDanmaku2.getTop() > 0.0f) || f + baseDanmaku.paintHeight > ((float) iDisplayer.getHeight());
        }

        public void clear() {
            this.mCancelFixingFlag = true;
            this.mVisibleDanmakus.clear();
        }
    }

    private static class FTDanmakusRetainer extends AlignTopRetainer {
        private FTDanmakusRetainer() {
            super();
        }

        /* access modifiers changed from: protected */
        public boolean isOutVerticalEdge(boolean z, BaseDanmaku baseDanmaku, IDisplayer iDisplayer, float f, BaseDanmaku baseDanmaku2, BaseDanmaku baseDanmaku3) {
            return f + baseDanmaku.paintHeight > ((float) iDisplayer.getHeight());
        }
    }

    public interface IDanmakusRetainer {
        void clear();

        void fix(BaseDanmaku baseDanmaku, IDisplayer iDisplayer, Verifier verifier);
    }

    private static class RetainerState {
        public BaseDanmaku firstItem;
        public BaseDanmaku insertItem;
        public BaseDanmaku lastItem;
        public int lines;
        public BaseDanmaku minRightRow;
        public boolean overwriteInsert;
        public BaseDanmaku removeItem;
        public boolean shown;
        public boolean willHit;

        private RetainerState() {
            this.lines = 0;
            this.insertItem = null;
            this.firstItem = null;
            this.lastItem = null;
            this.minRightRow = null;
            this.removeItem = null;
            this.overwriteInsert = false;
            this.shown = false;
            this.willHit = false;
        }
    }

    public interface Verifier {
        boolean skipLayout(BaseDanmaku baseDanmaku, float f, int i, boolean z);
    }

    public DanmakusRetainer(boolean z) {
        alignBottom(z);
    }

    public void alignBottom(boolean z) {
        this.rldrInstance = z ? new AlignBottomRetainer() : new AlignTopRetainer();
        this.lrdrInstance = z ? new AlignBottomRetainer() : new AlignTopRetainer();
        if (this.ftdrInstance == null) {
            this.ftdrInstance = new FTDanmakusRetainer();
        }
        if (this.fbdrInstance == null) {
            this.fbdrInstance = new AlignBottomRetainer();
        }
    }

    public void fix(BaseDanmaku baseDanmaku, IDisplayer iDisplayer, Verifier verifier) {
        int type = baseDanmaku.getType();
        if (type == 1) {
            this.rldrInstance.fix(baseDanmaku, iDisplayer, verifier);
        } else if (type == 4) {
            this.fbdrInstance.fix(baseDanmaku, iDisplayer, verifier);
        } else if (type == 5) {
            this.ftdrInstance.fix(baseDanmaku, iDisplayer, verifier);
        } else if (type == 6) {
            this.lrdrInstance.fix(baseDanmaku, iDisplayer, verifier);
        } else if (type == 7) {
            baseDanmaku.layout(iDisplayer, 0.0f, 0.0f);
        }
    }

    public void clear() {
        IDanmakusRetainer iDanmakusRetainer = this.rldrInstance;
        if (iDanmakusRetainer != null) {
            iDanmakusRetainer.clear();
        }
        IDanmakusRetainer iDanmakusRetainer2 = this.lrdrInstance;
        if (iDanmakusRetainer2 != null) {
            iDanmakusRetainer2.clear();
        }
        IDanmakusRetainer iDanmakusRetainer3 = this.ftdrInstance;
        if (iDanmakusRetainer3 != null) {
            iDanmakusRetainer3.clear();
        }
        IDanmakusRetainer iDanmakusRetainer4 = this.fbdrInstance;
        if (iDanmakusRetainer4 != null) {
            iDanmakusRetainer4.clear();
        }
    }

    public void release() {
        clear();
    }
}
