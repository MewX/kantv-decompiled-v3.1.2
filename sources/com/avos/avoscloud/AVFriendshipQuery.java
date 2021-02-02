package com.avos.avoscloud;

import com.avos.avoscloud.AVUser;
import com.avos.avoscloud.callback.AVFriendshipCallback;
import java.util.Collection;

public class AVFriendshipQuery<T extends AVUser> {
    QueryConditions conditions;
    Class<T> userClazz;
    String userId;

    AVFriendshipQuery(String str) {
        this(str, null);
    }

    AVFriendshipQuery(String str, Class<T> cls) {
        this.userId = str;
        this.userClazz = cls;
        this.conditions = new QueryConditions();
    }

    /* access modifiers changed from: protected */
    public void getInBackground(String str, boolean z, final AVFriendshipCallback aVFriendshipCallback) {
        String format = String.format("users/%s/followersAndFollowees", new Object[]{str});
        this.conditions.assembleParameters();
        PaasClient.storageInstance().getObject(format, new AVRequestParams(this.conditions.getParameters()), z, null, new GenericObjectCallback() {
            /* JADX WARNING: Removed duplicated region for block: B:25:0x00ab  */
            /* JADX WARNING: Removed duplicated region for block: B:28:0x00b6  */
            /* JADX WARNING: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onSuccess(java.lang.String r10, com.avos.avoscloud.AVException r11) {
                /*
                    r9 = this;
                    boolean r0 = com.avos.avoscloud.AVUtils.isBlankContent(r10)
                    r1 = 0
                    if (r0 == 0) goto L_0x0013
                    com.avos.avoscloud.AVException r11 = new com.avos.avoscloud.AVException
                    r10 = 101(0x65, float:1.42E-43)
                    java.lang.String r0 = "Object is not found."
                    r11.<init>(r10, r0)
                    r0 = r1
                    goto L_0x00b2
                L_0x0013:
                    com.avos.avoscloud.AVFriendship r0 = new com.avos.avoscloud.AVFriendship     // Catch:{ Exception -> 0x00a5 }
                    r0.<init>()     // Catch:{ Exception -> 0x00a5 }
                    java.lang.Class<com.avos.avoscloud.AVFriendship$AVFriendshipResponse> r2 = com.avos.avoscloud.AVFriendship.AVFriendshipResponse.class
                    java.lang.Object r2 = com.alibaba.fastjson.JSON.parseObject(r10, r2)     // Catch:{ Exception -> 0x00a3 }
                    com.avos.avoscloud.AVFriendship$AVFriendshipResponse r2 = (com.avos.avoscloud.AVFriendship.AVFriendshipResponse) r2     // Catch:{ Exception -> 0x00a3 }
                    com.avos.avoscloud.AVFriendshipQuery r3 = com.avos.avoscloud.AVFriendshipQuery.this     // Catch:{ Exception -> 0x00a3 }
                    java.lang.Class<T> r3 = r3.userClazz     // Catch:{ Exception -> 0x00a3 }
                    if (r3 == 0) goto L_0x00b2
                    java.util.List r3 = r0.getFollowers()     // Catch:{ Exception -> 0x00a3 }
                    java.util.List r4 = r0.getFollowees()     // Catch:{ Exception -> 0x00a3 }
                    java.util.List<java.util.Map<java.lang.String, java.lang.Object>> r5 = r2.followers     // Catch:{ Exception -> 0x00a3 }
                    java.util.Iterator r5 = r5.iterator()     // Catch:{ Exception -> 0x00a3 }
                L_0x0034:
                    boolean r6 = r5.hasNext()     // Catch:{ Exception -> 0x00a3 }
                    if (r6 == 0) goto L_0x0073
                    java.lang.Object r6 = r5.next()     // Catch:{ Exception -> 0x00a3 }
                    java.util.Map r6 = (java.util.Map) r6     // Catch:{ Exception -> 0x00a3 }
                    com.avos.avoscloud.AVFriendshipQuery r7 = com.avos.avoscloud.AVFriendshipQuery.this     // Catch:{ Exception -> 0x00a3 }
                    java.lang.Class<T> r7 = r7.userClazz     // Catch:{ Exception -> 0x00a3 }
                    com.avos.avoscloud.AVUser r7 = com.avos.avoscloud.AVUser.newAVUser(r7, r1)     // Catch:{ Exception -> 0x00a3 }
                    java.lang.String r8 = "follower"
                    java.lang.Object r8 = r6.get(r8)     // Catch:{ Exception -> 0x00a3 }
                    java.util.Map r8 = (java.util.Map) r8     // Catch:{ Exception -> 0x00a3 }
                    com.avos.avoscloud.AVUtils.copyPropertiesFromMapToAVObject(r8, r7)     // Catch:{ Exception -> 0x00a3 }
                    r3.add(r7)     // Catch:{ Exception -> 0x00a3 }
                    com.avos.avoscloud.AVUser r7 = r0.getUser()     // Catch:{ Exception -> 0x00a3 }
                    if (r7 != 0) goto L_0x0034
                    com.avos.avoscloud.AVFriendshipQuery r7 = com.avos.avoscloud.AVFriendshipQuery.this     // Catch:{ Exception -> 0x00a3 }
                    java.lang.Class<T> r7 = r7.userClazz     // Catch:{ Exception -> 0x00a3 }
                    com.avos.avoscloud.AVUser r7 = com.avos.avoscloud.AVUser.newAVUser(r7, r1)     // Catch:{ Exception -> 0x00a3 }
                    java.lang.String r8 = "user"
                    java.lang.Object r6 = r6.get(r8)     // Catch:{ Exception -> 0x00a3 }
                    java.util.Map r6 = (java.util.Map) r6     // Catch:{ Exception -> 0x00a3 }
                    com.avos.avoscloud.AVUtils.copyPropertiesFromMapToAVObject(r6, r7)     // Catch:{ Exception -> 0x00a3 }
                    r0.setUser(r7)     // Catch:{ Exception -> 0x00a3 }
                    goto L_0x0034
                L_0x0073:
                    r0.setFollowers(r3)     // Catch:{ Exception -> 0x00a3 }
                    java.util.List<java.util.Map<java.lang.String, java.lang.Object>> r2 = r2.followees     // Catch:{ Exception -> 0x00a3 }
                    java.util.Iterator r2 = r2.iterator()     // Catch:{ Exception -> 0x00a3 }
                L_0x007c:
                    boolean r3 = r2.hasNext()     // Catch:{ Exception -> 0x00a3 }
                    if (r3 == 0) goto L_0x009f
                    java.lang.Object r3 = r2.next()     // Catch:{ Exception -> 0x00a3 }
                    java.util.Map r3 = (java.util.Map) r3     // Catch:{ Exception -> 0x00a3 }
                    com.avos.avoscloud.AVFriendshipQuery r5 = com.avos.avoscloud.AVFriendshipQuery.this     // Catch:{ Exception -> 0x00a3 }
                    java.lang.Class<T> r5 = r5.userClazz     // Catch:{ Exception -> 0x00a3 }
                    com.avos.avoscloud.AVUser r5 = com.avos.avoscloud.AVUser.newAVUser(r5, r1)     // Catch:{ Exception -> 0x00a3 }
                    java.lang.String r6 = "followee"
                    java.lang.Object r3 = r3.get(r6)     // Catch:{ Exception -> 0x00a3 }
                    java.util.Map r3 = (java.util.Map) r3     // Catch:{ Exception -> 0x00a3 }
                    com.avos.avoscloud.AVUtils.copyPropertiesFromMapToAVObject(r3, r5)     // Catch:{ Exception -> 0x00a3 }
                    r4.add(r5)     // Catch:{ Exception -> 0x00a3 }
                    goto L_0x007c
                L_0x009f:
                    r0.setFollowees(r4)     // Catch:{ Exception -> 0x00a3 }
                    goto L_0x00b2
                L_0x00a3:
                    r2 = move-exception
                    goto L_0x00a7
                L_0x00a5:
                    r2 = move-exception
                    r0 = r1
                L_0x00a7:
                    com.avos.avoscloud.callback.AVFriendshipCallback r3 = r10
                    if (r3 == 0) goto L_0x00b2
                    com.avos.avoscloud.AVException r10 = com.avos.avoscloud.AVErrorUtils.createException(r2, r10)
                    r3.internalDone(r1, r10)
                L_0x00b2:
                    com.avos.avoscloud.callback.AVFriendshipCallback r10 = r10
                    if (r10 == 0) goto L_0x00b9
                    r10.internalDone(r0, r11)
                L_0x00b9:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVFriendshipQuery.AnonymousClass1.onSuccess(java.lang.String, com.avos.avoscloud.AVException):void");
            }

            public void onFailure(Throwable th, String str) {
                AVFriendshipCallback aVFriendshipCallback = aVFriendshipCallback;
                if (aVFriendshipCallback != null) {
                    aVFriendshipCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        });
    }

    public AVFriendship get() throws AVException {
        final Object[] objArr = {null};
        getInBackground(this.userId, true, new AVFriendshipCallback() {
            /* access modifiers changed from: protected */
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVFriendship aVFriendship, AVException aVException) {
                if (aVException == null) {
                    objArr[0] = aVFriendship;
                } else {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (!AVExceptionHolder.exists()) {
            return (AVFriendship) objArr[0];
        }
        throw AVExceptionHolder.remove();
    }

    public void getInBackground(AVFriendshipCallback aVFriendshipCallback) {
        getInBackground(this.userId, false, aVFriendshipCallback);
    }

    public int getLimit() {
        return this.conditions.getLimit();
    }

    public AVFriendshipQuery<T> setLimit(int i) {
        this.conditions.setLimit(i);
        return this;
    }

    public AVFriendshipQuery<T> limit(int i) {
        setLimit(i);
        return this;
    }

    public AVFriendshipQuery<T> skip(int i) {
        setSkip(i);
        return this;
    }

    public int getSkip() {
        return this.conditions.getSkip();
    }

    public AVFriendshipQuery<T> setSkip(int i) {
        this.conditions.setSkip(i);
        return this;
    }

    public String getOrder() {
        return this.conditions.getOrder();
    }

    public AVFriendshipQuery<T> setOrder(String str) {
        this.conditions.setOrder(str);
        return this;
    }

    public AVFriendshipQuery<T> order(String str) {
        setOrder(str);
        return this;
    }

    public AVFriendshipQuery<T> addAscendingOrder(String str) {
        this.conditions.addAscendingOrder(str);
        return this;
    }

    public AVFriendshipQuery<T> addDescendingOrder(String str) {
        this.conditions.addDescendingOrder(str);
        return this;
    }

    public AVFriendshipQuery<T> include(String str) {
        this.conditions.include(str);
        return this;
    }

    public AVFriendshipQuery<T> selectKeys(Collection<String> collection) {
        this.conditions.selectKeys(collection);
        return this;
    }

    public AVFriendshipQuery<T> orderByAscending(String str) {
        this.conditions.orderByAscending(str);
        return this;
    }

    public AVFriendshipQuery<T> orderByDescending(String str) {
        this.conditions.orderByDescending(str);
        return this;
    }

    public AVFriendshipQuery<T> whereContainedIn(String str, Collection<? extends Object> collection) {
        this.conditions.whereContainedIn(str, collection);
        return this;
    }

    public AVFriendshipQuery<T> whereContains(String str, String str2) {
        this.conditions.whereContains(str, str2);
        return this;
    }

    public AVFriendshipQuery<T> whereSizeEqual(String str, int i) {
        this.conditions.whereSizeEqual(str, i);
        return this;
    }

    public AVFriendshipQuery<T> whereContainsAll(String str, Collection<?> collection) {
        this.conditions.whereContainsAll(str, collection);
        return this;
    }

    public AVFriendshipQuery<T> whereDoesNotExist(String str) {
        this.conditions.whereDoesNotExist(str);
        return this;
    }

    public AVFriendshipQuery<T> whereEndsWith(String str, String str2) {
        this.conditions.whereEndsWith(str, str2);
        return this;
    }

    public AVFriendshipQuery<T> whereEqualTo(String str, Object obj) {
        boolean z = obj instanceof AVObject;
        String str2 = QueryOperation.EQUAL_OP;
        if (z) {
            addWhereItem(str, str2, AVUtils.mapFromPointerObject((AVObject) obj));
        } else {
            addWhereItem(str, str2, obj);
        }
        return this;
    }

    private AVFriendshipQuery<T> addWhereItem(QueryOperation queryOperation) {
        this.conditions.addWhereItem(queryOperation);
        return this;
    }

    private AVFriendshipQuery<T> addOrItems(QueryOperation queryOperation) {
        this.conditions.addOrItems(queryOperation);
        return this;
    }

    /* access modifiers changed from: protected */
    public AVFriendshipQuery<T> addWhereItem(String str, String str2, Object obj) {
        return addWhereItem(new QueryOperation(str, str2, obj));
    }

    public AVFriendshipQuery<T> whereExists(String str) {
        this.conditions.whereExists(str);
        return this;
    }

    public AVFriendshipQuery<T> whereGreaterThan(String str, Object obj) {
        this.conditions.whereGreaterThan(str, obj);
        return this;
    }

    public AVFriendshipQuery<T> whereGreaterThanOrEqualTo(String str, Object obj) {
        this.conditions.whereGreaterThanOrEqualTo(str, obj);
        return this;
    }

    public AVFriendshipQuery<T> whereLessThan(String str, Object obj) {
        this.conditions.whereLessThan(str, obj);
        return this;
    }

    public AVFriendshipQuery<T> whereLessThanOrEqualTo(String str, Object obj) {
        this.conditions.whereLessThanOrEqualTo(str, obj);
        return this;
    }

    public AVFriendshipQuery<T> whereMatches(String str, String str2) {
        this.conditions.whereMatches(str, str2);
        return this;
    }

    public AVFriendshipQuery<T> whereMatches(String str, String str2, String str3) {
        this.conditions.whereMatches(str, str2, str3);
        return this;
    }

    public AVFriendshipQuery<T> whereNear(String str, AVGeoPoint aVGeoPoint) {
        this.conditions.whereNear(str, aVGeoPoint);
        return this;
    }

    public AVFriendshipQuery<T> whereNotContainedIn(String str, Collection<? extends Object> collection) {
        this.conditions.whereNotContainedIn(str, collection);
        return this;
    }

    public AVFriendshipQuery<T> whereNotEqualTo(String str, Object obj) {
        this.conditions.whereNotEqualTo(str, obj);
        return this;
    }

    public AVFriendshipQuery<T> whereStartsWith(String str, String str2) {
        this.conditions.whereStartsWith(str, str2);
        return this;
    }

    public AVFriendshipQuery<T> whereWithinGeoBox(String str, AVGeoPoint aVGeoPoint, AVGeoPoint aVGeoPoint2) {
        this.conditions.whereWithinGeoBox(str, aVGeoPoint, aVGeoPoint2);
        return this;
    }

    public AVFriendshipQuery<T> whereWithinKilometers(String str, AVGeoPoint aVGeoPoint, double d) {
        this.conditions.whereWithinKilometers(str, aVGeoPoint, d);
        return this;
    }

    public AVFriendshipQuery<T> whereWithinMiles(String str, AVGeoPoint aVGeoPoint, double d) {
        this.conditions.whereWithinMiles(str, aVGeoPoint, d);
        return this;
    }

    public AVFriendshipQuery<T> whereWithinRadians(String str, AVGeoPoint aVGeoPoint, double d) {
        this.conditions.whereWithinRadians(str, aVGeoPoint, d);
        return this;
    }
}
