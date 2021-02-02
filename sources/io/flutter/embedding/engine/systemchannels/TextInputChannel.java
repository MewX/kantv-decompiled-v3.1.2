package io.flutter.embedding.engine.systemchannels;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.MimeTypes;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class TextInputChannel {
    private static final String TAG = "TextInputChannel";
    @NonNull
    public final MethodChannel channel;
    private final MethodCallHandler parsingMethodHandler = new MethodCallHandler() {
        public void onMethodCall(@NonNull MethodCall methodCall, @NonNull Result result) {
            if (TextInputChannel.this.textInputMethodHandler != null) {
                String str = methodCall.method;
                Object obj = methodCall.arguments;
                StringBuilder sb = new StringBuilder();
                sb.append("Received '");
                sb.append(str);
                sb.append("' message.");
                Log.v(TextInputChannel.TAG, sb.toString());
                char c = 65535;
                switch (str.hashCode()) {
                    case -1779068172:
                        if (str.equals("TextInput.setPlatformViewClient")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -1015421462:
                        if (str.equals("TextInput.setEditingState")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -37561188:
                        if (str.equals("TextInput.setClient")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 270476819:
                        if (str.equals("TextInput.hide")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 270803918:
                        if (str.equals("TextInput.show")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 1904427655:
                        if (str.equals("TextInput.clearClient")) {
                            c = 5;
                            break;
                        }
                        break;
                }
                if (c == 0) {
                    TextInputChannel.this.textInputMethodHandler.show();
                    result.success(null);
                } else if (c != 1) {
                    String str2 = "error";
                    if (c == 2) {
                        try {
                            JSONArray jSONArray = (JSONArray) obj;
                            TextInputChannel.this.textInputMethodHandler.setClient(jSONArray.getInt(0), Configuration.fromJson(jSONArray.getJSONObject(1)));
                            result.success(null);
                        } catch (NoSuchFieldException | JSONException e) {
                            result.error(str2, e.getMessage(), null);
                        }
                    } else if (c == 3) {
                        TextInputChannel.this.textInputMethodHandler.setPlatformViewClient(((Integer) obj).intValue());
                    } else if (c == 4) {
                        try {
                            TextInputChannel.this.textInputMethodHandler.setEditingState(TextEditState.fromJson((JSONObject) obj));
                            result.success(null);
                        } catch (JSONException e2) {
                            result.error(str2, e2.getMessage(), null);
                        }
                    } else if (c != 5) {
                        result.notImplemented();
                    } else {
                        TextInputChannel.this.textInputMethodHandler.clearClient();
                        result.success(null);
                    }
                } else {
                    TextInputChannel.this.textInputMethodHandler.hide();
                    result.success(null);
                }
            }
        }
    };
    /* access modifiers changed from: private */
    @Nullable
    public TextInputMethodHandler textInputMethodHandler;

    public static class Configuration {
        @Nullable
        public final String actionLabel;
        public final boolean autocorrect;
        @Nullable
        public final Integer inputAction;
        @NonNull
        public final InputType inputType;
        public final boolean obscureText;
        @NonNull
        public final TextCapitalization textCapitalization;

        public static Configuration fromJson(@NonNull JSONObject jSONObject) throws JSONException, NoSuchFieldException {
            String string = jSONObject.getString("inputAction");
            if (string != null) {
                String str = "actionLabel";
                Configuration configuration = new Configuration(jSONObject.optBoolean("obscureText"), jSONObject.optBoolean("autocorrect", true), TextCapitalization.fromValue(jSONObject.getString("textCapitalization")), InputType.fromJson(jSONObject.getJSONObject("inputType")), inputActionFromTextInputAction(string), jSONObject.isNull(str) ? null : jSONObject.getString(str));
                return configuration;
            }
            throw new JSONException("Configuration JSON missing 'inputAction' property.");
        }

        @androidx.annotation.NonNull
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static java.lang.Integer inputActionFromTextInputAction(@androidx.annotation.NonNull java.lang.String r11) {
            /*
                int r0 = r11.hashCode()
                r1 = 7
                r2 = 5
                r3 = 4
                r4 = 3
                r5 = 2
                r6 = 6
                r7 = 1
                java.lang.Integer r8 = java.lang.Integer.valueOf(r7)
                r9 = 0
                java.lang.Integer r10 = java.lang.Integer.valueOf(r9)
                switch(r0) {
                    case -810971940: goto L_0x0069;
                    case -737377923: goto L_0x005f;
                    case -737089298: goto L_0x0055;
                    case -737080013: goto L_0x004b;
                    case -736940669: goto L_0x0041;
                    case 469250275: goto L_0x0037;
                    case 1241689507: goto L_0x002d;
                    case 1539450297: goto L_0x0023;
                    case 2110497650: goto L_0x0018;
                    default: goto L_0x0017;
                }
            L_0x0017:
                goto L_0x0073
            L_0x0018:
                java.lang.String r0 = "TextInputAction.previous"
                boolean r11 = r11.equals(r0)
                if (r11 == 0) goto L_0x0073
                r11 = 8
                goto L_0x0074
            L_0x0023:
                java.lang.String r0 = "TextInputAction.newline"
                boolean r11 = r11.equals(r0)
                if (r11 == 0) goto L_0x0073
                r11 = 0
                goto L_0x0074
            L_0x002d:
                java.lang.String r0 = "TextInputAction.go"
                boolean r11 = r11.equals(r0)
                if (r11 == 0) goto L_0x0073
                r11 = 4
                goto L_0x0074
            L_0x0037:
                java.lang.String r0 = "TextInputAction.search"
                boolean r11 = r11.equals(r0)
                if (r11 == 0) goto L_0x0073
                r11 = 5
                goto L_0x0074
            L_0x0041:
                java.lang.String r0 = "TextInputAction.send"
                boolean r11 = r11.equals(r0)
                if (r11 == 0) goto L_0x0073
                r11 = 6
                goto L_0x0074
            L_0x004b:
                java.lang.String r0 = "TextInputAction.none"
                boolean r11 = r11.equals(r0)
                if (r11 == 0) goto L_0x0073
                r11 = 1
                goto L_0x0074
            L_0x0055:
                java.lang.String r0 = "TextInputAction.next"
                boolean r11 = r11.equals(r0)
                if (r11 == 0) goto L_0x0073
                r11 = 7
                goto L_0x0074
            L_0x005f:
                java.lang.String r0 = "TextInputAction.done"
                boolean r11 = r11.equals(r0)
                if (r11 == 0) goto L_0x0073
                r11 = 3
                goto L_0x0074
            L_0x0069:
                java.lang.String r0 = "TextInputAction.unspecified"
                boolean r11 = r11.equals(r0)
                if (r11 == 0) goto L_0x0073
                r11 = 2
                goto L_0x0074
            L_0x0073:
                r11 = -1
            L_0x0074:
                switch(r11) {
                    case 0: goto L_0x0097;
                    case 1: goto L_0x0097;
                    case 2: goto L_0x0096;
                    case 3: goto L_0x0091;
                    case 4: goto L_0x008c;
                    case 5: goto L_0x0087;
                    case 6: goto L_0x0082;
                    case 7: goto L_0x007d;
                    case 8: goto L_0x0078;
                    default: goto L_0x0077;
                }
            L_0x0077:
                return r10
            L_0x0078:
                java.lang.Integer r11 = java.lang.Integer.valueOf(r1)
                return r11
            L_0x007d:
                java.lang.Integer r11 = java.lang.Integer.valueOf(r2)
                return r11
            L_0x0082:
                java.lang.Integer r11 = java.lang.Integer.valueOf(r3)
                return r11
            L_0x0087:
                java.lang.Integer r11 = java.lang.Integer.valueOf(r4)
                return r11
            L_0x008c:
                java.lang.Integer r11 = java.lang.Integer.valueOf(r5)
                return r11
            L_0x0091:
                java.lang.Integer r11 = java.lang.Integer.valueOf(r6)
                return r11
            L_0x0096:
                return r10
            L_0x0097:
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: io.flutter.embedding.engine.systemchannels.TextInputChannel.Configuration.inputActionFromTextInputAction(java.lang.String):java.lang.Integer");
        }

        public Configuration(boolean z, boolean z2, @NonNull TextCapitalization textCapitalization2, @NonNull InputType inputType2, @Nullable Integer num, @Nullable String str) {
            this.obscureText = z;
            this.autocorrect = z2;
            this.textCapitalization = textCapitalization2;
            this.inputType = inputType2;
            this.inputAction = num;
            this.actionLabel = str;
        }
    }

    public static class InputType {
        public final boolean isDecimal;
        public final boolean isSigned;
        @NonNull
        public final TextInputType type;

        @NonNull
        public static InputType fromJson(@NonNull JSONObject jSONObject) throws JSONException, NoSuchFieldException {
            return new InputType(TextInputType.fromValue(jSONObject.getString("name")), jSONObject.optBoolean("signed", false), jSONObject.optBoolean("decimal", false));
        }

        public InputType(@NonNull TextInputType textInputType, boolean z, boolean z2) {
            this.type = textInputType;
            this.isSigned = z;
            this.isDecimal = z2;
        }
    }

    public enum TextCapitalization {
        CHARACTERS("TextCapitalization.characters"),
        WORDS("TextCapitalization.words"),
        SENTENCES("TextCapitalization.sentences"),
        NONE("TextCapitalization.none");
        
        @NonNull
        private final String encodedName;

        static TextCapitalization fromValue(@NonNull String str) throws NoSuchFieldException {
            TextCapitalization[] values;
            for (TextCapitalization textCapitalization : values()) {
                if (textCapitalization.encodedName.equals(str)) {
                    return textCapitalization;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("No such TextCapitalization: ");
            sb.append(str);
            throw new NoSuchFieldException(sb.toString());
        }

        private TextCapitalization(@NonNull String str) {
            this.encodedName = str;
        }
    }

    public static class TextEditState {
        public final int selectionEnd;
        public final int selectionStart;
        @NonNull
        public final String text;

        public static TextEditState fromJson(@NonNull JSONObject jSONObject) throws JSONException {
            return new TextEditState(jSONObject.getString(MimeTypes.BASE_TYPE_TEXT), jSONObject.getInt("selectionBase"), jSONObject.getInt("selectionExtent"));
        }

        public TextEditState(@NonNull String str, int i, int i2) {
            this.text = str;
            this.selectionStart = i;
            this.selectionEnd = i2;
        }
    }

    public interface TextInputMethodHandler {
        void clearClient();

        void hide();

        void setClient(int i, @NonNull Configuration configuration);

        void setEditingState(@NonNull TextEditState textEditState);

        void setPlatformViewClient(int i);

        void show();
    }

    public enum TextInputType {
        TEXT("TextInputType.text"),
        DATETIME("TextInputType.datetime"),
        NUMBER("TextInputType.number"),
        PHONE("TextInputType.phone"),
        MULTILINE("TextInputType.multiline"),
        EMAIL_ADDRESS("TextInputType.emailAddress"),
        URL("TextInputType.url"),
        VISIBLE_PASSWORD("TextInputType.visiblePassword");
        
        @NonNull
        private final String encodedName;

        static TextInputType fromValue(@NonNull String str) throws NoSuchFieldException {
            TextInputType[] values;
            for (TextInputType textInputType : values()) {
                if (textInputType.encodedName.equals(str)) {
                    return textInputType;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("No such TextInputType: ");
            sb.append(str);
            throw new NoSuchFieldException(sb.toString());
        }

        private TextInputType(@NonNull String str) {
            this.encodedName = str;
        }
    }

    public TextInputChannel(@NonNull DartExecutor dartExecutor) {
        this.channel = new MethodChannel(dartExecutor, "flutter/textinput", JSONMethodCodec.INSTANCE);
        this.channel.setMethodCallHandler(this.parsingMethodHandler);
    }

    public void updateEditingState(int i, String str, int i2, int i3, int i4, int i5) {
        StringBuilder sb = new StringBuilder();
        sb.append("Sending message to update editing state: \nText: ");
        sb.append(str);
        sb.append("\nSelection start: ");
        sb.append(i2);
        sb.append("\nSelection end: ");
        sb.append(i3);
        sb.append("\nComposing start: ");
        sb.append(i4);
        sb.append("\nComposing end: ");
        sb.append(i5);
        Log.v(TAG, sb.toString());
        HashMap hashMap = new HashMap();
        hashMap.put(MimeTypes.BASE_TYPE_TEXT, str);
        hashMap.put("selectionBase", Integer.valueOf(i2));
        hashMap.put("selectionExtent", Integer.valueOf(i3));
        hashMap.put("composingBase", Integer.valueOf(i4));
        hashMap.put("composingExtent", Integer.valueOf(i5));
        this.channel.invokeMethod("TextInputClient.updateEditingState", Arrays.asList(new Serializable[]{Integer.valueOf(i), hashMap}));
    }

    public void newline(int i) {
        Log.v(TAG, "Sending 'newline' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(new Serializable[]{Integer.valueOf(i), "TextInputAction.newline"}));
    }

    public void go(int i) {
        Log.v(TAG, "Sending 'go' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(new Serializable[]{Integer.valueOf(i), "TextInputAction.go"}));
    }

    public void search(int i) {
        Log.v(TAG, "Sending 'search' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(new Serializable[]{Integer.valueOf(i), "TextInputAction.search"}));
    }

    public void send(int i) {
        Log.v(TAG, "Sending 'send' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(new Serializable[]{Integer.valueOf(i), "TextInputAction.send"}));
    }

    public void done(int i) {
        Log.v(TAG, "Sending 'done' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(new Serializable[]{Integer.valueOf(i), "TextInputAction.done"}));
    }

    public void next(int i) {
        Log.v(TAG, "Sending 'next' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(new Serializable[]{Integer.valueOf(i), "TextInputAction.next"}));
    }

    public void previous(int i) {
        Log.v(TAG, "Sending 'previous' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(new Serializable[]{Integer.valueOf(i), "TextInputAction.previous"}));
    }

    public void unspecifiedAction(int i) {
        Log.v(TAG, "Sending 'unspecified' message.");
        this.channel.invokeMethod("TextInputClient.performAction", Arrays.asList(new Serializable[]{Integer.valueOf(i), "TextInputAction.unspecified"}));
    }

    public void setTextInputMethodHandler(@Nullable TextInputMethodHandler textInputMethodHandler2) {
        this.textInputMethodHandler = textInputMethodHandler2;
    }
}
