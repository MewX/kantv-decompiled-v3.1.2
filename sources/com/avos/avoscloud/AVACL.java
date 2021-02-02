package com.avos.avoscloud;

import java.util.HashMap;
import java.util.Map;

public class AVACL {
    private static String publicTag = "*";
    private static String readTag = "read";
    private static String rolePrefix = "role:";
    private static String writeTag = "write";
    private final Map<String, Object> permissionsById = new HashMap();

    public AVACL() {
    }

    public AVACL(Map<String, Object> map) {
        if (map != null) {
            this.permissionsById.putAll(map);
        }
    }

    AVACL(AVACL avacl) {
        this.permissionsById.putAll(avacl.permissionsById);
    }

    public AVACL(AVUser aVUser) {
        setReadAccess(aVUser, true);
        setWriteAccess(aVUser, true);
    }

    private Map<String, Object> mapForKey(String str, boolean z) {
        Map<String, Object> map = (Map) this.permissionsById.get(str);
        if (map != null || !z) {
            return map;
        }
        HashMap hashMap = new HashMap();
        this.permissionsById.put(str, hashMap);
        return hashMap;
    }

    private void allowRead(boolean z, String str) {
        Map mapForKey = mapForKey(str, z);
        if (z) {
            mapForKey.put(readTag, Boolean.valueOf(true));
        } else if (mapForKey != null) {
            mapForKey.remove(readTag);
        }
    }

    private boolean isReadAllowed(String str) {
        Map mapForKey = mapForKey(str, false);
        if (mapForKey == null || ((Boolean) mapForKey.get(readTag)) == null || !((Boolean) mapForKey.get(readTag)).booleanValue()) {
            return false;
        }
        return true;
    }

    private void allowWrite(boolean z, String str) {
        Map mapForKey = mapForKey(str, z);
        if (z) {
            mapForKey.put(writeTag, Boolean.valueOf(z));
        } else if (mapForKey != null) {
            mapForKey.remove(writeTag);
        }
    }

    private boolean isWriteAllowed(String str) {
        Map mapForKey = mapForKey(str, false);
        if (mapForKey == null || ((Boolean) mapForKey.get(writeTag)) == null || !((Boolean) mapForKey.get(writeTag)).booleanValue()) {
            return false;
        }
        return true;
    }

    public boolean getPublicReadAccess() {
        return isReadAllowed(publicTag);
    }

    public boolean getPublicWriteAccess() {
        return isWriteAllowed(publicTag);
    }

    public boolean getReadAccess(AVUser aVUser) {
        return getReadAccess(aVUser.getObjectId());
    }

    public boolean getReadAccess(String str) {
        return isReadAllowed(str);
    }

    private String roleName(String str) {
        return String.format("role:%s", new Object[]{str});
    }

    public boolean getRoleReadAccess(AVRole aVRole) {
        return getRoleReadAccess(roleName(aVRole.getName()));
    }

    public boolean getRoleReadAccess(String str) {
        return isReadAllowed(str);
    }

    public boolean getRoleWriteAccess(AVRole aVRole) {
        return getRoleWriteAccess(roleName(aVRole.getName()));
    }

    public boolean getRoleWriteAccess(String str) {
        return isWriteAllowed(str);
    }

    public boolean getWriteAccess(AVUser aVUser) {
        return getWriteAccess(aVUser.getObjectId());
    }

    public boolean getWriteAccess(String str) {
        return isWriteAllowed(str);
    }

    public static void setDefaultACL(AVACL avacl, boolean z) {
        if (avacl != null) {
            PaasClient.storageInstance().setDefaultACL(avacl);
            if (z) {
                AVUser currentUser = AVUser.getCurrentUser();
                AVACL defaultACL = PaasClient.storageInstance().getDefaultACL();
                defaultACL.setReadAccess(currentUser, true);
                defaultACL.setWriteAccess(currentUser, true);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Null ACL.");
    }

    public static AVACL parseACLWithPublicAccess(boolean z, boolean z2) {
        AVACL avacl = new AVACL();
        avacl.setPublicReadAccess(z);
        avacl.setPublicWriteAccess(z2);
        return avacl;
    }

    public void setPublicReadAccess(boolean z) {
        allowRead(z, publicTag);
    }

    public void setPublicWriteAccess(boolean z) {
        allowWrite(z, publicTag);
    }

    public void setReadAccess(AVUser aVUser, boolean z) {
        setReadAccess(aVUser.getObjectId(), z);
    }

    public void setReadAccess(String str, boolean z) {
        allowRead(z, str);
    }

    public void setRoleReadAccess(AVRole aVRole, boolean z) {
        setRoleReadAccess(aVRole.getName(), z);
    }

    public void setRoleReadAccess(String str, boolean z) {
        allowRead(z, getRoleTagKey(str));
    }

    public void setRoleWriteAccess(AVRole aVRole, boolean z) {
        setRoleWriteAccess(aVRole.getName(), z);
    }

    public void setRoleWriteAccess(String str, boolean z) {
        allowWrite(z, getRoleTagKey(str));
    }

    public void setWriteAccess(AVUser aVUser, boolean z) {
        setWriteAccess(aVUser.getObjectId(), z);
    }

    public void setWriteAccess(String str, boolean z) {
        allowWrite(z, str);
    }

    /* access modifiers changed from: 0000 */
    public Map<String, Object> getPermissionsById() {
        return this.permissionsById;
    }

    public Map<String, Object> getACLMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("ACL", getPermissionsById());
        return hashMap;
    }

    private static String getRoleTagKey(String str) {
        if (!AVUtils.isBlankString(str) && str.startsWith(rolePrefix)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(rolePrefix);
        sb.append(str);
        return sb.toString();
    }
}
