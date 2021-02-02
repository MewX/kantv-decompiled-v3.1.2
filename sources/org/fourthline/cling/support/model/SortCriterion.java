package org.fourthline.cling.support.model;

import java.util.ArrayList;

public class SortCriterion {
    protected final boolean ascending;
    protected final String propertyName;

    public SortCriterion(boolean z, String str) {
        this.ascending = z;
        this.propertyName = str;
    }

    public SortCriterion(String str) {
        String str2 = "+";
        this(str.startsWith(str2), str.substring(1));
        if (!str.startsWith("-") && !str.startsWith(str2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Missing sort prefix +/- on criterion: ");
            sb.append(str);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public boolean isAscending() {
        return this.ascending;
    }

    public String getPropertyName() {
        return this.propertyName;
    }

    public static SortCriterion[] valueOf(String str) {
        if (str == null || str.length() == 0) {
            return new SortCriterion[0];
        }
        ArrayList arrayList = new ArrayList();
        for (String trim : str.split(",")) {
            arrayList.add(new SortCriterion(trim.trim()));
        }
        return (SortCriterion[]) arrayList.toArray(new SortCriterion[arrayList.size()]);
    }

    public static String toString(SortCriterion[] sortCriterionArr) {
        String str;
        if (sortCriterionArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int length = sortCriterionArr.length;
        int i = 0;
        while (true) {
            str = ",";
            if (i >= length) {
                break;
            }
            sb.append(sortCriterionArr[i].toString());
            sb.append(str);
            i++;
        }
        if (sb.toString().endsWith(str)) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.ascending ? "+" : "-");
        sb.append(this.propertyName);
        return sb.toString();
    }
}
