package com.google.android.gms.internal.gtm;

final class zzaf implements Runnable {
    private final /* synthetic */ int zzvv;
    private final /* synthetic */ zzae zzvw;

    zzaf(zzae zzae, int i) {
        this.zzvw = zzae;
        this.zzvv = i;
    }

    public final void run() {
        
        /*  JADX ERROR: Method code generation error
            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x000d: INVOKE  (wrap: com.google.android.gms.internal.gtm.zzbb
              0x0002: INVOKE  (r0v1 com.google.android.gms.internal.gtm.zzbb) = (wrap: com.google.android.gms.internal.gtm.zzae
              0x0000: IGET  (r0v0 com.google.android.gms.internal.gtm.zzae) = (r5v0 'this' com.google.android.gms.internal.gtm.zzaf A[THIS]) com.google.android.gms.internal.gtm.zzaf.zzvw com.google.android.gms.internal.gtm.zzae) com.google.android.gms.internal.gtm.zzae.zza(com.google.android.gms.internal.gtm.zzae):com.google.android.gms.internal.gtm.zzbb type: STATIC), (wrap: long
              0x000b: ARITH  (r1v2 long) = (wrap: long
              0x0008: CAST  (r1v1 long) = (long) (wrap: int
              0x0006: IGET  (r1v0 int) = (r5v0 'this' com.google.android.gms.internal.gtm.zzaf A[THIS]) com.google.android.gms.internal.gtm.zzaf.zzvv int)) * (1000 long)) com.google.android.gms.internal.gtm.zzbb.zzg(long):void type: VIRTUAL in method: com.google.android.gms.internal.gtm.zzaf.run():void, dex: classes2.dex
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:245)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:213)
            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
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
            Caused by: jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0002: INVOKE  (r0v1 com.google.android.gms.internal.gtm.zzbb) = (wrap: com.google.android.gms.internal.gtm.zzae
              0x0000: IGET  (r0v0 com.google.android.gms.internal.gtm.zzae) = (r5v0 'this' com.google.android.gms.internal.gtm.zzaf A[THIS]) com.google.android.gms.internal.gtm.zzaf.zzvw com.google.android.gms.internal.gtm.zzae) com.google.android.gms.internal.gtm.zzae.zza(com.google.android.gms.internal.gtm.zzae):com.google.android.gms.internal.gtm.zzbb type: STATIC in method: com.google.android.gms.internal.gtm.zzaf.run():void, dex: classes2.dex
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:245)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:105)
            	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:88)
            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:682)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:239)
            	... 19 more
            Caused by: java.util.ConcurrentModificationException
            	at java.util.ArrayList.removeIf(ArrayList.java:1435)
            	at jadx.core.dex.instructions.args.SSAVar.removeUse(SSAVar.java:86)
            	at jadx.core.dex.instructions.args.SSAVar.use(SSAVar.java:79)
            	at jadx.core.dex.nodes.InsnNode.attachArg(InsnNode.java:87)
            	at jadx.core.dex.nodes.InsnNode.addArg(InsnNode.java:73)
            	at jadx.core.dex.nodes.InsnNode.copyCommonParams(InsnNode.java:335)
            	at jadx.core.dex.instructions.IndexInsnNode.copy(IndexInsnNode.java:24)
            	at jadx.core.dex.instructions.IndexInsnNode.copy(IndexInsnNode.java:9)
            	at jadx.core.dex.nodes.InsnNode.copyCommonParams(InsnNode.java:333)
            	at jadx.core.dex.nodes.InsnNode.copy(InsnNode.java:350)
            	at jadx.core.codegen.InsnGen.inlineMethod(InsnGen.java:880)
            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:669)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:223)
            	... 24 more
            */
        /*
            this = this;
            com.google.android.gms.internal.gtm.zzae r0 = r5.zzvw
            com.google.android.gms.internal.gtm.zzbb r0 = r0.zzvu
            int r1 = r5.zzvv
            long r1 = (long) r1
            r3 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 * r3
            r0.zzg(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzaf.run():void");
    }
}
