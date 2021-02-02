package com.avos.avoscloud;

import com.avos.avoscloud.im.v2.Conversation;
import java.util.HashMap;
import java.util.Map;

public class AVSMSOption {
    private String applicationName;
    private Map<String, Object> envMap;
    private String operation;
    private String signatureName;
    private AVSMS_TYPE smsType = null;
    private String templateName;
    private int ttl;
    private String validationToken;

    public enum AVSMS_TYPE {
        VOICE_SMS("voice"),
        TEST_SMS("sms");
        
        private String name;

        private AVSMS_TYPE(String str) {
            this.name = str;
        }

        public String toString() {
            return this.name;
        }
    }

    /* access modifiers changed from: 0000 */
    public Map<String, Object> getOptionMaps() {
        HashMap hashMap = new HashMap();
        fillMap("name", this.applicationName, (Map<String, Object>) hashMap);
        fillMap("op", this.operation, (Map<String, Object>) hashMap);
        fillMap("template", this.templateName, (Map<String, Object>) hashMap);
        fillMap("sign", this.signatureName, (Map<String, Object>) hashMap);
        fillMap(Conversation.TEMPORARYTTL, this.ttl, (Map<String, Object>) hashMap);
        fillMap(AVUser.SMS_VALIDATE_TOKEN, this.validationToken, (Map<String, Object>) hashMap);
        AVSMS_TYPE avsms_type = this.smsType;
        if (avsms_type != null) {
            fillMap("smsType", avsms_type.toString(), (Map<String, Object>) hashMap);
        }
        Map<String, Object> map = this.envMap;
        if (map != null && !map.isEmpty()) {
            hashMap.putAll(this.envMap);
        }
        return hashMap;
    }

    private Map<String, Object> fillMap(String str, String str2, Map<String, Object> map) {
        if (!AVUtils.isBlankString(str2)) {
            map.put(str, str2);
        }
        return map;
    }

    private Map<String, Object> fillMap(String str, int i, Map<String, Object> map) {
        if (i > 0) {
            map.put(str, Integer.valueOf(i));
        }
        return map;
    }

    public void setApplicationName(String str) {
        this.applicationName = str;
    }

    public void setOperation(String str) {
        this.operation = str;
    }

    public void setTemplateName(String str) {
        this.templateName = str;
    }

    public void setSignatureName(String str) {
        this.signatureName = str;
    }

    public void setEnvMap(Map<String, Object> map) {
        this.envMap = map;
    }

    public void setTtl(int i) {
        this.ttl = i;
    }

    public void setSmsType(AVSMS_TYPE avsms_type) {
        this.smsType = avsms_type;
    }

    public void setValidationToken(String str) {
        this.validationToken = str;
    }
}
