package org.fourthline.cling.support.model.dlna;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Logger;

public abstract class DLNAAttribute<T> {
    private static final Logger log = Logger.getLogger(DLNAAttribute.class.getName());
    private T value;

    public enum Type {
        DLNA_ORG_PN("DLNA.ORG_PN", DLNAProfileAttribute.class),
        DLNA_ORG_OP("DLNA.ORG_OP", DLNAOperationsAttribute.class),
        DLNA_ORG_PS("DLNA.ORG_PS", DLNAPlaySpeedAttribute.class),
        DLNA_ORG_CI("DLNA.ORG_CI", DLNAConversionIndicatorAttribute.class),
        DLNA_ORG_FLAGS("DLNA.ORG_FLAGS", DLNAFlagsAttribute.class);
        
        private static Map<String, Type> byName;
        private String attributeName;
        private Class<? extends DLNAAttribute>[] attributeTypes;

        static {
            byName = new HashMap<String, Type>() {
                {
                    Type[] values;
                    for (Type type : Type.values()) {
                        put(type.getAttributeName().toUpperCase(Locale.ROOT), type);
                    }
                }
            };
        }

        @SafeVarargs
        private Type(String str, Class<? extends DLNAAttribute>... clsArr) {
            this.attributeName = str;
            this.attributeTypes = clsArr;
        }

        public String getAttributeName() {
            return this.attributeName;
        }

        public Class<? extends DLNAAttribute>[] getAttributeTypes() {
            return this.attributeTypes;
        }

        public static Type valueOfAttributeName(String str) {
            if (str == null) {
                return null;
            }
            return (Type) byName.get(str.toUpperCase(Locale.ROOT));
        }
    }

    public abstract String getString();

    public abstract void setString(String str, String str2) throws InvalidDLNAProtocolAttributeException;

    public void setValue(T t) {
        this.value = t;
    }

    public T getValue() {
        return this.value;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0040, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0041, code lost:
        r3 = r2;
        r2 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0073, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0074, code lost:
        r4 = log;
        r5 = new java.lang.StringBuilder();
        r5.append("Invalid DLNA attribute value for tested type: ");
        r5.append(r3.getSimpleName());
        r5.append(" - ");
        r5.append(r2.getMessage());
        r4.finest(r5.toString());
        r2 = null;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0073 A[ExcHandler: InvalidDLNAProtocolAttributeException (r2v3 'e' org.fourthline.cling.support.model.dlna.InvalidDLNAProtocolAttributeException A[CUSTOM_DECLARE]), Splitter:B:5:0x0012] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static org.fourthline.cling.support.model.dlna.DLNAAttribute newInstance(org.fourthline.cling.support.model.dlna.DLNAAttribute.Type r7, java.lang.String r8, java.lang.String r9) {
        /*
            r0 = 0
            r1 = 0
            r2 = r0
        L_0x0003:
            java.lang.Class[] r3 = r7.getAttributeTypes()
            int r3 = r3.length
            if (r1 >= r3) goto L_0x009f
            if (r2 != 0) goto L_0x009f
            java.lang.Class[] r3 = r7.getAttributeTypes()
            r3 = r3[r1]
            java.util.logging.Logger r4 = log     // Catch:{ InvalidDLNAProtocolAttributeException -> 0x0073, Exception -> 0x0046 }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ InvalidDLNAProtocolAttributeException -> 0x0073, Exception -> 0x0046 }
            r5.<init>()     // Catch:{ InvalidDLNAProtocolAttributeException -> 0x0073, Exception -> 0x0046 }
            java.lang.String r6 = "Trying to parse DLNA '"
            r5.append(r6)     // Catch:{ InvalidDLNAProtocolAttributeException -> 0x0073, Exception -> 0x0046 }
            r5.append(r7)     // Catch:{ InvalidDLNAProtocolAttributeException -> 0x0073, Exception -> 0x0046 }
            java.lang.String r6 = "' with class: "
            r5.append(r6)     // Catch:{ InvalidDLNAProtocolAttributeException -> 0x0073, Exception -> 0x0046 }
            java.lang.String r6 = r3.getSimpleName()     // Catch:{ InvalidDLNAProtocolAttributeException -> 0x0073, Exception -> 0x0046 }
            r5.append(r6)     // Catch:{ InvalidDLNAProtocolAttributeException -> 0x0073, Exception -> 0x0046 }
            java.lang.String r5 = r5.toString()     // Catch:{ InvalidDLNAProtocolAttributeException -> 0x0073, Exception -> 0x0046 }
            r4.finest(r5)     // Catch:{ InvalidDLNAProtocolAttributeException -> 0x0073, Exception -> 0x0046 }
            java.lang.Object r4 = r3.newInstance()     // Catch:{ InvalidDLNAProtocolAttributeException -> 0x0073, Exception -> 0x0046 }
            org.fourthline.cling.support.model.dlna.DLNAAttribute r4 = (org.fourthline.cling.support.model.dlna.DLNAAttribute) r4     // Catch:{ InvalidDLNAProtocolAttributeException -> 0x0073, Exception -> 0x0046 }
            if (r8 == 0) goto L_0x0044
            r4.setString(r8, r9)     // Catch:{ InvalidDLNAProtocolAttributeException -> 0x0073, Exception -> 0x0040 }
            goto L_0x0044
        L_0x0040:
            r2 = move-exception
            r3 = r2
            r2 = r4
            goto L_0x0047
        L_0x0044:
            r2 = r4
            goto L_0x009b
        L_0x0046:
            r3 = move-exception
        L_0x0047:
            java.util.logging.Logger r4 = log
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Error instantiating DLNA attribute of type '"
            r5.append(r6)
            r5.append(r7)
            java.lang.String r6 = "' with value: "
            r5.append(r6)
            r5.append(r8)
            java.lang.String r5 = r5.toString()
            r4.severe(r5)
            java.util.logging.Logger r4 = log
            java.util.logging.Level r5 = java.util.logging.Level.SEVERE
            java.lang.Throwable r3 = org.seamless.util.Exceptions.unwrap(r3)
            java.lang.String r6 = "Exception root cause: "
            r4.log(r5, r6, r3)
            goto L_0x009b
        L_0x0073:
            r2 = move-exception
            java.util.logging.Logger r4 = log
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Invalid DLNA attribute value for tested type: "
            r5.append(r6)
            java.lang.String r3 = r3.getSimpleName()
            r5.append(r3)
            java.lang.String r3 = " - "
            r5.append(r3)
            java.lang.String r2 = r2.getMessage()
            r5.append(r2)
            java.lang.String r2 = r5.toString()
            r4.finest(r2)
            r2 = r0
        L_0x009b:
            int r1 = r1 + 1
            goto L_0x0003
        L_0x009f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.support.model.dlna.DLNAAttribute.newInstance(org.fourthline.cling.support.model.dlna.DLNAAttribute$Type, java.lang.String, java.lang.String):org.fourthline.cling.support.model.dlna.DLNAAttribute");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(") '");
        sb.append(getValue());
        sb.append("'");
        return sb.toString();
    }
}
