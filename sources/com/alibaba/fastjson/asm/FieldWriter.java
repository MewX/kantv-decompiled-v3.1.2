package com.alibaba.fastjson.asm;

public final class FieldWriter {
    private final int access;
    private final int desc;
    private final int name;
    FieldWriter next;

    /* access modifiers changed from: 0000 */
    public int getSize() {
        return 8;
    }

    public void visitEnd() {
    }

    public FieldWriter(ClassWriter classWriter, int i, String str, String str2) {
        if (classWriter.firstField == null) {
            classWriter.firstField = this;
        } else {
            classWriter.lastField.next = this;
        }
        classWriter.lastField = this;
        this.access = i;
        this.name = classWriter.newUTF8(str);
        this.desc = classWriter.newUTF8(str2);
    }

    /* access modifiers changed from: 0000 */
    public void put(ByteVector byteVector) {
        byteVector.putShort(this.access & -393217).putShort(this.name).putShort(this.desc);
        byteVector.putShort(0);
    }
}
