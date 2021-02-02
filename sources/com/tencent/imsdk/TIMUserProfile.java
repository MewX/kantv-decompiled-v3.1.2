package com.tencent.imsdk;

import android.text.TextUtils;
import com.tencent.imsdk.log.QLog;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class TIMUserProfile implements Serializable {
    public static final String TIM_PROFILE_TYPE_KEY_ALLOWTYPE = "Tag_Profile_IM_AllowType";
    public static final String TIM_PROFILE_TYPE_KEY_BIRTHDAY = "Tag_Profile_IM_BirthDay";
    public static final String TIM_PROFILE_TYPE_KEY_CUSTOM_PREFIX = "Tag_Profile_Custom_";
    public static final String TIM_PROFILE_TYPE_KEY_FACEURL = "Tag_Profile_IM_Image";
    public static final String TIM_PROFILE_TYPE_KEY_GENDER = "Tag_Profile_IM_Gender";
    public static final String TIM_PROFILE_TYPE_KEY_LANGUAGE = "Tag_Profile_IM_Language";
    public static final String TIM_PROFILE_TYPE_KEY_LEVEL = "Tag_Profile_IM_Level";
    public static final String TIM_PROFILE_TYPE_KEY_LOCATION = "Tag_Profile_IM_Location";
    public static final String TIM_PROFILE_TYPE_KEY_NICK = "Tag_Profile_IM_Nick";
    public static final String TIM_PROFILE_TYPE_KEY_ROLE = "Tag_Profile_IM_Role";
    public static final String TIM_PROFILE_TYPE_KEY_SELFSIGNATURE = "Tag_Profile_IM_SelfSignature";
    private String allowType;
    private int birthday = 0;
    private Map<String, byte[]> customInfo;
    private Map<String, Long> customInfoUint;
    private String faceUrl;
    private int gender = 0;
    private String identifier;
    private int language = 0;
    private int level;
    private String location;
    private String nickName;
    private int role;
    private String selfSignature;

    public TIMUserProfile() {
        String str = "";
        this.identifier = str;
        this.nickName = str;
        this.allowType = str;
        this.faceUrl = str;
        this.selfSignature = str;
        this.location = str;
        this.role = 0;
        this.level = 0;
        this.customInfo = new HashMap();
        this.customInfoUint = new HashMap();
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public String getNickName() {
        return this.nickName;
    }

    public String getFaceUrl() {
        return this.faceUrl;
    }

    public String getSelfSignature() {
        return this.selfSignature;
    }

    public String getAllowType() {
        StringBuilder sb = new StringBuilder();
        sb.append("allowType ");
        sb.append(this.allowType);
        QLog.i("TIMUserProfile", sb.toString());
        String str = this.allowType;
        String str2 = TIMFriendAllowType.TIM_FRIEND_ALLOW_ANY;
        if (str.equals(str2)) {
            return str2;
        }
        String str3 = this.allowType;
        String str4 = TIMFriendAllowType.TIM_FRIEND_DENY_ANY;
        if (str3.equals(str4)) {
            return str4;
        }
        String str5 = this.allowType;
        String str6 = TIMFriendAllowType.TIM_FRIEND_NEED_CONFIRM;
        return str5.equals(str6) ? str6 : TIMFriendAllowType.TIM_FRIEND_INVALID;
    }

    public Map<String, byte[]> getCustomInfo() {
        return this.customInfo;
    }

    /* access modifiers changed from: 0000 */
    public void addCustomInfo(String str, byte[] bArr) {
        this.customInfo.put(str, bArr);
    }

    public int getGender() {
        int i = this.gender;
        if (i == 1 || i == 2) {
            return i;
        }
        return 0;
    }

    /* access modifiers changed from: 0000 */
    public void setGender(int i) {
        this.gender = i;
    }

    public long getBirthday() {
        return (long) this.birthday;
    }

    /* access modifiers changed from: 0000 */
    public void setBirthday(int i) {
        this.birthday = i;
    }

    public long getLanguage() {
        return (long) this.language;
    }

    /* access modifiers changed from: 0000 */
    public void setLanguage(int i) {
        this.language = i;
    }

    public String getLocation() {
        return this.location;
    }

    /* access modifiers changed from: 0000 */
    public void setLocation(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.location = str;
        }
    }

    public long getLevel() {
        return (long) this.level;
    }

    public void setLevel(int i) {
        this.level = i;
    }

    public long getRole() {
        return (long) this.role;
    }

    public void setRole(int i) {
        this.role = i;
    }

    public Map<String, Long> getCustomInfoUint() {
        return this.customInfoUint;
    }

    /* access modifiers changed from: 0000 */
    public void addCustomInfoUint(String str, long j) {
        this.customInfoUint.put(str, Long.valueOf(j));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TIMUserProfile{\n");
        sb.append("\t\tidentifier='");
        sb.append(getIdentifier());
        String str = "',\n";
        sb.append(str);
        sb.append("\t\tnickName='");
        sb.append(getNickName());
        sb.append(str);
        sb.append("\t\tallowType='");
        sb.append(getAllowType());
        sb.append(str);
        sb.append("\t\tfaceUrl='");
        sb.append(getFaceUrl());
        sb.append(str);
        sb.append("\t\tselfSignature='");
        sb.append(getSelfSignature());
        sb.append(str);
        sb.append("\t\tlevel='");
        sb.append(getLevel());
        sb.append(str);
        sb.append("\t\trole='");
        sb.append(getRole());
        sb.append(str);
        String str2 = "='";
        String str3 = "\t\t";
        if (!getCustomInfo().isEmpty()) {
            for (Entry entry : getCustomInfo().entrySet()) {
                sb.append(str3);
                sb.append((String) entry.getKey());
                sb.append(str2);
                sb.append(new String((byte[]) entry.getValue()));
                sb.append(str);
            }
        }
        if (!getCustomInfoUint().isEmpty()) {
            for (Entry entry2 : getCustomInfoUint().entrySet()) {
                sb.append(str3);
                sb.append((String) entry2.getKey());
                sb.append(str2);
                sb.append(entry2.getValue());
                sb.append(str);
            }
        }
        sb.append("}");
        return sb.toString();
    }
}
