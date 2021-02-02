package com.avos.avoscloud;

import java.util.Collections;
import java.util.List;

public class AVCloudQueryResult {
    int count;
    List<? extends AVObject> results = Collections.emptyList();

    public List<? extends AVObject> getResults() {
        return this.results;
    }

    /* access modifiers changed from: 0000 */
    public void setResults(List<? extends AVObject> list) {
        this.results = list;
    }

    public int getCount() {
        return this.count;
    }

    /* access modifiers changed from: 0000 */
    public void setCount(int i) {
        this.count = i;
    }
}
