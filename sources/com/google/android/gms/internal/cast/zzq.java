package com.google.android.gms.internal.cast;

final class zzq implements Runnable {
    private final /* synthetic */ zzo zzix;

    zzq(zzo zzo) {
        this.zzix = zzo;
    }

    public final void run() {
        if (
        /*  JADX ERROR: Method code generation error
            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0004: INVOKE  (r0v2 boolean) = (wrap: com.google.android.gms.internal.cast.zzn
              0x0002: IGET  (r0v1 com.google.android.gms.internal.cast.zzn) = (wrap: com.google.android.gms.internal.cast.zzo
              0x0000: IGET  (r0v0 com.google.android.gms.internal.cast.zzo) = (r2v0 'this' com.google.android.gms.internal.cast.zzq A[THIS]) com.google.android.gms.internal.cast.zzq.zzix com.google.android.gms.internal.cast.zzo) com.google.android.gms.internal.cast.zzo.zziw com.google.android.gms.internal.cast.zzn) com.google.android.gms.internal.cast.zzn.zza(com.google.android.gms.internal.cast.zzn):boolean type: STATIC in method: com.google.android.gms.internal.cast.zzq.run():void, dex: classes2.dex
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:245)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:105)
            	at jadx.core.codegen.ConditionGen.addCompare(ConditionGen.java:115)
            	at jadx.core.codegen.ConditionGen.add(ConditionGen.java:57)
            	at jadx.core.codegen.ConditionGen.add(ConditionGen.java:46)
            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
            	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
            	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:210)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:203)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:316)
            	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:262)
            	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:225)
            	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:110)
            	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:76)
            	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
            	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:32)
            	at jadx.core.codegen.CodeGen.generate(CodeGen.java:20)
            	at jadx.core.ProcessClass.process(ProcessClass.java:36)
            	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
            	at jadx.api.JavaClass.decompile(JavaClass.java:62)
            	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
            Caused by: java.util.ConcurrentModificationException
            	at java.util.ArrayList.removeIf(ArrayList.java:1419)
            	at jadx.core.dex.instructions.args.SSAVar.removeUse(SSAVar.java:86)
            	at jadx.core.utils.InsnRemover.unbindArgUsage(InsnRemover.java:90)
            	at jadx.core.dex.nodes.InsnNode.replaceArg(InsnNode.java:130)
            	at jadx.core.dex.nodes.InsnNode.replaceArg(InsnNode.java:134)
            	at jadx.core.codegen.InsnGen.inlineMethod(InsnGen.java:892)
            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:669)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:223)
            	... 24 more
            */
        /*
            this = this;
            com.google.android.gms.internal.cast.zzo r0 = r2.zzix
            com.google.android.gms.internal.cast.zzn r0 = r0.zziw
            boolean r0 = r0.zziv
            if (r0 == 0) goto L_0x003f
            com.google.android.gms.internal.cast.zzo r0 = r2.zzix
            com.google.android.gms.internal.cast.zzn r0 = r0.zziw
            android.app.Activity r0 = r0.zzhy
            android.view.Window r0 = r0.getWindow()
            android.view.View r0 = r0.getDecorView()
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            com.google.android.gms.internal.cast.zzo r1 = r2.zzix
            com.google.android.gms.internal.cast.zzn r1 = r1.zziw
            r0.removeView(r1)
            com.google.android.gms.internal.cast.zzo r0 = r2.zzix
            com.google.android.gms.internal.cast.zzn r0 = r0.zziw
            com.google.android.gms.cast.framework.IntroductoryOverlay$OnOverlayDismissedListener r0 = r0.zzic
            if (r0 == 0) goto L_0x0038
            com.google.android.gms.internal.cast.zzo r0 = r2.zzix
            com.google.android.gms.internal.cast.zzn r0 = r0.zziw
            com.google.android.gms.cast.framework.IntroductoryOverlay$OnOverlayDismissedListener r0 = r0.zzic
            r0.onOverlayDismissed()
        L_0x0038:
            com.google.android.gms.internal.cast.zzo r0 = r2.zzix
            com.google.android.gms.internal.cast.zzn r0 = r0.zziw
            r0.reset()
        L_0x003f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzq.run():void");
    }
}
