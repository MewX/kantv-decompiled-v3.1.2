package com.avos.avoscloud;

import com.alibaba.fastjson.annotation.JSONType;
import com.avos.avoscloud.AVObject;
import java.util.Collection;
import java.util.HashMap;

@JSONType(ignores = {"query", "parent"})
public class AVRelation<T extends AVObject> {
    private String key;
    private AVObject parent;
    private String targetClass;

    public AVRelation() {
    }

    AVRelation(AVObject aVObject, String str) {
        this.parent = aVObject;
        this.key = str;
    }

    AVRelation(String str) {
        this(null, null);
        this.targetClass = str;
    }

    public void add(T t) {
        if (t != null) {
            if (AVUtils.isBlankString(this.targetClass)) {
                this.targetClass = t.getClassName();
            }
            if (AVUtils.isBlankString(this.targetClass) || this.targetClass.equals(t.getClassName())) {
                this.parent.addRelation(t, this.key, true);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Could not add class '");
            sb.append(t.getClassName());
            sb.append("' to this relation,expect class is '");
            sb.append(this.targetClass);
            sb.append("'");
            throw new IllegalArgumentException(sb.toString());
        }
        throw new IllegalArgumentException("null AVObject");
    }

    public void addAll(Collection<T> collection) {
        if (collection != null) {
            for (T add : collection) {
                add(add);
            }
        }
    }

    public void remove(AVObject aVObject) {
        this.parent.removeRelation(aVObject, this.key, true);
    }

    public AVQuery<T> getQuery() {
        return getQuery(null);
    }

    public AVQuery<T> getQuery(Class<T> cls) {
        if (getParent() == null || AVUtils.isBlankString(getParent().getObjectId())) {
            throw new IllegalStateException("unable to encode an association with an unsaved AVObject");
        }
        AnonymousClass1 r0 = new HashMap<String, Object>() {
            {
                put("object", AVUtils.mapFromPointerObject(AVRelation.this.getParent()));
                put("key", AVRelation.this.getKey());
            }
        };
        String str = "$relatedTo";
        new HashMap().put(str, r0);
        String targetClass2 = getTargetClass();
        if (AVUtils.isBlankString(getTargetClass())) {
            targetClass2 = getParent().getClassName();
        }
        AVQuery<T> aVQuery = new AVQuery<>(targetClass2, cls);
        aVQuery.addWhereItem(str, null, r0);
        if (AVUtils.isBlankString(getTargetClass())) {
            aVQuery.getParameters().put("redirectClassNameForKey", getKey());
        }
        return aVQuery;
    }

    public static <M extends AVObject> AVQuery<M> reverseQuery(String str, String str2, AVObject aVObject) {
        AVQuery<M> aVQuery = new AVQuery<>(str);
        aVQuery.whereEqualTo(str2, AVUtils.mapFromPointerObject(aVObject));
        return aVQuery;
    }

    public static <M extends AVObject> AVQuery<M> reverseQuery(Class<M> cls, String str, AVObject aVObject) {
        AVQuery<M> aVQuery = new AVQuery<>(AVObject.getSubClassName(cls), cls);
        aVQuery.whereEqualTo(str, AVUtils.mapFromPointerObject(aVObject));
        return aVQuery;
    }

    public String getKey() {
        return this.key;
    }

    /* access modifiers changed from: 0000 */
    public void setKey(String str) {
        this.key = str;
    }

    /* access modifiers changed from: 0000 */
    public void setParent(AVObject aVObject) {
        this.parent = aVObject;
    }

    public AVObject getParent() {
        return this.parent;
    }

    public void setTargetClass(String str) {
        this.targetClass = str;
    }

    public String getTargetClass() {
        return this.targetClass;
    }
}
