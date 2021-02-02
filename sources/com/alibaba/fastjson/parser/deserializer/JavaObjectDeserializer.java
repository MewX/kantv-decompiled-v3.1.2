package com.alibaba.fastjson.parser.deserializer;

public class JavaObjectDeserializer implements ObjectDeserializer {
    public static final JavaObjectDeserializer instance = new JavaObjectDeserializer();

    public int getFastMatchToken() {
        return 12;
    }

    /* JADX WARNING: type inference failed for: r2v8, types: [T, java.lang.Object[]] */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r2v8, types: [T, java.lang.Object[]]
      assigns: [java.lang.Object[]]
      uses: [java.lang.Object[], T]
      mth insns count: 32
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r2, java.lang.reflect.Type r3, java.lang.Object r4) {
        /*
            r1 = this;
            boolean r0 = r3 instanceof java.lang.reflect.GenericArrayType
            if (r0 == 0) goto L_0x003a
            java.lang.reflect.GenericArrayType r3 = (java.lang.reflect.GenericArrayType) r3
            java.lang.reflect.Type r3 = r3.getGenericComponentType()
            boolean r4 = r3 instanceof java.lang.reflect.TypeVariable
            if (r4 == 0) goto L_0x0017
            java.lang.reflect.TypeVariable r3 = (java.lang.reflect.TypeVariable) r3
            java.lang.reflect.Type[] r3 = r3.getBounds()
            r4 = 0
            r3 = r3[r4]
        L_0x0017:
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            r2.parseArray(r3, r4)
            boolean r2 = r3 instanceof java.lang.Class
            if (r2 == 0) goto L_0x0035
            java.lang.Class r3 = (java.lang.Class) r3
            int r2 = r4.size()
            java.lang.Object r2 = java.lang.reflect.Array.newInstance(r3, r2)
            java.lang.Object[] r2 = (java.lang.Object[]) r2
            java.lang.Object[] r2 = (java.lang.Object[]) r2
            r4.toArray(r2)
            return r2
        L_0x0035:
            java.lang.Object[] r2 = r4.toArray()
            return r2
        L_0x003a:
            boolean r0 = r3 instanceof java.lang.Class
            if (r0 == 0) goto L_0x004b
            java.lang.Class<java.lang.Object> r0 = java.lang.Object.class
            if (r3 == r0) goto L_0x004b
            java.lang.Class<java.io.Serializable> r0 = java.io.Serializable.class
            if (r3 == r0) goto L_0x004b
            java.lang.Object r2 = r2.parseObject(r3)
            return r2
        L_0x004b:
            java.lang.Object r2 = r2.parse(r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object):java.lang.Object");
    }
}
