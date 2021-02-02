package com.alibaba.fastjson.serializer;

import java.util.Arrays;

public class Labels {

    private static class DefaultLabelFilter implements LabelFilter {
        private String[] excludes;
        private String[] includes;

        public DefaultLabelFilter(String[] strArr, String[] strArr2) {
            if (strArr != null) {
                this.includes = new String[strArr.length];
                System.arraycopy(strArr, 0, this.includes, 0, strArr.length);
                Arrays.sort(this.includes);
            }
            if (strArr2 != null) {
                this.excludes = new String[strArr2.length];
                System.arraycopy(strArr2, 0, this.excludes, 0, strArr2.length);
                Arrays.sort(this.excludes);
            }
        }

        public boolean apply(String str) {
            String[] strArr = this.excludes;
            boolean z = true;
            if (strArr != null) {
                if (Arrays.binarySearch(strArr, str) != -1) {
                    z = false;
                }
                return z;
            }
            String[] strArr2 = this.includes;
            if (strArr2 == null || Arrays.binarySearch(strArr2, str) < 0) {
                z = false;
            }
            return z;
        }
    }

    public static LabelFilter includes(String... strArr) {
        return new DefaultLabelFilter(strArr, null);
    }

    public static LabelFilter excludes(String... strArr) {
        return new DefaultLabelFilter(null, strArr);
    }
}
