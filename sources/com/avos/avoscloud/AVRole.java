package com.avos.avoscloud;

import android.os.Parcelable.Creator;
import com.avos.avoscloud.AVObject.AVObjectCreator;

public final class AVRole extends AVObject {
    public static final String AVROLE_ENDPOINT = "roles";
    public static final transient Creator CREATOR = AVObjectCreator.instance;
    public static final String className = "_Role";
    private String name;

    public AVRole() {
        super(className);
    }

    public AVRole(String str) {
        super(className);
        this.name = str;
        this.acl = PaasClient.storageInstance().getDefaultACL();
        if (this.acl != null) {
            put("name", str);
            return;
        }
        throw new IllegalStateException("There is no default ACL,please provide an ACL for the role with AVRole(String name, AVACL acl) constructor.");
    }

    public AVRole(String str, AVACL avacl) {
        super(className);
        this.name = str;
        if (avacl != null) {
            this.acl = avacl;
            put("name", str);
            return;
        }
        throw new IllegalArgumentException("Null ACL.");
    }

    public String getName() {
        return this.name;
    }

    public static AVQuery<AVRole> getQuery() {
        return new AVQuery<>(AVPowerfulUtils.getAVClassName(AVRole.class.getSimpleName()));
    }

    public AVRelation getRoles() {
        return super.getRelation(AVROLE_ENDPOINT);
    }

    public AVRelation getUsers() {
        return super.getRelation(AVUser.AVUSER_ENDPOINT);
    }

    public void put(String str, Object obj) {
        super.put(str, obj);
    }

    public void setName(String str) {
        this.name = str;
        put("name", str);
    }
}
