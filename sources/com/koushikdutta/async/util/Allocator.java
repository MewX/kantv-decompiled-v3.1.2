package com.koushikdutta.async.util;

import com.koushikdutta.async.ByteBufferList;
import java.nio.ByteBuffer;

public class Allocator {
    int currentAlloc;
    final int maxAlloc;
    int minAlloc;

    public Allocator(int i) {
        this.currentAlloc = 0;
        this.minAlloc = 4096;
        this.maxAlloc = i;
    }

    public Allocator() {
        this.currentAlloc = 0;
        this.minAlloc = 4096;
        this.maxAlloc = ByteBufferList.MAX_ITEM_SIZE;
    }

    public ByteBuffer allocate() {
        return allocate(this.currentAlloc);
    }

    public ByteBuffer allocate(int i) {
        return ByteBufferList.obtain(Math.min(Math.max(i, this.minAlloc), this.maxAlloc));
    }

    public void track(long j) {
        this.currentAlloc = ((int) j) * 2;
    }

    public int getMaxAlloc() {
        return this.maxAlloc;
    }

    public void setCurrentAlloc(int i) {
        this.currentAlloc = i;
    }

    public int getMinAlloc() {
        return this.minAlloc;
    }

    public Allocator setMinAlloc(int i) {
        this.minAlloc = i;
        return this;
    }
}
