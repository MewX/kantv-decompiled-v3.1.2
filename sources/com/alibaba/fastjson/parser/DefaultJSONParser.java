package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.JSONPathException;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessable;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldTypeResolver;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.ResolveFieldDeserializer;
import com.alibaba.fastjson.serializer.BeanContext;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.LongCodec;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class DefaultJSONParser implements Closeable {
    public static final int NONE = 0;
    public static final int NeedToResolve = 1;
    public static final int TypeNameRedirect = 2;
    private static final Set<Class<?>> primitiveClasses = new HashSet();
    private String[] autoTypeAccept;
    private boolean autoTypeEnable;
    protected ParserConfig config;
    protected ParseContext context;
    private ParseContext[] contextArray;
    private int contextArrayIndex;
    private DateFormat dateFormat;
    private String dateFormatPattern;
    private List<ExtraProcessor> extraProcessors;
    private List<ExtraTypeProvider> extraTypeProviders;
    protected FieldTypeResolver fieldTypeResolver;
    public final Object input;
    protected transient BeanContext lastBeanContext;
    public final JSONLexer lexer;
    public int resolveStatus;
    private List<ResolveTask> resolveTaskList;
    public final SymbolTable symbolTable;

    public static class ResolveTask {
        public final ParseContext context;
        public FieldDeserializer fieldDeserializer;
        public ParseContext ownerContext;
        public final String referenceValue;

        public ResolveTask(ParseContext parseContext, String str) {
            this.context = parseContext;
            this.referenceValue = str;
        }
    }

    static {
        for (Class add : new Class[]{Boolean.TYPE, Byte.TYPE, Short.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Boolean.class, Byte.class, Short.class, Integer.class, Long.class, Float.class, Double.class, BigInteger.class, BigDecimal.class, String.class}) {
            primitiveClasses.add(add);
        }
    }

    public String getDateFomartPattern() {
        return this.dateFormatPattern;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null) {
            this.dateFormat = new SimpleDateFormat(this.dateFormatPattern, this.lexer.getLocale());
            this.dateFormat.setTimeZone(this.lexer.getTimeZone());
        }
        return this.dateFormat;
    }

    public void setDateFormat(String str) {
        this.dateFormatPattern = str;
        this.dateFormat = null;
    }

    public void setDateFomrat(DateFormat dateFormat2) {
        this.dateFormat = dateFormat2;
    }

    public DefaultJSONParser(String str) {
        this(str, ParserConfig.getGlobalInstance(), JSON.DEFAULT_PARSER_FEATURE);
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig) {
        this((Object) str, (JSONLexer) new JSONScanner(str, JSON.DEFAULT_PARSER_FEATURE), parserConfig);
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig, int i) {
        this((Object) str, (JSONLexer) new JSONScanner(str, i), parserConfig);
    }

    public DefaultJSONParser(char[] cArr, int i, ParserConfig parserConfig, int i2) {
        this((Object) cArr, (JSONLexer) new JSONScanner(cArr, i, i2), parserConfig);
    }

    public DefaultJSONParser(JSONLexer jSONLexer) {
        this(jSONLexer, ParserConfig.getGlobalInstance());
    }

    public DefaultJSONParser(JSONLexer jSONLexer, ParserConfig parserConfig) {
        this((Object) null, jSONLexer, parserConfig);
    }

    public DefaultJSONParser(Object obj, JSONLexer jSONLexer, ParserConfig parserConfig) {
        this.dateFormatPattern = JSON.DEFFAULT_DATE_FORMAT;
        this.contextArrayIndex = 0;
        this.resolveStatus = 0;
        this.extraTypeProviders = null;
        this.extraProcessors = null;
        this.fieldTypeResolver = null;
        this.autoTypeAccept = null;
        this.lexer = jSONLexer;
        this.input = obj;
        this.config = parserConfig;
        this.symbolTable = parserConfig.symbolTable;
        char current = jSONLexer.getCurrent();
        if (current == '{') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 12;
        } else if (current == '[') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 14;
        } else {
            jSONLexer.nextToken();
        }
    }

    public SymbolTable getSymbolTable() {
        return this.symbolTable;
    }

    public String getInput() {
        Object obj = this.input;
        if (obj instanceof char[]) {
            return new String((char[]) obj);
        }
        return obj.toString();
    }

    /* JADX WARNING: type inference failed for: r5v5, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r5v7, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r5v10, types: [java.lang.Number] */
    /* JADX WARNING: type inference failed for: r5v11, types: [java.lang.Number] */
    /* JADX WARNING: type inference failed for: r5v19, types: [com.alibaba.fastjson.JSONArray, java.util.Collection] */
    /* JADX WARNING: type inference failed for: r5v20, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r5v23, types: [java.lang.Object[]] */
    /* JADX WARNING: type inference failed for: r5v24, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r5v25, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r5v26 */
    /* JADX WARNING: type inference failed for: r5v28, types: [java.util.Date] */
    /* JADX WARNING: type inference failed for: r5v58 */
    /* JADX WARNING: type inference failed for: r5v59 */
    /* JADX WARNING: type inference failed for: r5v60 */
    /* JADX WARNING: type inference failed for: r5v61 */
    /* JADX WARNING: type inference failed for: r5v62 */
    /* JADX WARNING: type inference failed for: r5v63 */
    /* JADX WARNING: type inference failed for: r5v64 */
    /* JADX INFO: used method not loaded: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.createInstance(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type):null, types can be incorrect */
    /* JADX INFO: used method not loaded: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.getFieldDeserializer(java.lang.String):null, types can be incorrect */
    /* JADX INFO: used method not loaded: com.alibaba.fastjson.parser.deserializer.FieldDeserializer.setValue(java.lang.Object, java.lang.Object):null, types can be incorrect */
    /* JADX WARNING: Code restructure failed: missing block: B:118:0x0242, code lost:
        r3.nextToken(16);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x024d, code lost:
        if (r3.token() != 13) goto L_0x02b9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x024f, code lost:
        r3.nextToken(16);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:?, code lost:
        r0 = r1.config.getDeserializer((java.lang.reflect.Type) r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:123:0x025a, code lost:
        if ((r0 instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) == false) goto L_0x028e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:124:0x025c, code lost:
        r0 = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) r0;
        r2 = r0.createInstance(r1, (java.lang.reflect.Type) r6);
        r3 = r7.entrySet().iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:126:0x026e, code lost:
        if (r3.hasNext() == false) goto L_0x028f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:127:0x0270, code lost:
        r4 = (java.util.Map.Entry) r3.next();
        r7 = r4.getKey();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:128:0x027c, code lost:
        if ((r7 instanceof java.lang.String) == false) goto L_0x026a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:129:0x027e, code lost:
        r7 = r0.getFieldDeserializer((java.lang.String) r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:130:0x0284, code lost:
        if (r7 == null) goto L_0x026a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:131:0x0286, code lost:
        r7.setValue(r2, r4.getValue());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:132:0x028e, code lost:
        r2 = r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:133:0x028f, code lost:
        if (r2 != null) goto L_0x02ac;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:135:0x0293, code lost:
        if (r6 != java.lang.Cloneable.class) goto L_0x029b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:136:0x0295, code lost:
        r2 = new java.util.HashMap();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:138:0x02a1, code lost:
        if ("java.util.Collections$EmptyMap".equals(r5) == false) goto L_0x02a8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:139:0x02a3, code lost:
        r2 = java.util.Collections.emptyMap();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:0x02a8, code lost:
        r2 = r6.newInstance();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:141:0x02ac, code lost:
        setContext(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:142:0x02af, code lost:
        return r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:147:0x02b9, code lost:
        setResolveStatus(2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:148:0x02bf, code lost:
        if (r1.context == null) goto L_0x02d2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:149:0x02c1, code lost:
        if (r2 == null) goto L_0x02d2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:0x02c5, code lost:
        if ((r2 instanceof java.lang.Integer) != false) goto L_0x02d2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:153:0x02cd, code lost:
        if ((r1.context.fieldName instanceof java.lang.Integer) != false) goto L_0x02d2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:154:0x02cf, code lost:
        popContext();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:156:0x02d6, code lost:
        if (r17.size() <= 0) goto L_0x02e5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:157:0x02d8, code lost:
        r0 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r0, r6, r1.config);
        parseObject(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:158:0x02e1, code lost:
        setContext(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:159:0x02e4, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:161:?, code lost:
        r0 = r1.config.getDeserializer((java.lang.reflect.Type) r6).deserialze(r1, r6, r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:162:0x02ef, code lost:
        setContext(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:163:0x02f2, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:170:0x0302, code lost:
        r3.nextToken(4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:171:0x030b, code lost:
        if (r3.token() != 4) goto L_0x039a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:172:0x030d, code lost:
        r0 = r3.stringVal();
        r3.nextToken(13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:173:0x031c, code lost:
        if ("@".equals(r0) == false) goto L_0x0338;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:175:0x0320, code lost:
        if (r1.context == null) goto L_0x0382;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:176:0x0322, code lost:
        r0 = r1.context;
        r5 = r0.object;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:177:0x0328, code lost:
        if ((r5 instanceof java.lang.Object[]) != false) goto L_0x0383;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:179:0x032c, code lost:
        if ((r5 instanceof java.util.Collection) == false) goto L_0x032f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:182:0x0331, code lost:
        if (r0.parent == null) goto L_0x0382;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:183:0x0333, code lost:
        r5 = r0.parent.object;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:185:0x033e, code lost:
        if ("..".equals(r0) == false) goto L_0x0353;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:187:0x0342, code lost:
        if (r10.object == null) goto L_0x0347;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:188:0x0344, code lost:
        r5 = r10.object;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:189:0x0347, code lost:
        addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(r10, r0));
        setResolveStatus(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:191:0x0359, code lost:
        if ("$".equals(r0) == false) goto L_0x0377;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:192:0x035b, code lost:
        r2 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:194:0x035e, code lost:
        if (r2.parent == null) goto L_0x0363;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:195:0x0360, code lost:
        r2 = r2.parent;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:197:0x0365, code lost:
        if (r2.object == null) goto L_0x036b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:198:0x0367, code lost:
        r5 = r2.object;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:199:0x036b, code lost:
        addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(r2, r0));
        setResolveStatus(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:200:0x0377, code lost:
        addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(r10, r0));
        setResolveStatus(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:201:0x0382, code lost:
        r5 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:203:0x0389, code lost:
        if (r3.token() != 13) goto L_0x0394;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:204:0x038b, code lost:
        r3.nextToken(16);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:205:0x0390, code lost:
        setContext(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:206:0x0393, code lost:
        return r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:209:0x0399, code lost:
        throw new com.alibaba.fastjson.JSONException(r9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:210:0x039a, code lost:
        r2 = new java.lang.StringBuilder();
        r2.append("illegal ref, ");
        r2.append(com.alibaba.fastjson.parser.JSONToken.name(r3.token()));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:211:0x03b8, code lost:
        throw new com.alibaba.fastjson.JSONException(r2.toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:253:0x044c, code lost:
        if (r6 != '}') goto L_0x045e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:254:0x044e, code lost:
        r3.next();
        r3.resetStringPosition();
        r3.nextToken();
        setContext(r5, r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:255:0x045a, code lost:
        setContext(r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:256:0x045d, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:258:?, code lost:
        r2 = new java.lang.StringBuilder();
        r2.append("syntax error, position at ");
        r2.append(r3.pos());
        r2.append(r15);
        r2.append(r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:259:0x047e, code lost:
        throw new com.alibaba.fastjson.JSONException(r2.toString());
     */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r5v24, types: [java.lang.String]
      assigns: [java.lang.String, java.util.Date]
      uses: [java.lang.String, java.lang.Object]
      mth insns count: 542
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
    /* JADX WARNING: Removed duplicated region for block: B:102:0x01e8 A[Catch:{ Exception -> 0x02b0, NumberFormatException -> 0x017a, all -> 0x05bf }] */
    /* JADX WARNING: Removed duplicated region for block: B:213:0x03bb A[Catch:{ Exception -> 0x02b0, NumberFormatException -> 0x017a, all -> 0x05bf }] */
    /* JADX WARNING: Removed duplicated region for block: B:231:0x03e9 A[Catch:{ Exception -> 0x02b0, NumberFormatException -> 0x017a, all -> 0x05bf }] */
    /* JADX WARNING: Removed duplicated region for block: B:238:0x0412 A[Catch:{ Exception -> 0x02b0, NumberFormatException -> 0x017a, all -> 0x05bf }] */
    /* JADX WARNING: Removed duplicated region for block: B:251:0x0443 A[Catch:{ Exception -> 0x02b0, NumberFormatException -> 0x017a, all -> 0x05bf }] */
    /* JADX WARNING: Removed duplicated region for block: B:303:0x0512 A[Catch:{ Exception -> 0x02b0, NumberFormatException -> 0x017a, all -> 0x05bf }] */
    /* JADX WARNING: Removed duplicated region for block: B:308:0x051e A[Catch:{ Exception -> 0x02b0, NumberFormatException -> 0x017a, all -> 0x05bf }] */
    /* JADX WARNING: Removed duplicated region for block: B:311:0x052a A[Catch:{ Exception -> 0x02b0, NumberFormatException -> 0x017a, all -> 0x05bf }] */
    /* JADX WARNING: Removed duplicated region for block: B:317:0x053f A[SYNTHETIC, Splitter:B:317:0x053f] */
    /* JADX WARNING: Removed duplicated region for block: B:346:0x0302 A[EDGE_INSN: B:346:0x0302->B:170:0x0302 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:350:0x0535 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:352:0x044c A[EDGE_INSN: B:352:0x044c->B:253:0x044c ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Unknown variable types count: 8 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object parseObject(java.util.Map r17, java.lang.Object r18) {
        /*
            r16 = this;
            r1 = r16
            r0 = r17
            r2 = r18
            com.alibaba.fastjson.parser.JSONLexer r3 = r1.lexer
            int r4 = r3.token()
            r5 = 0
            r6 = 8
            if (r4 != r6) goto L_0x0015
            r3.nextToken()
            return r5
        L_0x0015:
            int r4 = r3.token()
            r6 = 13
            if (r4 != r6) goto L_0x0021
            r3.nextToken()
            return r0
        L_0x0021:
            int r4 = r3.token()
            r7 = 12
            r8 = 16
            if (r4 == r7) goto L_0x0059
            int r4 = r3.token()
            if (r4 != r8) goto L_0x0032
            goto L_0x0059
        L_0x0032:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "syntax error, expect {, actual "
            r2.append(r4)
            java.lang.String r4 = r3.tokenName()
            r2.append(r4)
            java.lang.String r4 = ", "
            r2.append(r4)
            java.lang.String r3 = r3.info()
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r0.<init>(r2)
            throw r0
        L_0x0059:
            com.alibaba.fastjson.parser.ParseContext r4 = r1.context
            boolean r7 = r0 instanceof com.alibaba.fastjson.JSONObject     // Catch:{ all -> 0x05c1 }
            if (r7 == 0) goto L_0x0067
            r7 = r0
            com.alibaba.fastjson.JSONObject r7 = (com.alibaba.fastjson.JSONObject) r7     // Catch:{ all -> 0x05c1 }
            java.util.Map r7 = r7.getInnerMap()     // Catch:{ all -> 0x05c1 }
            goto L_0x0068
        L_0x0067:
            r7 = r0
        L_0x0068:
            r10 = r4
            r4 = 0
        L_0x006a:
            r3.skipWhitespace()     // Catch:{ all -> 0x05bf }
            char r11 = r3.getCurrent()     // Catch:{ all -> 0x05bf }
            com.alibaba.fastjson.parser.Feature r12 = com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas     // Catch:{ all -> 0x05bf }
            boolean r12 = r3.isEnabled(r12)     // Catch:{ all -> 0x05bf }
            r13 = 44
            if (r12 == 0) goto L_0x0088
        L_0x007b:
            if (r11 != r13) goto L_0x0088
            r3.next()     // Catch:{ all -> 0x05bf }
            r3.skipWhitespace()     // Catch:{ all -> 0x05bf }
            char r11 = r3.getCurrent()     // Catch:{ all -> 0x05bf }
            goto L_0x007b
        L_0x0088:
            r14 = 125(0x7d, float:1.75E-43)
            java.lang.String r15 = ", name "
            java.lang.String r6 = "expect ':' at "
            r8 = 58
            r5 = 34
            java.lang.String r9 = "syntax error"
            r12 = 1
            if (r11 != r5) goto L_0x00c8
            com.alibaba.fastjson.parser.SymbolTable r11 = r1.symbolTable     // Catch:{ all -> 0x05bf }
            java.lang.String r11 = r3.scanSymbol(r11, r5)     // Catch:{ all -> 0x05bf }
            r3.skipWhitespace()     // Catch:{ all -> 0x05bf }
            char r5 = r3.getCurrent()     // Catch:{ all -> 0x05bf }
            if (r5 != r8) goto L_0x00a9
        L_0x00a6:
            r5 = 0
            goto L_0x01e6
        L_0x00a9:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x05bf }
            r2.<init>()     // Catch:{ all -> 0x05bf }
            r2.append(r6)     // Catch:{ all -> 0x05bf }
            int r3 = r3.pos()     // Catch:{ all -> 0x05bf }
            r2.append(r3)     // Catch:{ all -> 0x05bf }
            r2.append(r15)     // Catch:{ all -> 0x05bf }
            r2.append(r11)     // Catch:{ all -> 0x05bf }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x05bf }
            r0.<init>(r2)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x00c8:
            if (r11 != r14) goto L_0x00f3
            r3.next()     // Catch:{ all -> 0x05bf }
            r3.resetStringPosition()     // Catch:{ all -> 0x05bf }
            r3.nextToken()     // Catch:{ all -> 0x05bf }
            if (r4 != 0) goto L_0x00ef
            com.alibaba.fastjson.parser.ParseContext r3 = r1.context     // Catch:{ all -> 0x05bf }
            if (r3 == 0) goto L_0x00e8
            com.alibaba.fastjson.parser.ParseContext r3 = r1.context     // Catch:{ all -> 0x05bf }
            java.lang.Object r3 = r3.fieldName     // Catch:{ all -> 0x05bf }
            if (r2 != r3) goto L_0x00e8
            com.alibaba.fastjson.parser.ParseContext r3 = r1.context     // Catch:{ all -> 0x05bf }
            java.lang.Object r3 = r3.object     // Catch:{ all -> 0x05bf }
            if (r0 != r3) goto L_0x00e8
            com.alibaba.fastjson.parser.ParseContext r10 = r1.context     // Catch:{ all -> 0x05bf }
            goto L_0x00ef
        L_0x00e8:
            com.alibaba.fastjson.parser.ParseContext r2 = r16.setContext(r17, r18)     // Catch:{ all -> 0x05bf }
            if (r10 != 0) goto L_0x00ef
            r10 = r2
        L_0x00ef:
            r1.setContext(r10)
            return r0
        L_0x00f3:
            r5 = 39
            if (r11 != r5) goto L_0x012e
            com.alibaba.fastjson.parser.Feature r11 = com.alibaba.fastjson.parser.Feature.AllowSingleQuotes     // Catch:{ all -> 0x05bf }
            boolean r11 = r3.isEnabled(r11)     // Catch:{ all -> 0x05bf }
            if (r11 == 0) goto L_0x0128
            com.alibaba.fastjson.parser.SymbolTable r11 = r1.symbolTable     // Catch:{ all -> 0x05bf }
            java.lang.String r11 = r3.scanSymbol(r11, r5)     // Catch:{ all -> 0x05bf }
            r3.skipWhitespace()     // Catch:{ all -> 0x05bf }
            char r5 = r3.getCurrent()     // Catch:{ all -> 0x05bf }
            if (r5 != r8) goto L_0x010f
            goto L_0x00a6
        L_0x010f:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x05bf }
            r2.<init>()     // Catch:{ all -> 0x05bf }
            r2.append(r6)     // Catch:{ all -> 0x05bf }
            int r3 = r3.pos()     // Catch:{ all -> 0x05bf }
            r2.append(r3)     // Catch:{ all -> 0x05bf }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x05bf }
            r0.<init>(r2)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x0128:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            r0.<init>(r9)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x012e:
            r5 = 26
            if (r11 == r5) goto L_0x05b9
            if (r11 == r13) goto L_0x05b3
            r5 = 48
            if (r11 < r5) goto L_0x013c
            r5 = 57
            if (r11 <= r5) goto L_0x0140
        L_0x013c:
            r5 = 45
            if (r11 != r5) goto L_0x0195
        L_0x0140:
            r3.resetStringPosition()     // Catch:{ all -> 0x05bf }
            r3.scanNumber()     // Catch:{ all -> 0x05bf }
            int r5 = r3.token()     // Catch:{ NumberFormatException -> 0x017a }
            r6 = 2
            if (r5 != r6) goto L_0x0152
            java.lang.Number r5 = r3.integerValue()     // Catch:{ NumberFormatException -> 0x017a }
            goto L_0x0156
        L_0x0152:
            java.lang.Number r5 = r3.decimalValue(r12)     // Catch:{ NumberFormatException -> 0x017a }
        L_0x0156:
            r11 = r5
            char r5 = r3.getCurrent()     // Catch:{ all -> 0x05bf }
            if (r5 != r8) goto L_0x015f
            goto L_0x00a6
        L_0x015f:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x05bf }
            r2.<init>()     // Catch:{ all -> 0x05bf }
            java.lang.String r4 = "parse number key error"
            r2.append(r4)     // Catch:{ all -> 0x05bf }
            java.lang.String r3 = r3.info()     // Catch:{ all -> 0x05bf }
            r2.append(r3)     // Catch:{ all -> 0x05bf }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x05bf }
            r0.<init>(r2)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x017a:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x05bf }
            r2.<init>()     // Catch:{ all -> 0x05bf }
            java.lang.String r4 = "parse number key error"
            r2.append(r4)     // Catch:{ all -> 0x05bf }
            java.lang.String r3 = r3.info()     // Catch:{ all -> 0x05bf }
            r2.append(r3)     // Catch:{ all -> 0x05bf }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x05bf }
            r0.<init>(r2)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x0195:
            r5 = 123(0x7b, float:1.72E-43)
            if (r11 == r5) goto L_0x01de
            r5 = 91
            if (r11 != r5) goto L_0x019e
            goto L_0x01de
        L_0x019e:
            com.alibaba.fastjson.parser.Feature r5 = com.alibaba.fastjson.parser.Feature.AllowUnQuotedFieldNames     // Catch:{ all -> 0x05bf }
            boolean r5 = r3.isEnabled(r5)     // Catch:{ all -> 0x05bf }
            if (r5 == 0) goto L_0x01d8
            com.alibaba.fastjson.parser.SymbolTable r5 = r1.symbolTable     // Catch:{ all -> 0x05bf }
            java.lang.String r11 = r3.scanSymbolUnQuoted(r5)     // Catch:{ all -> 0x05bf }
            r3.skipWhitespace()     // Catch:{ all -> 0x05bf }
            char r5 = r3.getCurrent()     // Catch:{ all -> 0x05bf }
            if (r5 != r8) goto L_0x01b7
            goto L_0x00a6
        L_0x01b7:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x05bf }
            r2.<init>()     // Catch:{ all -> 0x05bf }
            r2.append(r6)     // Catch:{ all -> 0x05bf }
            int r3 = r3.pos()     // Catch:{ all -> 0x05bf }
            r2.append(r3)     // Catch:{ all -> 0x05bf }
            java.lang.String r3 = ", actual "
            r2.append(r3)     // Catch:{ all -> 0x05bf }
            r2.append(r5)     // Catch:{ all -> 0x05bf }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x05bf }
            r0.<init>(r2)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x01d8:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            r0.<init>(r9)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x01de:
            r3.nextToken()     // Catch:{ all -> 0x05bf }
            java.lang.Object r11 = r16.parse()     // Catch:{ all -> 0x05bf }
            r5 = 1
        L_0x01e6:
            if (r5 != 0) goto L_0x01ee
            r3.next()     // Catch:{ all -> 0x05bf }
            r3.skipWhitespace()     // Catch:{ all -> 0x05bf }
        L_0x01ee:
            char r5 = r3.getCurrent()     // Catch:{ all -> 0x05bf }
            r3.resetStringPosition()     // Catch:{ all -> 0x05bf }
            java.lang.String r6 = com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY     // Catch:{ all -> 0x05bf }
            if (r11 != r6) goto L_0x02f3
            com.alibaba.fastjson.parser.Feature r6 = com.alibaba.fastjson.parser.Feature.DisableSpecialKeyDetect     // Catch:{ all -> 0x05bf }
            boolean r6 = r3.isEnabled(r6)     // Catch:{ all -> 0x05bf }
            if (r6 != 0) goto L_0x02f3
            com.alibaba.fastjson.parser.SymbolTable r5 = r1.symbolTable     // Catch:{ all -> 0x05bf }
            r6 = 34
            java.lang.String r5 = r3.scanSymbol(r5, r6)     // Catch:{ all -> 0x05bf }
            com.alibaba.fastjson.parser.Feature r6 = com.alibaba.fastjson.parser.Feature.IgnoreAutoType     // Catch:{ all -> 0x05bf }
            boolean r6 = r3.isEnabled(r6)     // Catch:{ all -> 0x05bf }
            if (r6 == 0) goto L_0x0213
            r9 = 0
            goto L_0x023b
        L_0x0213:
            if (r0 == 0) goto L_0x0229
            java.lang.Class r6 = r17.getClass()     // Catch:{ all -> 0x05bf }
            java.lang.String r6 = r6.getName()     // Catch:{ all -> 0x05bf }
            boolean r6 = r6.equals(r5)     // Catch:{ all -> 0x05bf }
            if (r6 == 0) goto L_0x0229
            java.lang.Class r6 = r17.getClass()     // Catch:{ all -> 0x05bf }
            r9 = 0
            goto L_0x0234
        L_0x0229:
            com.alibaba.fastjson.parser.ParserConfig r6 = r1.config     // Catch:{ all -> 0x05bf }
            int r8 = r3.getFeatures()     // Catch:{ all -> 0x05bf }
            r9 = 0
            java.lang.Class r6 = r6.checkAutoType(r5, r9, r8)     // Catch:{ all -> 0x05bf }
        L_0x0234:
            if (r6 != 0) goto L_0x0242
            java.lang.String r6 = com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY     // Catch:{ all -> 0x05bf }
            r7.put(r6, r5)     // Catch:{ all -> 0x05bf }
        L_0x023b:
            r5 = r9
            r6 = 13
            r8 = 16
            goto L_0x006a
        L_0x0242:
            r4 = 16
            r3.nextToken(r4)     // Catch:{ all -> 0x05bf }
            int r8 = r3.token()     // Catch:{ all -> 0x05bf }
            r11 = 13
            if (r8 != r11) goto L_0x02b9
            r3.nextToken(r4)     // Catch:{ all -> 0x05bf }
            com.alibaba.fastjson.parser.ParserConfig r0 = r1.config     // Catch:{ Exception -> 0x02b0 }
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer r0 = r0.getDeserializer(r6)     // Catch:{ Exception -> 0x02b0 }
            boolean r2 = r0 instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer     // Catch:{ Exception -> 0x02b0 }
            if (r2 == 0) goto L_0x028e
            com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer r0 = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) r0     // Catch:{ Exception -> 0x02b0 }
            java.lang.Object r2 = r0.createInstance(r1, r6)     // Catch:{ Exception -> 0x02b0 }
            java.util.Set r3 = r7.entrySet()     // Catch:{ Exception -> 0x02b0 }
            java.util.Iterator r3 = r3.iterator()     // Catch:{ Exception -> 0x02b0 }
        L_0x026a:
            boolean r4 = r3.hasNext()     // Catch:{ Exception -> 0x02b0 }
            if (r4 == 0) goto L_0x028f
            java.lang.Object r4 = r3.next()     // Catch:{ Exception -> 0x02b0 }
            java.util.Map$Entry r4 = (java.util.Map.Entry) r4     // Catch:{ Exception -> 0x02b0 }
            java.lang.Object r7 = r4.getKey()     // Catch:{ Exception -> 0x02b0 }
            boolean r8 = r7 instanceof java.lang.String     // Catch:{ Exception -> 0x02b0 }
            if (r8 == 0) goto L_0x026a
            java.lang.String r7 = (java.lang.String) r7     // Catch:{ Exception -> 0x02b0 }
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r7 = r0.getFieldDeserializer(r7)     // Catch:{ Exception -> 0x02b0 }
            if (r7 == 0) goto L_0x026a
            java.lang.Object r4 = r4.getValue()     // Catch:{ Exception -> 0x02b0 }
            r7.setValue(r2, r4)     // Catch:{ Exception -> 0x02b0 }
            goto L_0x026a
        L_0x028e:
            r2 = r9
        L_0x028f:
            if (r2 != 0) goto L_0x02ac
            java.lang.Class<java.lang.Cloneable> r0 = java.lang.Cloneable.class
            if (r6 != r0) goto L_0x029b
            java.util.HashMap r2 = new java.util.HashMap     // Catch:{ Exception -> 0x02b0 }
            r2.<init>()     // Catch:{ Exception -> 0x02b0 }
            goto L_0x02ac
        L_0x029b:
            java.lang.String r0 = "java.util.Collections$EmptyMap"
            boolean r0 = r0.equals(r5)     // Catch:{ Exception -> 0x02b0 }
            if (r0 == 0) goto L_0x02a8
            java.util.Map r2 = java.util.Collections.emptyMap()     // Catch:{ Exception -> 0x02b0 }
            goto L_0x02ac
        L_0x02a8:
            java.lang.Object r2 = r6.newInstance()     // Catch:{ Exception -> 0x02b0 }
        L_0x02ac:
            r1.setContext(r10)
            return r2
        L_0x02b0:
            r0 = move-exception
            com.alibaba.fastjson.JSONException r2 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            java.lang.String r3 = "create instance error"
            r2.<init>(r3, r0)     // Catch:{ all -> 0x05bf }
            throw r2     // Catch:{ all -> 0x05bf }
        L_0x02b9:
            r3 = 2
            r1.setResolveStatus(r3)     // Catch:{ all -> 0x05bf }
            com.alibaba.fastjson.parser.ParseContext r3 = r1.context     // Catch:{ all -> 0x05bf }
            if (r3 == 0) goto L_0x02d2
            if (r2 == 0) goto L_0x02d2
            boolean r3 = r2 instanceof java.lang.Integer     // Catch:{ all -> 0x05bf }
            if (r3 != 0) goto L_0x02d2
            com.alibaba.fastjson.parser.ParseContext r3 = r1.context     // Catch:{ all -> 0x05bf }
            java.lang.Object r3 = r3.fieldName     // Catch:{ all -> 0x05bf }
            boolean r3 = r3 instanceof java.lang.Integer     // Catch:{ all -> 0x05bf }
            if (r3 != 0) goto L_0x02d2
            r16.popContext()     // Catch:{ all -> 0x05bf }
        L_0x02d2:
            int r3 = r17.size()     // Catch:{ all -> 0x05bf }
            if (r3 <= 0) goto L_0x02e5
            com.alibaba.fastjson.parser.ParserConfig r2 = r1.config     // Catch:{ all -> 0x05bf }
            java.lang.Object r0 = com.alibaba.fastjson.util.TypeUtils.cast(r0, r6, r2)     // Catch:{ all -> 0x05bf }
            r1.parseObject(r0)     // Catch:{ all -> 0x05bf }
            r1.setContext(r10)
            return r0
        L_0x02e5:
            com.alibaba.fastjson.parser.ParserConfig r0 = r1.config     // Catch:{ all -> 0x05bf }
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer r0 = r0.getDeserializer(r6)     // Catch:{ all -> 0x05bf }
            java.lang.Object r0 = r0.deserialze(r1, r6, r2)     // Catch:{ all -> 0x05bf }
            r1.setContext(r10)
            return r0
        L_0x02f3:
            r6 = 0
            java.lang.String r8 = "$ref"
            if (r11 != r8) goto L_0x03b9
            if (r10 == 0) goto L_0x03b9
            com.alibaba.fastjson.parser.Feature r8 = com.alibaba.fastjson.parser.Feature.DisableSpecialKeyDetect     // Catch:{ all -> 0x05bf }
            boolean r8 = r3.isEnabled(r8)     // Catch:{ all -> 0x05bf }
            if (r8 != 0) goto L_0x03b9
            r0 = 4
            r3.nextToken(r0)     // Catch:{ all -> 0x05bf }
            int r0 = r3.token()     // Catch:{ all -> 0x05bf }
            r2 = 4
            if (r0 != r2) goto L_0x039a
            java.lang.String r0 = r3.stringVal()     // Catch:{ all -> 0x05bf }
            r2 = 13
            r3.nextToken(r2)     // Catch:{ all -> 0x05bf }
            java.lang.String r2 = "@"
            boolean r2 = r2.equals(r0)     // Catch:{ all -> 0x05bf }
            if (r2 == 0) goto L_0x0338
            com.alibaba.fastjson.parser.ParseContext r0 = r1.context     // Catch:{ all -> 0x05bf }
            if (r0 == 0) goto L_0x0382
            com.alibaba.fastjson.parser.ParseContext r0 = r1.context     // Catch:{ all -> 0x05bf }
            java.lang.Object r5 = r0.object     // Catch:{ all -> 0x05bf }
            boolean r2 = r5 instanceof java.lang.Object[]     // Catch:{ all -> 0x05bf }
            if (r2 != 0) goto L_0x0383
            boolean r2 = r5 instanceof java.util.Collection     // Catch:{ all -> 0x05bf }
            if (r2 == 0) goto L_0x032f
            goto L_0x0383
        L_0x032f:
            com.alibaba.fastjson.parser.ParseContext r2 = r0.parent     // Catch:{ all -> 0x05bf }
            if (r2 == 0) goto L_0x0382
            com.alibaba.fastjson.parser.ParseContext r0 = r0.parent     // Catch:{ all -> 0x05bf }
            java.lang.Object r5 = r0.object     // Catch:{ all -> 0x05bf }
            goto L_0x0383
        L_0x0338:
            java.lang.String r2 = ".."
            boolean r2 = r2.equals(r0)     // Catch:{ all -> 0x05bf }
            if (r2 == 0) goto L_0x0353
            java.lang.Object r2 = r10.object     // Catch:{ all -> 0x05bf }
            if (r2 == 0) goto L_0x0347
            java.lang.Object r5 = r10.object     // Catch:{ all -> 0x05bf }
            goto L_0x0383
        L_0x0347:
            com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask r2 = new com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask     // Catch:{ all -> 0x05bf }
            r2.<init>(r10, r0)     // Catch:{ all -> 0x05bf }
            r1.addResolveTask(r2)     // Catch:{ all -> 0x05bf }
            r1.setResolveStatus(r12)     // Catch:{ all -> 0x05bf }
            goto L_0x0382
        L_0x0353:
            java.lang.String r2 = "$"
            boolean r2 = r2.equals(r0)     // Catch:{ all -> 0x05bf }
            if (r2 == 0) goto L_0x0377
            r2 = r10
        L_0x035c:
            com.alibaba.fastjson.parser.ParseContext r4 = r2.parent     // Catch:{ all -> 0x05bf }
            if (r4 == 0) goto L_0x0363
            com.alibaba.fastjson.parser.ParseContext r2 = r2.parent     // Catch:{ all -> 0x05bf }
            goto L_0x035c
        L_0x0363:
            java.lang.Object r4 = r2.object     // Catch:{ all -> 0x05bf }
            if (r4 == 0) goto L_0x036b
            java.lang.Object r0 = r2.object     // Catch:{ all -> 0x05bf }
            r5 = r0
            goto L_0x0383
        L_0x036b:
            com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask r4 = new com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask     // Catch:{ all -> 0x05bf }
            r4.<init>(r2, r0)     // Catch:{ all -> 0x05bf }
            r1.addResolveTask(r4)     // Catch:{ all -> 0x05bf }
            r1.setResolveStatus(r12)     // Catch:{ all -> 0x05bf }
            goto L_0x0382
        L_0x0377:
            com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask r2 = new com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask     // Catch:{ all -> 0x05bf }
            r2.<init>(r10, r0)     // Catch:{ all -> 0x05bf }
            r1.addResolveTask(r2)     // Catch:{ all -> 0x05bf }
            r1.setResolveStatus(r12)     // Catch:{ all -> 0x05bf }
        L_0x0382:
            r5 = r6
        L_0x0383:
            int r0 = r3.token()     // Catch:{ all -> 0x05bf }
            r2 = 13
            if (r0 != r2) goto L_0x0394
            r0 = 16
            r3.nextToken(r0)     // Catch:{ all -> 0x05bf }
            r1.setContext(r10)
            return r5
        L_0x0394:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            r0.<init>(r9)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x039a:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x05bf }
            r2.<init>()     // Catch:{ all -> 0x05bf }
            java.lang.String r4 = "illegal ref, "
            r2.append(r4)     // Catch:{ all -> 0x05bf }
            int r3 = r3.token()     // Catch:{ all -> 0x05bf }
            java.lang.String r3 = com.alibaba.fastjson.parser.JSONToken.name(r3)     // Catch:{ all -> 0x05bf }
            r2.append(r3)     // Catch:{ all -> 0x05bf }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x05bf }
            r0.<init>(r2)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x03b9:
            if (r4 != 0) goto L_0x03d9
            com.alibaba.fastjson.parser.ParseContext r8 = r1.context     // Catch:{ all -> 0x05bf }
            if (r8 == 0) goto L_0x03cf
            com.alibaba.fastjson.parser.ParseContext r8 = r1.context     // Catch:{ all -> 0x05bf }
            java.lang.Object r8 = r8.fieldName     // Catch:{ all -> 0x05bf }
            if (r2 != r8) goto L_0x03cf
            com.alibaba.fastjson.parser.ParseContext r8 = r1.context     // Catch:{ all -> 0x05bf }
            java.lang.Object r8 = r8.object     // Catch:{ all -> 0x05bf }
            if (r0 != r8) goto L_0x03cf
            com.alibaba.fastjson.parser.ParseContext r8 = r1.context     // Catch:{ all -> 0x05bf }
            r10 = r8
            goto L_0x03d9
        L_0x03cf:
            com.alibaba.fastjson.parser.ParseContext r4 = r16.setContext(r17, r18)     // Catch:{ all -> 0x05bf }
            if (r10 != 0) goto L_0x03d6
            goto L_0x03d7
        L_0x03d6:
            r4 = r10
        L_0x03d7:
            r10 = r4
            r4 = 1
        L_0x03d9:
            java.lang.Class r8 = r17.getClass()     // Catch:{ all -> 0x05bf }
            java.lang.Class<com.alibaba.fastjson.JSONObject> r6 = com.alibaba.fastjson.JSONObject.class
            if (r8 != r6) goto L_0x03e5
            if (r11 != 0) goto L_0x03e5
            java.lang.String r11 = "null"
        L_0x03e5:
            r6 = 34
            if (r5 != r6) goto L_0x0412
            r3.scanString()     // Catch:{ all -> 0x05bf }
            java.lang.String r5 = r3.stringVal()     // Catch:{ all -> 0x05bf }
            com.alibaba.fastjson.parser.Feature r6 = com.alibaba.fastjson.parser.Feature.AllowISO8601DateFormat     // Catch:{ all -> 0x05bf }
            boolean r6 = r3.isEnabled(r6)     // Catch:{ all -> 0x05bf }
            if (r6 == 0) goto L_0x040e
            com.alibaba.fastjson.parser.JSONScanner r6 = new com.alibaba.fastjson.parser.JSONScanner     // Catch:{ all -> 0x05bf }
            r6.<init>(r5)     // Catch:{ all -> 0x05bf }
            boolean r8 = r6.scanISO8601DateIfMatch()     // Catch:{ all -> 0x05bf }
            if (r8 == 0) goto L_0x040b
            java.util.Calendar r5 = r6.getCalendar()     // Catch:{ all -> 0x05bf }
            java.util.Date r5 = r5.getTime()     // Catch:{ all -> 0x05bf }
        L_0x040b:
            r6.close()     // Catch:{ all -> 0x05bf }
        L_0x040e:
            r7.put(r11, r5)     // Catch:{ all -> 0x05bf }
            goto L_0x043a
        L_0x0412:
            r6 = 48
            if (r5 < r6) goto L_0x041a
            r6 = 57
            if (r5 <= r6) goto L_0x041e
        L_0x041a:
            r6 = 45
            if (r5 != r6) goto L_0x047f
        L_0x041e:
            r3.scanNumber()     // Catch:{ all -> 0x05bf }
            int r5 = r3.token()     // Catch:{ all -> 0x05bf }
            r6 = 2
            if (r5 != r6) goto L_0x042d
            java.lang.Number r5 = r3.integerValue()     // Catch:{ all -> 0x05bf }
            goto L_0x0437
        L_0x042d:
            com.alibaba.fastjson.parser.Feature r5 = com.alibaba.fastjson.parser.Feature.UseBigDecimal     // Catch:{ all -> 0x05bf }
            boolean r5 = r3.isEnabled(r5)     // Catch:{ all -> 0x05bf }
            java.lang.Number r5 = r3.decimalValue(r5)     // Catch:{ all -> 0x05bf }
        L_0x0437:
            r7.put(r11, r5)     // Catch:{ all -> 0x05bf }
        L_0x043a:
            r3.skipWhitespace()     // Catch:{ all -> 0x05bf }
            char r6 = r3.getCurrent()     // Catch:{ all -> 0x05bf }
            if (r6 != r13) goto L_0x044c
            r3.next()     // Catch:{ all -> 0x05bf }
        L_0x0446:
            r6 = 13
            r8 = 16
            goto L_0x058f
        L_0x044c:
            if (r6 != r14) goto L_0x045e
            r3.next()     // Catch:{ all -> 0x05bf }
            r3.resetStringPosition()     // Catch:{ all -> 0x05bf }
            r3.nextToken()     // Catch:{ all -> 0x05bf }
            r1.setContext(r5, r11)     // Catch:{ all -> 0x05bf }
            r1.setContext(r10)
            return r0
        L_0x045e:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x05bf }
            r2.<init>()     // Catch:{ all -> 0x05bf }
            java.lang.String r4 = "syntax error, position at "
            r2.append(r4)     // Catch:{ all -> 0x05bf }
            int r3 = r3.pos()     // Catch:{ all -> 0x05bf }
            r2.append(r3)     // Catch:{ all -> 0x05bf }
            r2.append(r15)     // Catch:{ all -> 0x05bf }
            r2.append(r11)     // Catch:{ all -> 0x05bf }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x05bf }
            r0.<init>(r2)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x047f:
            r6 = 91
            if (r5 != r6) goto L_0x04c8
            r3.nextToken()     // Catch:{ all -> 0x05bf }
            com.alibaba.fastjson.JSONArray r5 = new com.alibaba.fastjson.JSONArray     // Catch:{ all -> 0x05bf }
            r5.<init>()     // Catch:{ all -> 0x05bf }
            if (r2 == 0) goto L_0x0493
            java.lang.Class r6 = r18.getClass()     // Catch:{ all -> 0x05bf }
            java.lang.Class<java.lang.Integer> r8 = java.lang.Integer.class
        L_0x0493:
            if (r2 != 0) goto L_0x0498
            r1.setContext(r10)     // Catch:{ all -> 0x05bf }
        L_0x0498:
            r1.parseArray(r5, r11)     // Catch:{ all -> 0x05bf }
            com.alibaba.fastjson.parser.Feature r6 = com.alibaba.fastjson.parser.Feature.UseObjectArray     // Catch:{ all -> 0x05bf }
            boolean r6 = r3.isEnabled(r6)     // Catch:{ all -> 0x05bf }
            if (r6 == 0) goto L_0x04a7
            java.lang.Object[] r5 = r5.toArray()     // Catch:{ all -> 0x05bf }
        L_0x04a7:
            r7.put(r11, r5)     // Catch:{ all -> 0x05bf }
            int r5 = r3.token()     // Catch:{ all -> 0x05bf }
            r6 = 13
            if (r5 != r6) goto L_0x04b9
            r3.nextToken()     // Catch:{ all -> 0x05bf }
            r1.setContext(r10)
            return r0
        L_0x04b9:
            int r5 = r3.token()     // Catch:{ all -> 0x05bf }
            r6 = 16
            if (r5 != r6) goto L_0x04c2
            goto L_0x0446
        L_0x04c2:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            r0.<init>(r9)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x04c8:
            r6 = 123(0x7b, float:1.72E-43)
            if (r5 != r6) goto L_0x056e
            r3.nextToken()     // Catch:{ all -> 0x05bf }
            if (r2 == 0) goto L_0x04db
            java.lang.Class r5 = r18.getClass()     // Catch:{ all -> 0x05bf }
            java.lang.Class<java.lang.Integer> r6 = java.lang.Integer.class
            if (r5 != r6) goto L_0x04db
            r5 = 1
            goto L_0x04dc
        L_0x04db:
            r5 = 0
        L_0x04dc:
            com.alibaba.fastjson.JSONObject r6 = new com.alibaba.fastjson.JSONObject     // Catch:{ all -> 0x05bf }
            com.alibaba.fastjson.parser.Feature r8 = com.alibaba.fastjson.parser.Feature.OrderedField     // Catch:{ all -> 0x05bf }
            boolean r8 = r3.isEnabled(r8)     // Catch:{ all -> 0x05bf }
            r6.<init>(r8)     // Catch:{ all -> 0x05bf }
            if (r5 != 0) goto L_0x04ee
            com.alibaba.fastjson.parser.ParseContext r8 = r1.setContext(r10, r6, r11)     // Catch:{ all -> 0x05bf }
            goto L_0x04ef
        L_0x04ee:
            r8 = 0
        L_0x04ef:
            com.alibaba.fastjson.parser.deserializer.FieldTypeResolver r9 = r1.fieldTypeResolver     // Catch:{ all -> 0x05bf }
            if (r9 == 0) goto L_0x050e
            if (r11 == 0) goto L_0x04fa
            java.lang.String r9 = r11.toString()     // Catch:{ all -> 0x05bf }
            goto L_0x04fb
        L_0x04fa:
            r9 = 0
        L_0x04fb:
            com.alibaba.fastjson.parser.deserializer.FieldTypeResolver r13 = r1.fieldTypeResolver     // Catch:{ all -> 0x05bf }
            java.lang.reflect.Type r9 = r13.resolve(r0, r9)     // Catch:{ all -> 0x05bf }
            if (r9 == 0) goto L_0x050e
            com.alibaba.fastjson.parser.ParserConfig r13 = r1.config     // Catch:{ all -> 0x05bf }
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer r13 = r13.getDeserializer(r9)     // Catch:{ all -> 0x05bf }
            java.lang.Object r9 = r13.deserialze(r1, r9, r11)     // Catch:{ all -> 0x05bf }
            goto L_0x0510
        L_0x050e:
            r9 = 0
            r12 = 0
        L_0x0510:
            if (r12 != 0) goto L_0x0516
            java.lang.Object r9 = r1.parseObject(r6, r11)     // Catch:{ all -> 0x05bf }
        L_0x0516:
            if (r8 == 0) goto L_0x051c
            if (r6 == r9) goto L_0x051c
            r8.object = r0     // Catch:{ all -> 0x05bf }
        L_0x051c:
            if (r11 == 0) goto L_0x0525
            java.lang.String r6 = r11.toString()     // Catch:{ all -> 0x05bf }
            r1.checkMapResolve(r0, r6)     // Catch:{ all -> 0x05bf }
        L_0x0525:
            r7.put(r11, r9)     // Catch:{ all -> 0x05bf }
            if (r5 == 0) goto L_0x052d
            r1.setContext(r9, r11)     // Catch:{ all -> 0x05bf }
        L_0x052d:
            int r6 = r3.token()     // Catch:{ all -> 0x05bf }
            r8 = 13
            if (r6 != r8) goto L_0x053f
            r3.nextToken()     // Catch:{ all -> 0x05bf }
            r1.setContext(r10)     // Catch:{ all -> 0x05bf }
            r1.setContext(r10)
            return r0
        L_0x053f:
            int r6 = r3.token()     // Catch:{ all -> 0x05bf }
            r8 = 16
            if (r6 != r8) goto L_0x0553
            if (r5 == 0) goto L_0x054e
            r16.popContext()     // Catch:{ all -> 0x05bf }
            goto L_0x0446
        L_0x054e:
            r1.setContext(r10)     // Catch:{ all -> 0x05bf }
            goto L_0x0446
        L_0x0553:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x05bf }
            r2.<init>()     // Catch:{ all -> 0x05bf }
            java.lang.String r4 = "syntax error, "
            r2.append(r4)     // Catch:{ all -> 0x05bf }
            java.lang.String r3 = r3.tokenName()     // Catch:{ all -> 0x05bf }
            r2.append(r3)     // Catch:{ all -> 0x05bf }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x05bf }
            r0.<init>(r2)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x056e:
            r3.nextToken()     // Catch:{ all -> 0x05bf }
            java.lang.Object r5 = r16.parse()     // Catch:{ all -> 0x05bf }
            r7.put(r11, r5)     // Catch:{ all -> 0x05bf }
            int r5 = r3.token()     // Catch:{ all -> 0x05bf }
            r6 = 13
            if (r5 != r6) goto L_0x0587
            r3.nextToken()     // Catch:{ all -> 0x05bf }
            r1.setContext(r10)
            return r0
        L_0x0587:
            int r5 = r3.token()     // Catch:{ all -> 0x05bf }
            r8 = 16
            if (r5 != r8) goto L_0x0592
        L_0x058f:
            r5 = 0
            goto L_0x006a
        L_0x0592:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x05bf }
            r2.<init>()     // Catch:{ all -> 0x05bf }
            java.lang.String r4 = "syntax error, position at "
            r2.append(r4)     // Catch:{ all -> 0x05bf }
            int r3 = r3.pos()     // Catch:{ all -> 0x05bf }
            r2.append(r3)     // Catch:{ all -> 0x05bf }
            r2.append(r15)     // Catch:{ all -> 0x05bf }
            r2.append(r11)     // Catch:{ all -> 0x05bf }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x05bf }
            r0.<init>(r2)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x05b3:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            r0.<init>(r9)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x05b9:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x05bf }
            r0.<init>(r9)     // Catch:{ all -> 0x05bf }
            throw r0     // Catch:{ all -> 0x05bf }
        L_0x05bf:
            r0 = move-exception
            goto L_0x05c3
        L_0x05c1:
            r0 = move-exception
            r10 = r4
        L_0x05c3:
            r1.setContext(r10)
            goto L_0x05c8
        L_0x05c7:
            throw r0
        L_0x05c8:
            goto L_0x05c7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parseObject(java.util.Map, java.lang.Object):java.lang.Object");
    }

    public ParserConfig getConfig() {
        return this.config;
    }

    public void setConfig(ParserConfig parserConfig) {
        this.config = parserConfig;
    }

    public <T> T parseObject(Class<T> cls) {
        return parseObject((Type) cls, (Object) null);
    }

    public <T> T parseObject(Type type) {
        return parseObject(type, (Object) null);
    }

    public <T> T parseObject(Type type, Object obj) {
        int i = this.lexer.token();
        if (i == 8) {
            this.lexer.nextToken();
            return null;
        }
        if (i == 4) {
            if (type == byte[].class) {
                Object bytesValue = this.lexer.bytesValue();
                this.lexer.nextToken();
                return bytesValue;
            } else if (type == char[].class) {
                String stringVal = this.lexer.stringVal();
                this.lexer.nextToken();
                return stringVal.toCharArray();
            }
        }
        try {
            return this.config.getDeserializer(type).deserialze(this, type, obj);
        } catch (JSONException e) {
            throw e;
        } catch (Throwable th) {
            throw new JSONException(th.getMessage(), th);
        }
    }

    public <T> List<T> parseArray(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        parseArray(cls, (Collection) arrayList);
        return arrayList;
    }

    public void parseArray(Class<?> cls, Collection collection) {
        parseArray((Type) cls, collection);
    }

    public void parseArray(Type type, Collection collection) {
        parseArray(type, collection, null);
    }

    /* JADX INFO: finally extract failed */
    public void parseArray(Type type, Collection collection, Object obj) {
        ObjectDeserializer objectDeserializer;
        int i = this.lexer.token();
        if (i == 21 || i == 22) {
            this.lexer.nextToken();
            i = this.lexer.token();
        }
        if (i == 14) {
            if (Integer.TYPE == type) {
                objectDeserializer = IntegerCodec.instance;
                this.lexer.nextToken(2);
            } else if (String.class == type) {
                objectDeserializer = StringCodec.instance;
                this.lexer.nextToken(4);
            } else {
                objectDeserializer = this.config.getDeserializer(type);
                this.lexer.nextToken(objectDeserializer.getFastMatchToken());
            }
            ParseContext parseContext = this.context;
            setContext(collection, obj);
            int i2 = 0;
            while (true) {
                try {
                    if (this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                        while (this.lexer.token() == 16) {
                            this.lexer.nextToken();
                        }
                    }
                    if (this.lexer.token() == 15) {
                        setContext(parseContext);
                        this.lexer.nextToken(16);
                        return;
                    }
                    Object obj2 = null;
                    if (Integer.TYPE == type) {
                        collection.add(IntegerCodec.instance.deserialze(this, null, null));
                    } else if (String.class == type) {
                        if (this.lexer.token() == 4) {
                            obj2 = this.lexer.stringVal();
                            this.lexer.nextToken(16);
                        } else {
                            Object parse = parse();
                            if (parse != null) {
                                obj2 = parse.toString();
                            }
                        }
                        collection.add(obj2);
                    } else {
                        if (this.lexer.token() == 8) {
                            this.lexer.nextToken();
                        } else {
                            obj2 = objectDeserializer.deserialze(this, type, Integer.valueOf(i2));
                        }
                        collection.add(obj2);
                        checkListResolve(collection);
                    }
                    if (this.lexer.token() == 16) {
                        this.lexer.nextToken(objectDeserializer.getFastMatchToken());
                    }
                    i2++;
                } catch (Throwable th) {
                    setContext(parseContext);
                    throw th;
                }
            }
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("exepct '[', but ");
            sb.append(JSONToken.name(i));
            sb.append(", ");
            sb.append(this.lexer.info());
            throw new JSONException(sb.toString());
        }
    }

    public Object[] parseArray(Type[] typeArr) {
        Object obj;
        boolean z;
        Type type;
        Object obj2;
        Type[] typeArr2 = typeArr;
        int i = 8;
        if (this.lexer.token() == 8) {
            this.lexer.nextToken(16);
            return null;
        }
        int i2 = 14;
        if (this.lexer.token() == 14) {
            Object[] objArr = new Object[typeArr2.length];
            String str = "syntax error";
            if (typeArr2.length == 0) {
                this.lexer.nextToken(15);
                if (this.lexer.token() == 15) {
                    this.lexer.nextToken(16);
                    return new Object[0];
                }
                throw new JSONException(str);
            }
            this.lexer.nextToken(2);
            int i3 = 0;
            while (i3 < typeArr2.length) {
                String str2 = "syntax error :";
                if (this.lexer.token() == i) {
                    this.lexer.nextToken(16);
                    obj = null;
                } else {
                    Type type2 = typeArr2[i3];
                    if (type2 == Integer.TYPE || type2 == Integer.class) {
                        if (this.lexer.token() == 2) {
                            obj = Integer.valueOf(this.lexer.intValue());
                            this.lexer.nextToken(16);
                        } else {
                            obj = TypeUtils.cast(parse(), type2, this.config);
                        }
                    } else if (type2 == String.class) {
                        if (this.lexer.token() == 4) {
                            obj2 = this.lexer.stringVal();
                            this.lexer.nextToken(16);
                        } else {
                            obj2 = TypeUtils.cast(parse(), type2, this.config);
                        }
                        obj = obj2;
                    } else {
                        if (i3 != typeArr2.length - 1 || !(type2 instanceof Class)) {
                            type = null;
                            z = false;
                        } else {
                            Class cls = (Class) type2;
                            z = cls.isArray();
                            type = cls.getComponentType();
                        }
                        if (!z || this.lexer.token() == i2) {
                            obj = this.config.getDeserializer(type2).deserialze(this, type2, Integer.valueOf(i3));
                        } else {
                            ArrayList arrayList = new ArrayList();
                            ObjectDeserializer deserializer = this.config.getDeserializer(type);
                            int fastMatchToken = deserializer.getFastMatchToken();
                            if (this.lexer.token() != 15) {
                                while (true) {
                                    arrayList.add(deserializer.deserialze(this, type2, null));
                                    if (this.lexer.token() != 16) {
                                        break;
                                    }
                                    this.lexer.nextToken(fastMatchToken);
                                }
                                if (this.lexer.token() != 15) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(str2);
                                    sb.append(JSONToken.name(this.lexer.token()));
                                    throw new JSONException(sb.toString());
                                }
                            }
                            obj = TypeUtils.cast((Object) arrayList, type2, this.config);
                        }
                    }
                }
                objArr[i3] = obj;
                if (this.lexer.token() == 15) {
                    break;
                } else if (this.lexer.token() == 16) {
                    if (i3 == typeArr2.length - 1) {
                        this.lexer.nextToken(15);
                    } else {
                        this.lexer.nextToken(2);
                    }
                    i3++;
                    i = 8;
                    i2 = 14;
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str2);
                    sb2.append(JSONToken.name(this.lexer.token()));
                    throw new JSONException(sb2.toString());
                }
            }
            if (this.lexer.token() == 15) {
                this.lexer.nextToken(16);
                return objArr;
            }
            throw new JSONException(str);
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("syntax error : ");
        sb3.append(this.lexer.tokenName());
        throw new JSONException(sb3.toString());
    }

    public void parseObject(Object obj) {
        Object obj2;
        Class cls = obj.getClass();
        ObjectDeserializer deserializer = this.config.getDeserializer((Type) cls);
        JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof JavaBeanDeserializer ? (JavaBeanDeserializer) deserializer : null;
        if (this.lexer.token() == 12 || this.lexer.token() == 16) {
            while (true) {
                String scanSymbol = this.lexer.scanSymbol(this.symbolTable);
                if (scanSymbol == null) {
                    if (this.lexer.token() == 13) {
                        this.lexer.nextToken(16);
                        return;
                    } else if (this.lexer.token() == 16 && this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    }
                }
                FieldDeserializer fieldDeserializer = javaBeanDeserializer != null ? javaBeanDeserializer.getFieldDeserializer(scanSymbol) : null;
                if (fieldDeserializer != null) {
                    Class<?> cls2 = fieldDeserializer.fieldInfo.fieldClass;
                    Type type = fieldDeserializer.fieldInfo.fieldType;
                    if (cls2 == Integer.TYPE) {
                        this.lexer.nextTokenWithColon(2);
                        obj2 = IntegerCodec.instance.deserialze(this, type, null);
                    } else if (cls2 == String.class) {
                        this.lexer.nextTokenWithColon(4);
                        obj2 = StringCodec.deserialze(this);
                    } else if (cls2 == Long.TYPE) {
                        this.lexer.nextTokenWithColon(2);
                        obj2 = LongCodec.instance.deserialze(this, type, null);
                    } else {
                        ObjectDeserializer deserializer2 = this.config.getDeserializer(cls2, type);
                        this.lexer.nextTokenWithColon(deserializer2.getFastMatchToken());
                        obj2 = deserializer2.deserialze(this, type, null);
                    }
                    fieldDeserializer.setValue(obj, obj2);
                    if (this.lexer.token() != 16 && this.lexer.token() == 13) {
                        this.lexer.nextToken(16);
                        return;
                    }
                } else if (this.lexer.isEnabled(Feature.IgnoreNotMatch)) {
                    this.lexer.nextTokenWithColon();
                    parse();
                    if (this.lexer.token() == 13) {
                        this.lexer.nextToken();
                        return;
                    }
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("setter not found, class ");
                    sb.append(cls.getName());
                    sb.append(", property ");
                    sb.append(scanSymbol);
                    throw new JSONException(sb.toString());
                }
            }
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("syntax error, expect {, actual ");
            sb2.append(this.lexer.tokenName());
            throw new JSONException(sb2.toString());
        }
    }

    public Object parseArrayWithType(Type type) {
        if (this.lexer.token() == 8) {
            this.lexer.nextToken();
            return null;
        }
        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
        if (actualTypeArguments.length == 1) {
            Type type2 = actualTypeArguments[0];
            if (type2 instanceof Class) {
                ArrayList arrayList = new ArrayList();
                parseArray((Class) type2, (Collection) arrayList);
                return arrayList;
            } else if (type2 instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type2;
                Type type3 = wildcardType.getUpperBounds()[0];
                if (!Object.class.equals(type3)) {
                    ArrayList arrayList2 = new ArrayList();
                    parseArray((Class) type3, (Collection) arrayList2);
                    return arrayList2;
                } else if (wildcardType.getLowerBounds().length == 0) {
                    return parse();
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("not support type : ");
                    sb.append(type);
                    throw new JSONException(sb.toString());
                }
            } else {
                if (type2 instanceof TypeVariable) {
                    TypeVariable typeVariable = (TypeVariable) type2;
                    Type[] bounds = typeVariable.getBounds();
                    if (bounds.length == 1) {
                        Type type4 = bounds[0];
                        if (type4 instanceof Class) {
                            ArrayList arrayList3 = new ArrayList();
                            parseArray((Class) type4, (Collection) arrayList3);
                            return arrayList3;
                        }
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("not support : ");
                        sb2.append(typeVariable);
                        throw new JSONException(sb2.toString());
                    }
                }
                if (type2 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type2;
                    ArrayList arrayList4 = new ArrayList();
                    parseArray((Type) parameterizedType, (Collection) arrayList4);
                    return arrayList4;
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append("TODO : ");
                sb3.append(type);
                throw new JSONException(sb3.toString());
            }
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("not support type ");
            sb4.append(type);
            throw new JSONException(sb4.toString());
        }
    }

    public void acceptType(String str) {
        JSONLexer jSONLexer = this.lexer;
        jSONLexer.nextTokenWithColon();
        String str2 = "type not match error";
        if (jSONLexer.token() != 4) {
            throw new JSONException(str2);
        } else if (str.equals(jSONLexer.stringVal())) {
            jSONLexer.nextToken();
            if (jSONLexer.token() == 16) {
                jSONLexer.nextToken();
            }
        } else {
            throw new JSONException(str2);
        }
    }

    public int getResolveStatus() {
        return this.resolveStatus;
    }

    public void setResolveStatus(int i) {
        this.resolveStatus = i;
    }

    public Object getObject(String str) {
        for (int i = 0; i < this.contextArrayIndex; i++) {
            if (str.equals(this.contextArray[i].toString())) {
                return this.contextArray[i].object;
            }
        }
        return null;
    }

    public void checkListResolve(Collection collection) {
        if (this.resolveStatus != 1) {
            return;
        }
        if (collection instanceof List) {
            int size = collection.size() - 1;
            List list = (List) collection;
            ResolveTask lastResolveTask = getLastResolveTask();
            lastResolveTask.fieldDeserializer = new ResolveFieldDeserializer(this, list, size);
            lastResolveTask.ownerContext = this.context;
            setResolveStatus(0);
            return;
        }
        ResolveTask lastResolveTask2 = getLastResolveTask();
        lastResolveTask2.fieldDeserializer = new ResolveFieldDeserializer(collection);
        lastResolveTask2.ownerContext = this.context;
        setResolveStatus(0);
    }

    public void checkMapResolve(Map map, Object obj) {
        if (this.resolveStatus == 1) {
            ResolveFieldDeserializer resolveFieldDeserializer = new ResolveFieldDeserializer(map, obj);
            ResolveTask lastResolveTask = getLastResolveTask();
            lastResolveTask.fieldDeserializer = resolveFieldDeserializer;
            lastResolveTask.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    public Object parseObject(Map map) {
        return parseObject(map, (Object) null);
    }

    public JSONObject parseObject() {
        return (JSONObject) parseObject((Map) new JSONObject(this.lexer.isEnabled(Feature.OrderedField)));
    }

    public final void parseArray(Collection collection) {
        parseArray(collection, (Object) null);
    }

    /* JADX WARNING: type inference failed for: r8v0 */
    /* JADX WARNING: type inference failed for: r8v1, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r8v2, types: [java.lang.Number] */
    /* JADX WARNING: type inference failed for: r5v6 */
    /* JADX WARNING: type inference failed for: r8v3 */
    /* JADX WARNING: type inference failed for: r5v7, types: [java.lang.Number] */
    /* JADX WARNING: type inference failed for: r5v9, types: [java.lang.Number] */
    /* JADX WARNING: type inference failed for: r8v4, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r8v5 */
    /* JADX WARNING: type inference failed for: r7v4, types: [java.util.Date] */
    /* JADX WARNING: type inference failed for: r8v6 */
    /* JADX WARNING: type inference failed for: r8v7, types: [java.lang.Boolean] */
    /* JADX WARNING: type inference failed for: r8v8, types: [java.lang.Boolean] */
    /* JADX WARNING: type inference failed for: r8v9, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r8v10, types: [com.alibaba.fastjson.JSONArray, java.util.Collection] */
    /* JADX WARNING: type inference failed for: r8v11, types: [java.lang.Object[]] */
    /* JADX WARNING: type inference failed for: r8v12, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r8v13 */
    /* JADX WARNING: type inference failed for: r8v14 */
    /* JADX WARNING: type inference failed for: r8v15 */
    /* JADX WARNING: type inference failed for: r5v18 */
    /* JADX WARNING: type inference failed for: r5v19 */
    /* JADX WARNING: type inference failed for: r8v16 */
    /* JADX WARNING: type inference failed for: r8v17 */
    /* JADX WARNING: type inference failed for: r8v18 */
    /* JADX WARNING: type inference failed for: r8v19 */
    /* JADX WARNING: type inference failed for: r8v20 */
    /* JADX WARNING: type inference failed for: r8v21 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r8v3
      assigns: [?[OBJECT, ARRAY], java.lang.String, com.alibaba.fastjson.JSONArray]
      uses: [java.lang.Object, java.lang.String, java.util.Collection]
      mth insns count: 124
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
    /* JADX WARNING: Unknown variable types count: 12 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void parseArray(java.util.Collection r10, java.lang.Object r11) {
        /*
            r9 = this;
            com.alibaba.fastjson.parser.JSONLexer r0 = r9.lexer
            int r1 = r0.token()
            r2 = 21
            if (r1 == r2) goto L_0x0012
            int r1 = r0.token()
            r2 = 22
            if (r1 != r2) goto L_0x0015
        L_0x0012:
            r0.nextToken()
        L_0x0015:
            int r1 = r0.token()
            r2 = 14
            if (r1 != r2) goto L_0x011a
            r1 = 4
            r0.nextToken(r1)
            com.alibaba.fastjson.parser.ParseContext r3 = r9.context
            r9.setContext(r10, r11)
            r11 = 0
            r4 = 0
        L_0x0028:
            com.alibaba.fastjson.parser.Feature r5 = com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas     // Catch:{ all -> 0x0115 }
            boolean r5 = r0.isEnabled(r5)     // Catch:{ all -> 0x0115 }
            r6 = 16
            if (r5 == 0) goto L_0x003c
        L_0x0032:
            int r5 = r0.token()     // Catch:{ all -> 0x0115 }
            if (r5 != r6) goto L_0x003c
            r0.nextToken()     // Catch:{ all -> 0x0115 }
            goto L_0x0032
        L_0x003c:
            int r5 = r0.token()     // Catch:{ all -> 0x0115 }
            r7 = 2
            r8 = 0
            if (r5 == r7) goto L_0x00fb
            r7 = 3
            if (r5 == r7) goto L_0x00e4
            if (r5 == r1) goto L_0x00bd
            r7 = 6
            if (r5 == r7) goto L_0x00b7
            r7 = 7
            if (r5 == r7) goto L_0x00b1
            r7 = 8
            if (r5 == r7) goto L_0x00ad
            r7 = 12
            if (r5 == r7) goto L_0x0099
            r7 = 20
            if (r5 == r7) goto L_0x0091
            r7 = 23
            if (r5 == r7) goto L_0x008c
            if (r5 == r2) goto L_0x0072
            r7 = 15
            if (r5 == r7) goto L_0x006b
            java.lang.Object r8 = r9.parse()     // Catch:{ all -> 0x0115 }
            goto L_0x0102
        L_0x006b:
            r0.nextToken(r6)     // Catch:{ all -> 0x0115 }
            r9.setContext(r3)
            return
        L_0x0072:
            com.alibaba.fastjson.JSONArray r8 = new com.alibaba.fastjson.JSONArray     // Catch:{ all -> 0x0115 }
            r8.<init>()     // Catch:{ all -> 0x0115 }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r4)     // Catch:{ all -> 0x0115 }
            r9.parseArray(r8, r5)     // Catch:{ all -> 0x0115 }
            com.alibaba.fastjson.parser.Feature r5 = com.alibaba.fastjson.parser.Feature.UseObjectArray     // Catch:{ all -> 0x0115 }
            boolean r5 = r0.isEnabled(r5)     // Catch:{ all -> 0x0115 }
            if (r5 == 0) goto L_0x0102
            java.lang.Object[] r8 = r8.toArray()     // Catch:{ all -> 0x0115 }
            goto L_0x0102
        L_0x008c:
            r0.nextToken(r1)     // Catch:{ all -> 0x0115 }
            goto L_0x0102
        L_0x0091:
            com.alibaba.fastjson.JSONException r10 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x0115 }
            java.lang.String r11 = "unclosed jsonArray"
            r10.<init>(r11)     // Catch:{ all -> 0x0115 }
            throw r10     // Catch:{ all -> 0x0115 }
        L_0x0099:
            com.alibaba.fastjson.JSONObject r5 = new com.alibaba.fastjson.JSONObject     // Catch:{ all -> 0x0115 }
            com.alibaba.fastjson.parser.Feature r7 = com.alibaba.fastjson.parser.Feature.OrderedField     // Catch:{ all -> 0x0115 }
            boolean r7 = r0.isEnabled(r7)     // Catch:{ all -> 0x0115 }
            r5.<init>(r7)     // Catch:{ all -> 0x0115 }
            java.lang.Integer r7 = java.lang.Integer.valueOf(r4)     // Catch:{ all -> 0x0115 }
            java.lang.Object r8 = r9.parseObject(r5, r7)     // Catch:{ all -> 0x0115 }
            goto L_0x0102
        L_0x00ad:
            r0.nextToken(r1)     // Catch:{ all -> 0x0115 }
            goto L_0x0102
        L_0x00b1:
            java.lang.Boolean r8 = java.lang.Boolean.FALSE     // Catch:{ all -> 0x0115 }
            r0.nextToken(r6)     // Catch:{ all -> 0x0115 }
            goto L_0x0102
        L_0x00b7:
            java.lang.Boolean r8 = java.lang.Boolean.TRUE     // Catch:{ all -> 0x0115 }
            r0.nextToken(r6)     // Catch:{ all -> 0x0115 }
            goto L_0x0102
        L_0x00bd:
            java.lang.String r8 = r0.stringVal()     // Catch:{ all -> 0x0115 }
            r0.nextToken(r6)     // Catch:{ all -> 0x0115 }
            com.alibaba.fastjson.parser.Feature r5 = com.alibaba.fastjson.parser.Feature.AllowISO8601DateFormat     // Catch:{ all -> 0x0115 }
            boolean r5 = r0.isEnabled(r5)     // Catch:{ all -> 0x0115 }
            if (r5 == 0) goto L_0x0102
            com.alibaba.fastjson.parser.JSONScanner r5 = new com.alibaba.fastjson.parser.JSONScanner     // Catch:{ all -> 0x0115 }
            r5.<init>(r8)     // Catch:{ all -> 0x0115 }
            boolean r7 = r5.scanISO8601DateIfMatch()     // Catch:{ all -> 0x0115 }
            if (r7 == 0) goto L_0x00e0
            java.util.Calendar r7 = r5.getCalendar()     // Catch:{ all -> 0x0115 }
            java.util.Date r7 = r7.getTime()     // Catch:{ all -> 0x0115 }
            r8 = r7
        L_0x00e0:
            r5.close()     // Catch:{ all -> 0x0115 }
            goto L_0x0102
        L_0x00e4:
            com.alibaba.fastjson.parser.Feature r5 = com.alibaba.fastjson.parser.Feature.UseBigDecimal     // Catch:{ all -> 0x0115 }
            boolean r5 = r0.isEnabled(r5)     // Catch:{ all -> 0x0115 }
            if (r5 == 0) goto L_0x00f2
            r5 = 1
            java.lang.Number r5 = r0.decimalValue(r5)     // Catch:{ all -> 0x0115 }
            goto L_0x00f6
        L_0x00f2:
            java.lang.Number r5 = r0.decimalValue(r11)     // Catch:{ all -> 0x0115 }
        L_0x00f6:
            r8 = r5
            r0.nextToken(r6)     // Catch:{ all -> 0x0115 }
            goto L_0x0102
        L_0x00fb:
            java.lang.Number r8 = r0.integerValue()     // Catch:{ all -> 0x0115 }
            r0.nextToken(r6)     // Catch:{ all -> 0x0115 }
        L_0x0102:
            r10.add(r8)     // Catch:{ all -> 0x0115 }
            r9.checkListResolve(r10)     // Catch:{ all -> 0x0115 }
            int r5 = r0.token()     // Catch:{ all -> 0x0115 }
            if (r5 != r6) goto L_0x0111
            r0.nextToken(r1)     // Catch:{ all -> 0x0115 }
        L_0x0111:
            int r4 = r4 + 1
            goto L_0x0028
        L_0x0115:
            r10 = move-exception
            r9.setContext(r3)
            throw r10
        L_0x011a:
            com.alibaba.fastjson.JSONException r10 = new com.alibaba.fastjson.JSONException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "syntax error, expect [, actual "
            r1.append(r2)
            int r2 = r0.token()
            java.lang.String r2 = com.alibaba.fastjson.parser.JSONToken.name(r2)
            r1.append(r2)
            java.lang.String r2 = ", pos "
            r1.append(r2)
            int r0 = r0.pos()
            r1.append(r0)
            java.lang.String r0 = ", fieldName "
            r1.append(r0)
            r1.append(r11)
            java.lang.String r11 = r1.toString()
            r10.<init>(r11)
            goto L_0x014e
        L_0x014d:
            throw r10
        L_0x014e:
            goto L_0x014d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parseArray(java.util.Collection, java.lang.Object):void");
    }

    public ParseContext getContext() {
        return this.context;
    }

    public List<ResolveTask> getResolveTaskList() {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        return this.resolveTaskList;
    }

    public void addResolveTask(ResolveTask resolveTask) {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        this.resolveTaskList.add(resolveTask);
    }

    public ResolveTask getLastResolveTask() {
        List<ResolveTask> list = this.resolveTaskList;
        return (ResolveTask) list.get(list.size() - 1);
    }

    public List<ExtraProcessor> getExtraProcessors() {
        if (this.extraProcessors == null) {
            this.extraProcessors = new ArrayList(2);
        }
        return this.extraProcessors;
    }

    public List<ExtraTypeProvider> getExtraTypeProviders() {
        if (this.extraTypeProviders == null) {
            this.extraTypeProviders = new ArrayList(2);
        }
        return this.extraTypeProviders;
    }

    public FieldTypeResolver getFieldTypeResolver() {
        return this.fieldTypeResolver;
    }

    public void setFieldTypeResolver(FieldTypeResolver fieldTypeResolver2) {
        this.fieldTypeResolver = fieldTypeResolver2;
    }

    public void setContext(ParseContext parseContext) {
        if (!this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            this.context = parseContext;
        }
    }

    public void popContext() {
        if (!this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            this.context = this.context.parent;
            int i = this.contextArrayIndex;
            if (i > 0) {
                this.contextArrayIndex = i - 1;
                this.contextArray[this.contextArrayIndex] = null;
            }
        }
    }

    public ParseContext setContext(Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        return setContext(this.context, obj, obj2);
    }

    public ParseContext setContext(ParseContext parseContext, Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        this.context = new ParseContext(parseContext, obj, obj2);
        addContext(this.context);
        return this.context;
    }

    private void addContext(ParseContext parseContext) {
        int i = this.contextArrayIndex;
        this.contextArrayIndex = i + 1;
        ParseContext[] parseContextArr = this.contextArray;
        if (parseContextArr == null) {
            this.contextArray = new ParseContext[8];
        } else if (i >= parseContextArr.length) {
            ParseContext[] parseContextArr2 = new ParseContext[((parseContextArr.length * 3) / 2)];
            System.arraycopy(parseContextArr, 0, parseContextArr2, 0, parseContextArr.length);
            this.contextArray = parseContextArr2;
        }
        this.contextArray[i] = parseContext;
    }

    public Object parse() {
        return parse(null);
    }

    public Object parseKey() {
        if (this.lexer.token() != 18) {
            return parse(null);
        }
        String stringVal = this.lexer.stringVal();
        this.lexer.nextToken(16);
        return stringVal;
    }

    public Object parse(Object obj) {
        JSONLexer jSONLexer = this.lexer;
        int i = jSONLexer.token();
        if (i == 2) {
            Number integerValue = jSONLexer.integerValue();
            jSONLexer.nextToken();
            return integerValue;
        } else if (i == 3) {
            Number decimalValue = jSONLexer.decimalValue(jSONLexer.isEnabled(Feature.UseBigDecimal));
            jSONLexer.nextToken();
            return decimalValue;
        } else if (i == 4) {
            String stringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                JSONScanner jSONScanner = new JSONScanner(stringVal);
                try {
                    if (jSONScanner.scanISO8601DateIfMatch()) {
                        return jSONScanner.getCalendar().getTime();
                    }
                    jSONScanner.close();
                } finally {
                    jSONScanner.close();
                }
            }
            return stringVal;
        } else if (i == 12) {
            return parseObject((Map) new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), obj);
        } else {
            if (i != 14) {
                String str = "syntax error, ";
                if (i == 18) {
                    if ("NaN".equals(jSONLexer.stringVal())) {
                        jSONLexer.nextToken();
                        return null;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(jSONLexer.info());
                    throw new JSONException(sb.toString());
                } else if (i != 26) {
                    switch (i) {
                        case 6:
                            jSONLexer.nextToken();
                            return Boolean.TRUE;
                        case 7:
                            jSONLexer.nextToken();
                            return Boolean.FALSE;
                        case 8:
                            jSONLexer.nextToken();
                            return null;
                        case 9:
                            jSONLexer.nextToken(18);
                            if (jSONLexer.token() == 18) {
                                jSONLexer.nextToken(10);
                                accept(10);
                                long longValue = jSONLexer.integerValue().longValue();
                                accept(2);
                                accept(11);
                                return new Date(longValue);
                            }
                            throw new JSONException("syntax error");
                        default:
                            switch (i) {
                                case 20:
                                    if (jSONLexer.isBlankInput()) {
                                        return null;
                                    }
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("unterminated json string, ");
                                    sb2.append(jSONLexer.info());
                                    throw new JSONException(sb2.toString());
                                case 21:
                                    jSONLexer.nextToken();
                                    HashSet hashSet = new HashSet();
                                    parseArray((Collection) hashSet, obj);
                                    return hashSet;
                                case 22:
                                    jSONLexer.nextToken();
                                    TreeSet treeSet = new TreeSet();
                                    parseArray((Collection) treeSet, obj);
                                    return treeSet;
                                case 23:
                                    jSONLexer.nextToken();
                                    return null;
                                default:
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append(str);
                                    sb3.append(jSONLexer.info());
                                    throw new JSONException(sb3.toString());
                            }
                    }
                } else {
                    byte[] bytesValue = jSONLexer.bytesValue();
                    jSONLexer.nextToken();
                    return bytesValue;
                }
            } else {
                JSONArray jSONArray = new JSONArray();
                parseArray((Collection) jSONArray, obj);
                return jSONLexer.isEnabled(Feature.UseObjectArray) ? jSONArray.toArray() : jSONArray;
            }
        }
    }

    public void config(Feature feature, boolean z) {
        this.lexer.config(feature, z);
    }

    public boolean isEnabled(Feature feature) {
        return this.lexer.isEnabled(feature);
    }

    public JSONLexer getLexer() {
        return this.lexer;
    }

    public final void accept(int i) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken();
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("syntax error, expect ");
        sb.append(JSONToken.name(i));
        sb.append(", actual ");
        sb.append(JSONToken.name(jSONLexer.token()));
        throw new JSONException(sb.toString());
    }

    public final void accept(int i, int i2) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken(i2);
        } else {
            throwException(i);
        }
    }

    public void throwException(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("syntax error, expect ");
        sb.append(JSONToken.name(i));
        sb.append(", actual ");
        sb.append(JSONToken.name(this.lexer.token()));
        throw new JSONException(sb.toString());
    }

    public void close() {
        JSONLexer jSONLexer = this.lexer;
        try {
            if (jSONLexer.isEnabled(Feature.AutoCloseSource)) {
                if (jSONLexer.token() != 20) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("not close json text, token : ");
                    sb.append(JSONToken.name(jSONLexer.token()));
                    throw new JSONException(sb.toString());
                }
            }
        } finally {
            jSONLexer.close();
        }
    }

    public Object resolveReference(String str) {
        if (this.contextArray == null) {
            return null;
        }
        int i = 0;
        while (true) {
            ParseContext[] parseContextArr = this.contextArray;
            if (i >= parseContextArr.length || i >= this.contextArrayIndex) {
                return null;
            }
            ParseContext parseContext = parseContextArr[i];
            if (parseContext.toString().equals(str)) {
                return parseContext.object;
            }
            i++;
        }
        return null;
    }

    public void handleResovleTask(Object obj) {
        Object obj2;
        List<ResolveTask> list = this.resolveTaskList;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ResolveTask resolveTask = (ResolveTask) this.resolveTaskList.get(i);
                String str = resolveTask.referenceValue;
                Object obj3 = null;
                if (resolveTask.ownerContext != null) {
                    obj3 = resolveTask.ownerContext.object;
                }
                if (str.startsWith("$")) {
                    obj2 = getObject(str);
                    if (obj2 == null) {
                        try {
                            obj2 = JSONPath.eval(obj, str);
                        } catch (JSONPathException unused) {
                        }
                    }
                } else {
                    obj2 = resolveTask.context.object;
                }
                FieldDeserializer fieldDeserializer = resolveTask.fieldDeserializer;
                if (fieldDeserializer != null) {
                    if (obj2 != null && obj2.getClass() == JSONObject.class && fieldDeserializer.fieldInfo != null && !Map.class.isAssignableFrom(fieldDeserializer.fieldInfo.fieldClass)) {
                        obj2 = JSONPath.eval(this.contextArray[0].object, str);
                    }
                    fieldDeserializer.setValue(obj3, obj2);
                }
            }
        }
    }

    public void parseExtra(Object obj, String str) {
        Object obj2;
        this.lexer.nextTokenWithColon();
        List<ExtraTypeProvider> list = this.extraTypeProviders;
        Type type = null;
        if (list != null) {
            for (ExtraTypeProvider extraType : list) {
                type = extraType.getExtraType(obj, str);
            }
        }
        if (type == null) {
            obj2 = parse();
        } else {
            obj2 = parseObject(type);
        }
        if (obj instanceof ExtraProcessable) {
            ((ExtraProcessable) obj).processExtra(str, obj2);
            return;
        }
        List<ExtraProcessor> list2 = this.extraProcessors;
        if (list2 != null) {
            for (ExtraProcessor processExtra : list2) {
                processExtra.processExtra(obj, str, obj2);
            }
        }
        if (this.resolveStatus == 1) {
            this.resolveStatus = 0;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:61:?, code lost:
        r11 = r10.config.getDeserializer((java.lang.reflect.Type) r2);
        r10.lexer.nextToken(16);
        setResolveStatus(2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x01d7, code lost:
        if (r0 == null) goto L_0x01e0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x01db, code lost:
        if ((r12 instanceof java.lang.Integer) != false) goto L_0x01e0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x01dd, code lost:
        popContext();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x01e0, code lost:
        r11 = (java.util.Map) r11.deserialze(r10, r2, r12);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x01e6, code lost:
        setContext(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x01e9, code lost:
        return r11;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object parse(com.alibaba.fastjson.parser.deserializer.PropertyProcessable r11, java.lang.Object r12) {
        /*
            r10 = this;
            com.alibaba.fastjson.parser.JSONLexer r0 = r10.lexer
            int r0 = r0.token()
            r1 = 0
            r2 = 12
            if (r0 == r2) goto L_0x008c
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r0 = "syntax error, expect {, actual "
            r11.append(r0)
            com.alibaba.fastjson.parser.JSONLexer r0 = r10.lexer
            java.lang.String r0 = r0.tokenName()
            r11.append(r0)
            java.lang.String r11 = r11.toString()
            boolean r0 = r12 instanceof java.lang.String
            if (r0 == 0) goto L_0x0046
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r11)
            java.lang.String r11 = ", fieldName "
            r0.append(r11)
            java.lang.String r11 = r0.toString()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r11)
            r0.append(r12)
            java.lang.String r11 = r0.toString()
        L_0x0046:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r11)
            java.lang.String r11 = ", "
            r0.append(r11)
            java.lang.String r11 = r0.toString()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r11)
            com.alibaba.fastjson.parser.JSONLexer r11 = r10.lexer
            java.lang.String r11 = r11.info()
            r0.append(r11)
            java.lang.String r11 = r0.toString()
            com.alibaba.fastjson.JSONArray r0 = new com.alibaba.fastjson.JSONArray
            r0.<init>()
            r10.parseArray(r0, r12)
            int r12 = r0.size()
            r2 = 1
            if (r12 != r2) goto L_0x0086
            java.lang.Object r12 = r0.get(r1)
            boolean r0 = r12 instanceof com.alibaba.fastjson.JSONObject
            if (r0 == 0) goto L_0x0086
            com.alibaba.fastjson.JSONObject r12 = (com.alibaba.fastjson.JSONObject) r12
            return r12
        L_0x0086:
            com.alibaba.fastjson.JSONException r12 = new com.alibaba.fastjson.JSONException
            r12.<init>(r11)
            throw r12
        L_0x008c:
            com.alibaba.fastjson.parser.ParseContext r0 = r10.context
        L_0x008e:
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            r2.skipWhitespace()     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            char r2 = r2.getCurrent()     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r3 = r10.lexer     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.Feature r4 = com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas     // Catch:{ all -> 0x0260 }
            boolean r3 = r3.isEnabled(r4)     // Catch:{ all -> 0x0260 }
            if (r3 == 0) goto L_0x00b8
        L_0x00a3:
            r3 = 44
            if (r2 != r3) goto L_0x00b8
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            r2.next()     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            r2.skipWhitespace()     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            char r2 = r2.getCurrent()     // Catch:{ all -> 0x0260 }
            goto L_0x00a3
        L_0x00b8:
            java.lang.String r3 = "expect ':' at "
            r4 = 58
            r5 = 34
            r6 = 16
            if (r2 != r5) goto L_0x00f4
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.SymbolTable r7 = r10.symbolTable     // Catch:{ all -> 0x0260 }
            java.lang.String r2 = r2.scanSymbol(r7, r5)     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r7 = r10.lexer     // Catch:{ all -> 0x0260 }
            r7.skipWhitespace()     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r7 = r10.lexer     // Catch:{ all -> 0x0260 }
            char r7 = r7.getCurrent()     // Catch:{ all -> 0x0260 }
            if (r7 != r4) goto L_0x00d9
            goto L_0x0171
        L_0x00d9:
            com.alibaba.fastjson.JSONException r11 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x0260 }
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch:{ all -> 0x0260 }
            r12.<init>()     // Catch:{ all -> 0x0260 }
            r12.append(r3)     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r1 = r10.lexer     // Catch:{ all -> 0x0260 }
            int r1 = r1.pos()     // Catch:{ all -> 0x0260 }
            r12.append(r1)     // Catch:{ all -> 0x0260 }
            java.lang.String r12 = r12.toString()     // Catch:{ all -> 0x0260 }
            r11.<init>(r12)     // Catch:{ all -> 0x0260 }
            throw r11     // Catch:{ all -> 0x0260 }
        L_0x00f4:
            r7 = 125(0x7d, float:1.75E-43)
            if (r2 != r7) goto L_0x010b
            com.alibaba.fastjson.parser.JSONLexer r12 = r10.lexer     // Catch:{ all -> 0x0260 }
            r12.next()     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r12 = r10.lexer     // Catch:{ all -> 0x0260 }
            r12.resetStringPosition()     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r12 = r10.lexer     // Catch:{ all -> 0x0260 }
            r12.nextToken(r6)     // Catch:{ all -> 0x0260 }
            r10.setContext(r0)
            return r11
        L_0x010b:
            java.lang.String r7 = "syntax error"
            r8 = 39
            if (r2 != r8) goto L_0x0152
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.Feature r9 = com.alibaba.fastjson.parser.Feature.AllowSingleQuotes     // Catch:{ all -> 0x0260 }
            boolean r2 = r2.isEnabled(r9)     // Catch:{ all -> 0x0260 }
            if (r2 == 0) goto L_0x014c
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.SymbolTable r7 = r10.symbolTable     // Catch:{ all -> 0x0260 }
            java.lang.String r2 = r2.scanSymbol(r7, r8)     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r7 = r10.lexer     // Catch:{ all -> 0x0260 }
            r7.skipWhitespace()     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r7 = r10.lexer     // Catch:{ all -> 0x0260 }
            char r7 = r7.getCurrent()     // Catch:{ all -> 0x0260 }
            if (r7 != r4) goto L_0x0131
            goto L_0x0171
        L_0x0131:
            com.alibaba.fastjson.JSONException r11 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x0260 }
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch:{ all -> 0x0260 }
            r12.<init>()     // Catch:{ all -> 0x0260 }
            r12.append(r3)     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r1 = r10.lexer     // Catch:{ all -> 0x0260 }
            int r1 = r1.pos()     // Catch:{ all -> 0x0260 }
            r12.append(r1)     // Catch:{ all -> 0x0260 }
            java.lang.String r12 = r12.toString()     // Catch:{ all -> 0x0260 }
            r11.<init>(r12)     // Catch:{ all -> 0x0260 }
            throw r11     // Catch:{ all -> 0x0260 }
        L_0x014c:
            com.alibaba.fastjson.JSONException r11 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x0260 }
            r11.<init>(r7)     // Catch:{ all -> 0x0260 }
            throw r11     // Catch:{ all -> 0x0260 }
        L_0x0152:
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.Feature r8 = com.alibaba.fastjson.parser.Feature.AllowUnQuotedFieldNames     // Catch:{ all -> 0x0260 }
            boolean r2 = r2.isEnabled(r8)     // Catch:{ all -> 0x0260 }
            if (r2 == 0) goto L_0x025a
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.SymbolTable r7 = r10.symbolTable     // Catch:{ all -> 0x0260 }
            java.lang.String r2 = r2.scanSymbolUnQuoted(r7)     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r7 = r10.lexer     // Catch:{ all -> 0x0260 }
            r7.skipWhitespace()     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r7 = r10.lexer     // Catch:{ all -> 0x0260 }
            char r7 = r7.getCurrent()     // Catch:{ all -> 0x0260 }
            if (r7 != r4) goto L_0x0237
        L_0x0171:
            com.alibaba.fastjson.parser.JSONLexer r3 = r10.lexer     // Catch:{ all -> 0x0260 }
            r3.next()     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r3 = r10.lexer     // Catch:{ all -> 0x0260 }
            r3.skipWhitespace()     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r3 = r10.lexer     // Catch:{ all -> 0x0260 }
            r3.getCurrent()     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r3 = r10.lexer     // Catch:{ all -> 0x0260 }
            r3.resetStringPosition()     // Catch:{ all -> 0x0260 }
            java.lang.String r3 = com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY     // Catch:{ all -> 0x0260 }
            r4 = 13
            r7 = 0
            if (r2 != r3) goto L_0x01ea
            com.alibaba.fastjson.parser.JSONLexer r3 = r10.lexer     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.Feature r8 = com.alibaba.fastjson.parser.Feature.DisableSpecialKeyDetect     // Catch:{ all -> 0x0260 }
            boolean r3 = r3.isEnabled(r8)     // Catch:{ all -> 0x0260 }
            if (r3 != 0) goto L_0x01ea
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.SymbolTable r3 = r10.symbolTable     // Catch:{ all -> 0x0260 }
            java.lang.String r2 = r2.scanSymbol(r3, r5)     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.ParserConfig r3 = r10.config     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r5 = r10.lexer     // Catch:{ all -> 0x0260 }
            int r5 = r5.getFeatures()     // Catch:{ all -> 0x0260 }
            java.lang.Class r2 = r3.checkAutoType(r2, r7, r5)     // Catch:{ all -> 0x0260 }
            java.lang.Class<java.util.Map> r3 = java.util.Map.class
            boolean r3 = r3.isAssignableFrom(r2)     // Catch:{ all -> 0x0260 }
            if (r3 == 0) goto L_0x01c8
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            r2.nextToken(r6)     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            int r2 = r2.token()     // Catch:{ all -> 0x0260 }
            if (r2 != r4) goto L_0x022f
            com.alibaba.fastjson.parser.JSONLexer r12 = r10.lexer     // Catch:{ all -> 0x0260 }
            r12.nextToken(r6)     // Catch:{ all -> 0x0260 }
            r10.setContext(r0)
            return r11
        L_0x01c8:
            com.alibaba.fastjson.parser.ParserConfig r11 = r10.config     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer r11 = r11.getDeserializer(r2)     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r1 = r10.lexer     // Catch:{ all -> 0x0260 }
            r1.nextToken(r6)     // Catch:{ all -> 0x0260 }
            r1 = 2
            r10.setResolveStatus(r1)     // Catch:{ all -> 0x0260 }
            if (r0 == 0) goto L_0x01e0
            boolean r1 = r12 instanceof java.lang.Integer     // Catch:{ all -> 0x0260 }
            if (r1 != 0) goto L_0x01e0
            r10.popContext()     // Catch:{ all -> 0x0260 }
        L_0x01e0:
            java.lang.Object r11 = r11.deserialze(r10, r2, r12)     // Catch:{ all -> 0x0260 }
            java.util.Map r11 = (java.util.Map) r11     // Catch:{ all -> 0x0260 }
            r10.setContext(r0)
            return r11
        L_0x01ea:
            com.alibaba.fastjson.parser.JSONLexer r3 = r10.lexer     // Catch:{ all -> 0x0260 }
            r3.nextToken()     // Catch:{ all -> 0x0260 }
            if (r1 == 0) goto L_0x01f4
            r10.setContext(r0)     // Catch:{ all -> 0x0260 }
        L_0x01f4:
            java.lang.reflect.Type r3 = r11.getType(r2)     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r5 = r10.lexer     // Catch:{ all -> 0x0260 }
            int r5 = r5.token()     // Catch:{ all -> 0x0260 }
            r6 = 8
            if (r5 != r6) goto L_0x0208
            com.alibaba.fastjson.parser.JSONLexer r3 = r10.lexer     // Catch:{ all -> 0x0260 }
            r3.nextToken()     // Catch:{ all -> 0x0260 }
            goto L_0x020c
        L_0x0208:
            java.lang.Object r7 = r10.parseObject(r3, r2)     // Catch:{ all -> 0x0260 }
        L_0x020c:
            r11.apply(r2, r7)     // Catch:{ all -> 0x0260 }
            r10.setContext(r0, r7, r2)     // Catch:{ all -> 0x0260 }
            r10.setContext(r0)     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r2 = r10.lexer     // Catch:{ all -> 0x0260 }
            int r2 = r2.token()     // Catch:{ all -> 0x0260 }
            r3 = 20
            if (r2 == r3) goto L_0x0233
            r3 = 15
            if (r2 != r3) goto L_0x0224
            goto L_0x0233
        L_0x0224:
            if (r2 != r4) goto L_0x022f
            com.alibaba.fastjson.parser.JSONLexer r12 = r10.lexer     // Catch:{ all -> 0x0260 }
            r12.nextToken()     // Catch:{ all -> 0x0260 }
            r10.setContext(r0)
            return r11
        L_0x022f:
            int r1 = r1 + 1
            goto L_0x008e
        L_0x0233:
            r10.setContext(r0)
            return r11
        L_0x0237:
            com.alibaba.fastjson.JSONException r11 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x0260 }
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch:{ all -> 0x0260 }
            r12.<init>()     // Catch:{ all -> 0x0260 }
            r12.append(r3)     // Catch:{ all -> 0x0260 }
            com.alibaba.fastjson.parser.JSONLexer r1 = r10.lexer     // Catch:{ all -> 0x0260 }
            int r1 = r1.pos()     // Catch:{ all -> 0x0260 }
            r12.append(r1)     // Catch:{ all -> 0x0260 }
            java.lang.String r1 = ", actual "
            r12.append(r1)     // Catch:{ all -> 0x0260 }
            r12.append(r7)     // Catch:{ all -> 0x0260 }
            java.lang.String r12 = r12.toString()     // Catch:{ all -> 0x0260 }
            r11.<init>(r12)     // Catch:{ all -> 0x0260 }
            throw r11     // Catch:{ all -> 0x0260 }
        L_0x025a:
            com.alibaba.fastjson.JSONException r11 = new com.alibaba.fastjson.JSONException     // Catch:{ all -> 0x0260 }
            r11.<init>(r7)     // Catch:{ all -> 0x0260 }
            throw r11     // Catch:{ all -> 0x0260 }
        L_0x0260:
            r11 = move-exception
            r10.setContext(r0)
            goto L_0x0266
        L_0x0265:
            throw r11
        L_0x0266:
            goto L_0x0265
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parse(com.alibaba.fastjson.parser.deserializer.PropertyProcessable, java.lang.Object):java.lang.Object");
    }
}
