package com.koushikdutta.async.http.spdy;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

interface BitArray {

    public static final class FixedCapacity implements BitArray {
        long data = 0;

        public void clear() {
            this.data = 0;
        }

        public void set(int i) {
            this.data |= 1 << checkInput(i);
        }

        public void toggle(int i) {
            this.data ^= 1 << checkInput(i);
        }

        public boolean get(int i) {
            return ((this.data >> checkInput(i)) & 1) == 1;
        }

        public void shiftLeft(int i) {
            this.data <<= checkInput(i);
        }

        public String toString() {
            return Long.toBinaryString(this.data);
        }

        public BitArray toVariableCapacity() {
            return new VariableCapacity(this);
        }

        private static int checkInput(int i) {
            if (i >= 0 && i <= 63) {
                return i;
            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "input must be between 0 and 63: %s", new Object[]{Integer.valueOf(i)}));
        }
    }

    public static final class VariableCapacity implements BitArray {
        long[] data;
        private int start;

        public VariableCapacity() {
            this.data = new long[1];
        }

        private VariableCapacity(FixedCapacity fixedCapacity) {
            this.data = new long[]{fixedCapacity.data, 0};
        }

        private void growToSize(int i) {
            long[] jArr = new long[i];
            long[] jArr2 = this.data;
            if (jArr2 != null) {
                System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            }
            this.data = jArr;
        }

        private int offsetOf(int i) {
            int i2 = (i + this.start) / 64;
            if (i2 > this.data.length - 1) {
                growToSize(i2 + 1);
            }
            return i2;
        }

        private int shiftOf(int i) {
            return (i + this.start) % 64;
        }

        public void clear() {
            Arrays.fill(this.data, 0);
        }

        public void set(int i) {
            checkInput(i);
            int offsetOf = offsetOf(i);
            long[] jArr = this.data;
            jArr[offsetOf] = jArr[offsetOf] | (1 << shiftOf(i));
        }

        public void toggle(int i) {
            checkInput(i);
            int offsetOf = offsetOf(i);
            long[] jArr = this.data;
            jArr[offsetOf] = jArr[offsetOf] ^ (1 << shiftOf(i));
        }

        public boolean get(int i) {
            checkInput(i);
            return (this.data[offsetOf(i)] & (1 << shiftOf(i))) != 0;
        }

        public void shiftLeft(int i) {
            this.start -= checkInput(i);
            int i2 = this.start;
            if (i2 < 0) {
                int i3 = (i2 / -64) + 1;
                long[] jArr = this.data;
                long[] jArr2 = new long[(jArr.length + i3)];
                System.arraycopy(jArr, 0, jArr2, i3, jArr.length);
                this.data = jArr2;
                this.start = (this.start % 64) + 64;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            List integerList = toIntegerList();
            int size = integerList.size();
            for (int i = 0; i < size; i++) {
                if (i > 0) {
                    sb.append(',');
                }
                sb.append(integerList.get(i));
            }
            sb.append('}');
            return sb.toString();
        }

        /* access modifiers changed from: 0000 */
        public List<Integer> toIntegerList() {
            ArrayList arrayList = new ArrayList();
            int length = (this.data.length * 64) - this.start;
            for (int i = 0; i < length; i++) {
                if (get(i)) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            return arrayList;
        }

        private static int checkInput(int i) {
            if (i >= 0) {
                return i;
            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "input must be a positive number: %s", new Object[]{Integer.valueOf(i)}));
        }
    }

    void clear();

    boolean get(int i);

    void set(int i);

    void shiftLeft(int i);

    void toggle(int i);
}
