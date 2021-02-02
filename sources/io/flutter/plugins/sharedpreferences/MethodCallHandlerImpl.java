package io.flutter.plugins.sharedpreferences;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import java.io.IOException;
import java.math.BigInteger;
import java.util.List;
import java.util.Set;

class MethodCallHandlerImpl implements MethodCallHandler {
    private static final String BIG_INTEGER_PREFIX = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy";
    private static final String DOUBLE_PREFIX = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu";
    private static final String LIST_IDENTIFIER = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu";
    private static final String SHARED_PREFERENCES_NAME = "FlutterSharedPreferences";
    private final SharedPreferences preferences;

    MethodCallHandlerImpl(Context context) {
        this.preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
    }

    public void onMethodCall(MethodCall methodCall, Result result) {
        String str = (String) methodCall.argument("key");
        try {
            String str2 = methodCall.method;
            char c = 65535;
            switch (str2.hashCode()) {
                case -1354815177:
                    if (str2.equals("commit")) {
                        c = 5;
                        break;
                    }
                    break;
                case -1249367445:
                    if (str2.equals("getAll")) {
                        c = 6;
                        break;
                    }
                    break;
                case -1096934831:
                    if (str2.equals("setStringList")) {
                        c = 4;
                        break;
                    }
                    break;
                case -934610812:
                    if (str2.equals("remove")) {
                        c = 7;
                        break;
                    }
                    break;
                case -905809875:
                    if (str2.equals("setInt")) {
                        c = 2;
                        break;
                    }
                    break;
                case 94746189:
                    if (str2.equals("clear")) {
                        c = 8;
                        break;
                    }
                    break;
                case 155439827:
                    if (str2.equals("setDouble")) {
                        c = 1;
                        break;
                    }
                    break;
                case 589412115:
                    if (str2.equals("setString")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1984457324:
                    if (str2.equals("setBool")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            String str3 = BIG_INTEGER_PREFIX;
            String str4 = LIST_IDENTIFIER;
            String str5 = "value";
            switch (c) {
                case 0:
                    commitAsync(this.preferences.edit().putBoolean(str, ((Boolean) methodCall.argument(str5)).booleanValue()), result);
                    break;
                case 1:
                    String d = Double.toString(((Number) methodCall.argument(str5)).doubleValue());
                    Editor edit = this.preferences.edit();
                    StringBuilder sb = new StringBuilder();
                    sb.append(DOUBLE_PREFIX);
                    sb.append(d);
                    commitAsync(edit.putString(str, sb.toString()), result);
                    break;
                case 2:
                    Number number = (Number) methodCall.argument(str5);
                    if (!(number instanceof BigInteger)) {
                        commitAsync(this.preferences.edit().putLong(str, number.longValue()), result);
                        break;
                    } else {
                        BigInteger bigInteger = (BigInteger) number;
                        Editor edit2 = this.preferences.edit();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str3);
                        sb2.append(bigInteger.toString(36));
                        commitAsync(edit2.putString(str, sb2.toString()), result);
                        break;
                    }
                case 3:
                    String str6 = (String) methodCall.argument(str5);
                    if (!str6.startsWith(str4)) {
                        if (!str6.startsWith(str3)) {
                            commitAsync(this.preferences.edit().putString(str, str6), result);
                            break;
                        }
                    }
                    result.error("StorageError", "This string cannot be stored as it clashes with special identifier prefixes.", null);
                    return;
                case 4:
                    List list = (List) methodCall.argument(str5);
                    Editor edit3 = this.preferences.edit();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(str4);
                    sb3.append(encodeList(list));
                    commitAsync(edit3.putString(str, sb3.toString()), result);
                    break;
                case 5:
                    result.success(Boolean.valueOf(true));
                    break;
                case 6:
                    result.success(getAllPrefs());
                    return;
                case 7:
                    commitAsync(this.preferences.edit().remove(str), result);
                    break;
                case 8:
                    Set<String> keySet = getAllPrefs().keySet();
                    Editor edit4 = this.preferences.edit();
                    for (String remove : keySet) {
                        edit4.remove(remove);
                    }
                    commitAsync(edit4, result);
                    break;
                default:
                    result.notImplemented();
                    break;
            }
        } catch (IOException e) {
            result.error("IOException encountered", methodCall.method, e);
        }
    }

    private void commitAsync(final Editor editor, final Result result) {
        new AsyncTask<Void, Void, Boolean>() {
            /* access modifiers changed from: protected */
            public Boolean doInBackground(Void... voidArr) {
                return Boolean.valueOf(editor.commit());
            }

            /* access modifiers changed from: protected */
            public void onPostExecute(Boolean bool) {
                result.success(bool);
            }
        }.execute(new Void[0]);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x002b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.List<java.lang.String> decodeList(java.lang.String r5) throws java.io.IOException {
        /*
            r4 = this;
            r0 = 0
            java.io.ObjectInputStream r1 = new java.io.ObjectInputStream     // Catch:{ ClassNotFoundException -> 0x0022 }
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream     // Catch:{ ClassNotFoundException -> 0x0022 }
            r3 = 0
            byte[] r5 = android.util.Base64.decode(r5, r3)     // Catch:{ ClassNotFoundException -> 0x0022 }
            r2.<init>(r5)     // Catch:{ ClassNotFoundException -> 0x0022 }
            r1.<init>(r2)     // Catch:{ ClassNotFoundException -> 0x0022 }
            java.lang.Object r5 = r1.readObject()     // Catch:{ ClassNotFoundException -> 0x001d, all -> 0x001a }
            java.util.List r5 = (java.util.List) r5     // Catch:{ ClassNotFoundException -> 0x001d, all -> 0x001a }
            r1.close()
            return r5
        L_0x001a:
            r5 = move-exception
            r0 = r1
            goto L_0x0029
        L_0x001d:
            r5 = move-exception
            r0 = r1
            goto L_0x0023
        L_0x0020:
            r5 = move-exception
            goto L_0x0029
        L_0x0022:
            r5 = move-exception
        L_0x0023:
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x0020 }
            r1.<init>(r5)     // Catch:{ all -> 0x0020 }
            throw r1     // Catch:{ all -> 0x0020 }
        L_0x0029:
            if (r0 == 0) goto L_0x002e
            r0.close()
        L_0x002e:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.MethodCallHandlerImpl.decodeList(java.lang.String):java.util.List");
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String encodeList(java.util.List<java.lang.String> r4) throws java.io.IOException {
        /*
            r3 = this;
            r0 = 0
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch:{ all -> 0x0021 }
            r1.<init>()     // Catch:{ all -> 0x0021 }
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch:{ all -> 0x0021 }
            r2.<init>(r1)     // Catch:{ all -> 0x0021 }
            r2.writeObject(r4)     // Catch:{ all -> 0x001e }
            r2.flush()     // Catch:{ all -> 0x001e }
            byte[] r4 = r1.toByteArray()     // Catch:{ all -> 0x001e }
            r0 = 0
            java.lang.String r4 = android.util.Base64.encodeToString(r4, r0)     // Catch:{ all -> 0x001e }
            r2.close()
            return r4
        L_0x001e:
            r4 = move-exception
            r0 = r2
            goto L_0x0022
        L_0x0021:
            r4 = move-exception
        L_0x0022:
            if (r0 == 0) goto L_0x0027
            r0.close()
        L_0x0027:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.MethodCallHandlerImpl.encodeList(java.util.List):java.lang.String");
    }

    /* JADX WARNING: type inference failed for: r5v1 */
    /* JADX WARNING: type inference failed for: r5v3, types: [java.util.List, java.util.ArrayList] */
    /* JADX WARNING: type inference failed for: r5v6, types: [java.math.BigInteger] */
    /* JADX WARNING: type inference failed for: r5v7 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Map<java.lang.String, java.lang.Object> getAllPrefs() throws java.io.IOException {
        /*
            r8 = this;
            android.content.SharedPreferences r0 = r8.preferences
            java.util.Map r0 = r0.getAll()
            java.util.HashMap r1 = new java.util.HashMap
            r1.<init>()
            java.util.Set r2 = r0.keySet()
            java.util.Iterator r2 = r2.iterator()
        L_0x0013:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L_0x00ad
            java.lang.Object r3 = r2.next()
            java.lang.String r3 = (java.lang.String) r3
            java.lang.String r4 = "flutter."
            boolean r4 = r3.startsWith(r4)
            if (r4 == 0) goto L_0x0013
            java.lang.Object r4 = r0.get(r3)
            boolean r5 = r4 instanceof java.lang.String
            java.lang.String r6 = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"
            if (r5 == 0) goto L_0x006c
            r5 = r4
            java.lang.String r5 = (java.lang.String) r5
            boolean r6 = r5.startsWith(r6)
            r7 = 40
            if (r6 == 0) goto L_0x0045
            java.lang.String r4 = r5.substring(r7)
            java.util.List r4 = r8.decodeList(r4)
            goto L_0x00a8
        L_0x0045:
            java.lang.String r6 = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy"
            boolean r6 = r5.startsWith(r6)
            if (r6 == 0) goto L_0x005b
            r4 = 44
            java.lang.String r4 = r5.substring(r4)
            java.math.BigInteger r5 = new java.math.BigInteger
            r6 = 36
            r5.<init>(r4, r6)
            goto L_0x009e
        L_0x005b:
            java.lang.String r6 = "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu"
            boolean r6 = r5.startsWith(r6)
            if (r6 == 0) goto L_0x00a8
            java.lang.String r4 = r5.substring(r7)
            java.lang.Double r4 = java.lang.Double.valueOf(r4)
            goto L_0x00a8
        L_0x006c:
            boolean r5 = r4 instanceof java.util.Set
            if (r5 == 0) goto L_0x00a8
            java.util.ArrayList r5 = new java.util.ArrayList
            java.util.Set r4 = (java.util.Set) r4
            r5.<init>(r4)
            android.content.SharedPreferences r4 = r8.preferences
            android.content.SharedPreferences$Editor r4 = r4.edit()
            android.content.SharedPreferences$Editor r4 = r4.remove(r3)
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r6)
            java.lang.String r6 = r8.encodeList(r5)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            android.content.SharedPreferences$Editor r4 = r4.putString(r3, r6)
            boolean r4 = r4.commit()
            if (r4 == 0) goto L_0x00a0
        L_0x009e:
            r4 = r5
            goto L_0x00a8
        L_0x00a0:
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r1 = "Could not migrate set to list"
            r0.<init>(r1)
            throw r0
        L_0x00a8:
            r1.put(r3, r4)
            goto L_0x0013
        L_0x00ad:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.sharedpreferences.MethodCallHandlerImpl.getAllPrefs():java.util.Map");
    }
}
