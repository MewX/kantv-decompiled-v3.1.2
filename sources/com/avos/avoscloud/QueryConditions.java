package com.avos.avoscloud;

import com.avos.avoscloud.im.v2.Conversation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class QueryConditions {
    private List<String> include = new LinkedList();
    private int limit;
    private String order;
    private Map<String, String> parameters = new HashMap();
    private Set<String> selectedKeys;
    private int skip = -1;
    private boolean trace;
    Map<String, List<QueryOperation>> where = new HashMap();

    public QueryConditions clone() {
        QueryConditions queryConditions = new QueryConditions();
        queryConditions.where.putAll(this.where);
        queryConditions.include.addAll(this.include);
        queryConditions.parameters.putAll(this.parameters);
        queryConditions.selectKeys(this.selectedKeys);
        queryConditions.setLimit(this.limit);
        queryConditions.setTrace(this.trace);
        queryConditions.setSkip(this.skip);
        queryConditions.setOrder(this.order);
        return queryConditions;
    }

    public int getLimit() {
        return this.limit;
    }

    public void setLimit(int i) {
        this.limit = i;
    }

    public int getSkip() {
        return this.skip;
    }

    public void setSkip(int i) {
        this.skip = i;
    }

    public String getOrder() {
        return this.order;
    }

    public void setOrder(String str) {
        this.order = str;
    }

    public List<String> getInclude() {
        return this.include;
    }

    public void setInclude(List<String> list) {
        this.include = list;
    }

    public Set<String> getSelectedKeys() {
        return this.selectedKeys;
    }

    public void setSelectedKeys(Set<String> set) {
        this.selectedKeys = set;
    }

    public Map<String, List<QueryOperation>> getWhere() {
        return this.where;
    }

    public void setWhere(Map<String, List<QueryOperation>> map) {
        this.where = map;
    }

    public Map<String, String> getParameters() {
        return this.parameters;
    }

    public void setParameters(Map<String, String> map) {
        this.parameters = map;
    }

    public boolean isTrace() {
        return this.trace;
    }

    public void setTrace(boolean z) {
        this.trace = z;
    }

    public void addAscendingOrder(String str) {
        if (AVUtils.isBlankString(this.order)) {
            orderByAscending(str);
            return;
        }
        this.order = String.format("%s,%s", new Object[]{this.order, str});
    }

    public void orderByAscending(String str) {
        this.order = String.format("%s", new Object[]{str});
    }

    public void addDescendingOrder(String str) {
        if (AVUtils.isBlankString(this.order)) {
            orderByDescending(str);
            return;
        }
        this.order = String.format("%s,-%s", new Object[]{this.order, str});
    }

    public void orderByDescending(String str) {
        this.order = String.format("-%s", new Object[]{str});
    }

    public void include(String str) {
        this.include.add(str);
    }

    public void selectKeys(Collection<String> collection) {
        if (this.selectedKeys == null) {
            this.selectedKeys = new HashSet();
        }
        if (collection != null) {
            this.selectedKeys.addAll(collection);
        }
    }

    public Map<String, Object> compileWhereOperationMap() {
        HashMap hashMap = new HashMap();
        for (Entry entry : this.where.entrySet()) {
            List<QueryOperation> list = (List) entry.getValue();
            String str = (String) entry.getKey();
            String str2 = QueryOperation.OR_OP;
            if (str.equals(str2)) {
                ArrayList arrayList = new ArrayList();
                for (QueryOperation result : list) {
                    arrayList.add(result.toResult());
                }
                List list2 = (List) hashMap.get(str2);
                if (list2 != null) {
                    list2.addAll(arrayList);
                } else {
                    hashMap.put(str2, arrayList);
                }
            } else {
                String str3 = QueryOperation.AND_OP;
                if (str.equals(str3)) {
                    ArrayList arrayList2 = new ArrayList();
                    for (QueryOperation value : list) {
                        arrayList2.add(value.getValue());
                    }
                    List list3 = (List) hashMap.get(str3);
                    if (list3 != null) {
                        list3.addAll(arrayList2);
                    } else {
                        hashMap.put(str3, arrayList2);
                    }
                } else {
                    int size = list.size();
                    if (size != 0) {
                        if (size != 1) {
                            ArrayList arrayList3 = new ArrayList();
                            HashMap hashMap2 = new HashMap();
                            boolean z = false;
                            for (QueryOperation queryOperation : list) {
                                arrayList3.add(queryOperation.toResult(str));
                                if (QueryOperation.EQUAL_OP.equals(queryOperation.op)) {
                                    z = true;
                                }
                                if (!z) {
                                    hashMap2.putAll((Map) queryOperation.toResult());
                                }
                            }
                            if (z) {
                                List list4 = (List) hashMap.get(str3);
                                if (list4 != null) {
                                    list4.addAll(arrayList3);
                                } else {
                                    hashMap.put(str3, arrayList3);
                                }
                            } else {
                                hashMap.put(str, hashMap2);
                            }
                        } else {
                            for (QueryOperation result2 : list) {
                                hashMap.put(str, result2.toResult());
                            }
                        }
                    }
                }
            }
        }
        return hashMap;
    }

    public Map<String, String> assembleParameters() {
        if (this.where.keySet().size() > 0) {
            this.parameters.put(Conversation.QUERY_PARAM_WHERE, AVUtils.restfulServerData(compileWhereOperationMap()));
        }
        int i = this.limit;
        if (i > 0) {
            this.parameters.put("limit", Integer.toString(i));
        }
        int i2 = this.skip;
        if (i2 >= 0) {
            this.parameters.put(Conversation.QUERY_PARAM_OFFSET, Integer.toString(i2));
        }
        if (!AVUtils.isBlankString(this.order)) {
            this.parameters.put("order", this.order);
        }
        String str = ",";
        if (!AVUtils.isEmptyList(this.include)) {
            this.parameters.put("include", AVUtils.joinCollection(this.include, str));
        }
        Set<String> set = this.selectedKeys;
        if (set != null && set.size() > 0) {
            this.parameters.put("keys", AVUtils.joinCollection(this.selectedKeys, str));
        }
        return this.parameters;
    }

    public void addWhereItem(QueryOperation queryOperation) {
        List list = (List) this.where.get(queryOperation.key);
        if (list == null) {
            list = new LinkedList();
            this.where.put(queryOperation.key, list);
        }
        removeDuplications(queryOperation, list);
        list.add(queryOperation);
    }

    public void addWhereItem(String str, String str2, Object obj) {
        addWhereItem(new QueryOperation(str, str2, obj));
    }

    private void removeDuplications(QueryOperation queryOperation, List<QueryOperation> list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((QueryOperation) it.next()).sameOp(queryOperation)) {
                it.remove();
            }
        }
    }

    public void addOrItems(QueryOperation queryOperation) {
        Map<String, List<QueryOperation>> map = this.where;
        String str = QueryOperation.OR_OP;
        List list = (List) map.get(str);
        if (list == null) {
            list = new LinkedList();
            this.where.put(str, list);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((QueryOperation) it.next()).equals(queryOperation)) {
                it.remove();
            }
        }
        list.add(queryOperation);
    }

    public void addAndItems(QueryConditions queryConditions) {
        Map compileWhereOperationMap = queryConditions.compileWhereOperationMap();
        String str = QueryOperation.AND_OP;
        QueryOperation queryOperation = new QueryOperation(str, str, compileWhereOperationMap);
        List list = (List) this.where.get(str);
        if (list == null) {
            list = new LinkedList();
            this.where.put(str, list);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((QueryOperation) it.next()).equals(queryOperation)) {
                it.remove();
            }
        }
        list.add(queryOperation);
    }

    public void whereWithinRadians(String str, AVGeoPoint aVGeoPoint, double d) {
        whereWithinRadians(str, aVGeoPoint, d, -1.0d);
    }

    public void whereWithinRadians(String str, AVGeoPoint aVGeoPoint, double d, double d2) {
        Map createMap = AVUtils.createMap("$nearSphere", AVUtils.mapFromGeoPoint(aVGeoPoint));
        if (d >= 0.0d) {
            createMap.put("$maxDistanceInRadians", Double.valueOf(d));
        }
        if (d2 >= 0.0d) {
            createMap.put("$minDistanceInRadians", Double.valueOf(d2));
        }
        addWhereItem(new QueryOperation(str, null, createMap));
    }

    public void whereGreaterThanOrEqualTo(String str, Object obj) {
        addWhereItem(new QueryOperation(str, "$gte", obj));
    }

    public void whereContainedIn(String str, Collection<? extends Object> collection) {
        addWhereItem(str, "$in", collection);
    }

    public void whereExists(String str) {
        addWhereItem(str, "$exists", Boolean.valueOf(true));
    }

    public void whereGreaterThan(String str, Object obj) {
        addWhereItem(str, "$gt", obj);
    }

    public void whereLessThan(String str, Object obj) {
        addWhereItem(str, "$lt", obj);
    }

    public void whereLessThanOrEqualTo(String str, Object obj) {
        addWhereItem(str, "$lte", obj);
    }

    public void whereMatches(String str, String str2) {
        addWhereItem(str, "$regex", str2);
    }

    public void whereMatches(String str, String str2, String str3) {
        addWhereItem(str, "$regex", str2);
        addWhereItem(str, "$options", str3);
    }

    public void whereNear(String str, AVGeoPoint aVGeoPoint) {
        addWhereItem(str, "$nearSphere", AVUtils.mapFromGeoPoint(aVGeoPoint));
    }

    public void whereNotContainedIn(String str, Collection<? extends Object> collection) {
        addWhereItem(str, "$nin", collection);
    }

    public void whereNotEqualTo(String str, Object obj) {
        addWhereItem(str, "$ne", obj);
    }

    public void whereEqualTo(String str, Object obj) {
        boolean z = obj instanceof AVObject;
        String str2 = QueryOperation.EQUAL_OP;
        if (z) {
            addWhereItem(str, str2, AVUtils.mapFromPointerObject((AVObject) obj));
        } else {
            addWhereItem(str, str2, obj);
        }
    }

    public void whereStartsWith(String str, String str2) {
        whereMatches(str, String.format("^%s.*", new Object[]{str2}));
    }

    public void whereWithinGeoBox(String str, AVGeoPoint aVGeoPoint, AVGeoPoint aVGeoPoint2) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(AVUtils.mapFromGeoPoint(aVGeoPoint));
        linkedList.add(AVUtils.mapFromGeoPoint(aVGeoPoint2));
        addWhereItem(str, "$within", AVUtils.createMap("$box", linkedList));
    }

    public void whereWithinKilometers(String str, AVGeoPoint aVGeoPoint, double d) {
        whereWithinKilometers(str, aVGeoPoint, d, -1.0d);
    }

    public void whereWithinKilometers(String str, AVGeoPoint aVGeoPoint, double d, double d2) {
        Map createMap = AVUtils.createMap("$nearSphere", AVUtils.mapFromGeoPoint(aVGeoPoint));
        if (d >= 0.0d) {
            createMap.put("$maxDistanceInKilometers", Double.valueOf(d));
        }
        if (d2 >= 0.0d) {
            createMap.put("$minDistanceInKilometers", Double.valueOf(d2));
        }
        addWhereItem(str, null, createMap);
    }

    public void whereWithinMiles(String str, AVGeoPoint aVGeoPoint, double d) {
        whereWithinMiles(str, aVGeoPoint, d, -1.0d);
    }

    public void whereWithinMiles(String str, AVGeoPoint aVGeoPoint, double d, double d2) {
        Map createMap = AVUtils.createMap("$nearSphere", AVUtils.mapFromGeoPoint(aVGeoPoint));
        if (d >= 0.0d) {
            createMap.put("$maxDistanceInMiles", Double.valueOf(d));
        }
        if (d2 >= 0.0d) {
            createMap.put("$minDistanceInMiles", Double.valueOf(d2));
        }
        addWhereItem(str, null, createMap);
    }

    public void whereEndsWith(String str, String str2) {
        whereMatches(str, String.format(".*%s$", new Object[]{str2}));
    }

    public void whereContains(String str, String str2) {
        whereMatches(str, String.format(".*%s.*", new Object[]{str2}));
    }

    public void whereSizeEqual(String str, int i) {
        addWhereItem(str, "$size", Integer.valueOf(i));
    }

    public void whereContainsAll(String str, Collection<?> collection) {
        addWhereItem(str, "$all", collection);
    }

    public void whereDoesNotExist(String str) {
        addWhereItem(str, "$exists", Boolean.valueOf(false));
    }
}
