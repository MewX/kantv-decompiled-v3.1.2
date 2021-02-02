package org.fourthline.cling.binding.xml;

import java.util.logging.Logger;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.Device;

public class RecoveringUDA10DeviceDescriptorBinderImpl extends UDA10DeviceDescriptorBinderImpl {
    private static Logger log = Logger.getLogger(RecoveringUDA10DeviceDescriptorBinderImpl.class.getName());

    /* JADX WARNING: Removed duplicated region for block: B:18:0x005d A[SYNTHETIC, Splitter:B:18:0x005d] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0087 A[Catch:{ ValidationException -> 0x000b }] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00be A[SYNTHETIC, Splitter:B:37:0x00be] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <D extends org.fourthline.cling.model.meta.Device> D describe(D r8, java.lang.String r9) throws org.fourthline.cling.binding.xml.DescriptorBindingException, org.fourthline.cling.model.ValidationException {
        /*
            r7 = this;
            if (r9 == 0) goto L_0x0006
            java.lang.String r9 = r9.trim()     // Catch:{ DescriptorBindingException -> 0x000e }
        L_0x0006:
            org.fourthline.cling.model.meta.Device r8 = super.describe(r8, r9)     // Catch:{ DescriptorBindingException -> 0x000e }
            return r8
        L_0x000b:
            r8 = move-exception
            goto L_0x00e6
        L_0x000e:
            r0 = move-exception
            java.util.logging.Logger r1 = log     // Catch:{ ValidationException -> 0x000b }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ ValidationException -> 0x000b }
            r2.<init>()     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r3 = "Regular parsing failed: "
            r2.append(r3)     // Catch:{ ValidationException -> 0x000b }
            java.lang.Throwable r3 = org.seamless.util.Exceptions.unwrap(r0)     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r3 = r3.getMessage()     // Catch:{ ValidationException -> 0x000b }
            r2.append(r3)     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r2 = r2.toString()     // Catch:{ ValidationException -> 0x000b }
            r1.warning(r2)     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r1 = r7.fixGarbageLeadingChars(r9)     // Catch:{ ValidationException -> 0x000b }
            if (r1 == 0) goto L_0x0057
            org.fourthline.cling.model.meta.Device r8 = super.describe(r8, r1)     // Catch:{ DescriptorBindingException -> 0x0038 }
            return r8
        L_0x0038:
            r1 = move-exception
            java.util.logging.Logger r2 = log     // Catch:{ ValidationException -> 0x000b }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ ValidationException -> 0x000b }
            r3.<init>()     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r4 = "Removing leading garbage didn't work: "
            r3.append(r4)     // Catch:{ ValidationException -> 0x000b }
            java.lang.Throwable r1 = org.seamless.util.Exceptions.unwrap(r1)     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r1 = r1.getMessage()     // Catch:{ ValidationException -> 0x000b }
            r3.append(r1)     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r1 = r3.toString()     // Catch:{ ValidationException -> 0x000b }
            r2.warning(r1)     // Catch:{ ValidationException -> 0x000b }
        L_0x0057:
            java.lang.String r1 = r7.fixGarbageTrailingChars(r9, r0)     // Catch:{ ValidationException -> 0x000b }
            if (r1 == 0) goto L_0x0081
            org.fourthline.cling.model.meta.Device r8 = super.describe(r8, r1)     // Catch:{ DescriptorBindingException -> 0x0062 }
            return r8
        L_0x0062:
            r1 = move-exception
            java.util.logging.Logger r2 = log     // Catch:{ ValidationException -> 0x000b }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ ValidationException -> 0x000b }
            r3.<init>()     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r4 = "Removing trailing garbage didn't work: "
            r3.append(r4)     // Catch:{ ValidationException -> 0x000b }
            java.lang.Throwable r1 = org.seamless.util.Exceptions.unwrap(r1)     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r1 = r1.getMessage()     // Catch:{ ValidationException -> 0x000b }
            r3.append(r1)     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r1 = r3.toString()     // Catch:{ ValidationException -> 0x000b }
            r2.warning(r1)     // Catch:{ ValidationException -> 0x000b }
        L_0x0081:
            r1 = 0
            r2 = r9
            r3 = r0
        L_0x0084:
            r4 = 5
            if (r1 >= r4) goto L_0x00b4
            java.lang.String r2 = r7.fixMissingNamespaces(r2, r3)     // Catch:{ ValidationException -> 0x000b }
            if (r2 == 0) goto L_0x00b4
            org.fourthline.cling.model.meta.Device r8 = super.describe(r8, r2)     // Catch:{ DescriptorBindingException -> 0x0092 }
            return r8
        L_0x0092:
            r3 = move-exception
            java.util.logging.Logger r4 = log     // Catch:{ ValidationException -> 0x000b }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ ValidationException -> 0x000b }
            r5.<init>()     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r6 = "Fixing namespace prefix didn't work: "
            r5.append(r6)     // Catch:{ ValidationException -> 0x000b }
            java.lang.Throwable r6 = org.seamless.util.Exceptions.unwrap(r3)     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r6 = r6.getMessage()     // Catch:{ ValidationException -> 0x000b }
            r5.append(r6)     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r5 = r5.toString()     // Catch:{ ValidationException -> 0x000b }
            r4.warning(r5)     // Catch:{ ValidationException -> 0x000b }
            int r1 = r1 + 1
            goto L_0x0084
        L_0x00b4:
            java.lang.String r1 = org.seamless.xml.XmlPullParserUtils.fixXMLEntities(r9)     // Catch:{ ValidationException -> 0x000b }
            boolean r2 = r1.equals(r9)     // Catch:{ ValidationException -> 0x000b }
            if (r2 != 0) goto L_0x00e2
            org.fourthline.cling.model.meta.Device r8 = super.describe(r8, r1)     // Catch:{ DescriptorBindingException -> 0x00c3 }
            return r8
        L_0x00c3:
            r8 = move-exception
            java.util.logging.Logger r1 = log     // Catch:{ ValidationException -> 0x000b }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ ValidationException -> 0x000b }
            r2.<init>()     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r3 = "Fixing XML entities didn't work: "
            r2.append(r3)     // Catch:{ ValidationException -> 0x000b }
            java.lang.Throwable r8 = org.seamless.util.Exceptions.unwrap(r8)     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r8 = r8.getMessage()     // Catch:{ ValidationException -> 0x000b }
            r2.append(r8)     // Catch:{ ValidationException -> 0x000b }
            java.lang.String r8 = r2.toString()     // Catch:{ ValidationException -> 0x000b }
            r1.warning(r8)     // Catch:{ ValidationException -> 0x000b }
        L_0x00e2:
            r7.handleInvalidDescriptor(r9, r0)     // Catch:{ ValidationException -> 0x000b }
            goto L_0x00ee
        L_0x00e6:
            r0 = 0
            org.fourthline.cling.model.meta.Device r8 = r7.handleInvalidDevice(r9, r0, r8)
            if (r8 == 0) goto L_0x00ee
            return r8
        L_0x00ee:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "No device produced, did you swallow exceptions in your subclass?"
            r8.<init>(r9)
            goto L_0x00f7
        L_0x00f6:
            throw r8
        L_0x00f7:
            goto L_0x00f6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.describe(org.fourthline.cling.model.meta.Device, java.lang.String):org.fourthline.cling.model.meta.Device");
    }

    private String fixGarbageLeadingChars(String str) {
        int indexOf = str.indexOf("<?xml");
        if (indexOf == -1) {
            return str;
        }
        return str.substring(indexOf);
    }

    /* access modifiers changed from: protected */
    public String fixGarbageTrailingChars(String str, DescriptorBindingException descriptorBindingException) {
        String str2 = "</root>";
        int indexOf = str.indexOf(str2);
        if (indexOf == -1) {
            log.warning("No closing </root> element in descriptor");
            return null;
        } else if (str.length() == indexOf + 7) {
            return null;
        } else {
            log.warning("Detected garbage characters after <root> node, removing");
            StringBuilder sb = new StringBuilder();
            sb.append(str.substring(0, indexOf));
            sb.append(str2);
            return sb.toString();
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0040, code lost:
        if (r0.groupCount() == 1) goto L_0x0044;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String fixMissingNamespaces(java.lang.String r8, org.fourthline.cling.binding.xml.DescriptorBindingException r9) {
        /*
            r7 = this;
            java.lang.Throwable r9 = r9.getCause()
            boolean r0 = r9 instanceof org.xml.sax.SAXParseException
            r1 = 0
            if (r0 != 0) goto L_0x000e
            boolean r0 = r9 instanceof org.seamless.xml.ParserException
            if (r0 != 0) goto L_0x000e
            return r1
        L_0x000e:
            java.lang.String r9 = r9.getMessage()
            if (r9 != 0) goto L_0x0015
            return r1
        L_0x0015:
            java.lang.String r0 = "The prefix \"(.*)\" for element"
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            java.util.regex.Matcher r0 = r0.matcher(r9)
            boolean r2 = r0.find()
            r3 = 1
            if (r2 == 0) goto L_0x002c
            int r2 = r0.groupCount()
            if (r2 == r3) goto L_0x0044
        L_0x002c:
            java.lang.String r0 = "undefined prefix: ([^ ]*)"
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            java.util.regex.Matcher r0 = r0.matcher(r9)
            boolean r9 = r0.find()
            if (r9 == 0) goto L_0x00ee
            int r9 = r0.groupCount()
            if (r9 == r3) goto L_0x0044
            goto L_0x00ee
        L_0x0044:
            java.lang.String r9 = r0.group(r3)
            java.util.logging.Logger r0 = log
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "Fixing missing namespace declaration for: "
            r2.append(r4)
            r2.append(r9)
            java.lang.String r2 = r2.toString()
            r0.warning(r2)
            java.lang.String r0 = "<root([^>]*)"
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            java.util.regex.Matcher r0 = r0.matcher(r8)
            boolean r2 = r0.find()
            if (r2 == 0) goto L_0x00e7
            int r2 = r0.groupCount()
            if (r2 == r3) goto L_0x0075
            goto L_0x00e7
        L_0x0075:
            java.lang.String r2 = r0.group(r3)
            java.util.logging.Logger r4 = log
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Preserving existing <root> element attributes/namespace declarations: "
            r5.append(r6)
            r6 = 0
            java.lang.String r0 = r0.group(r6)
            r5.append(r0)
            java.lang.String r0 = r5.toString()
            r4.fine(r0)
            r0 = 32
            java.lang.String r4 = "<root[^>]*>(.*)</root>"
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r4, r0)
            java.util.regex.Matcher r8 = r0.matcher(r8)
            boolean r0 = r8.find()
            if (r0 == 0) goto L_0x00df
            int r0 = r8.groupCount()
            if (r0 == r3) goto L_0x00ad
            goto L_0x00df
        L_0x00ad:
            java.lang.String r8 = r8.group(r3)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><root "
            r0.append(r1)
            java.util.Locale r1 = java.util.Locale.ROOT
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r3[r6] = r9
            java.lang.String r9 = "xmlns:%s=\"urn:schemas-dlna-org:device-1-0\""
            java.lang.String r9 = java.lang.String.format(r1, r9, r3)
            r0.append(r9)
            r0.append(r2)
            java.lang.String r9 = ">"
            r0.append(r9)
            r0.append(r8)
            java.lang.String r8 = "</root>"
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            return r8
        L_0x00df:
            java.util.logging.Logger r8 = log
            java.lang.String r9 = "Could not extract body of <root> element"
            r8.fine(r9)
            return r1
        L_0x00e7:
            java.util.logging.Logger r8 = log
            java.lang.String r9 = "Could not find <root> element attributes"
            r8.fine(r9)
        L_0x00ee:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.binding.xml.RecoveringUDA10DeviceDescriptorBinderImpl.fixMissingNamespaces(java.lang.String, org.fourthline.cling.binding.xml.DescriptorBindingException):java.lang.String");
    }

    /* access modifiers changed from: protected */
    public void handleInvalidDescriptor(String str, DescriptorBindingException descriptorBindingException) throws DescriptorBindingException {
        throw descriptorBindingException;
    }

    /* access modifiers changed from: protected */
    public <D extends Device> D handleInvalidDevice(String str, D d, ValidationException validationException) throws ValidationException {
        throw validationException;
    }
}
