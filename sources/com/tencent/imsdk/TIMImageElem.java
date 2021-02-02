package com.tencent.imsdk;

import java.util.ArrayList;

public class TIMImageElem extends TIMElem {
    public static final int TIM_IMAGE_FORMAT_BMP = 4;
    public static final int TIM_IMAGE_FORMAT_GIF = 2;
    public static final int TIM_IMAGE_FORMAT_JPG = 1;
    public static final int TIM_IMAGE_FORMAT_PNG = 3;
    public static final int TIM_IMAGE_FORMAT_UNKNOWN = 255;
    private int imageFormat;
    private ArrayList<TIMImage> imageList;
    private int level;
    private String path;
    private int taskId;

    public TIMImageElem() {
        this.taskId = 0;
        this.imageList = new ArrayList<>();
        this.path = "";
        this.level = 1;
        this.imageFormat = 255;
        this.type = TIMElemType.Image;
    }

    public ArrayList<TIMImage> getImageList() {
        return this.imageList;
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public int getLevel() {
        return this.level;
    }

    public void setLevel(int i) {
        this.level = i;
    }

    public int getTaskId() {
        return this.taskId;
    }

    /* access modifiers changed from: 0000 */
    public void setTaskId(int i) {
        this.taskId = i;
    }

    public int getImageFormat() {
        return this.imageFormat;
    }

    /* access modifiers changed from: 0000 */
    public void setImageFormat(int i) {
        this.imageFormat = i;
    }

    /* access modifiers changed from: 0000 */
    public void addImage(TIMImage tIMImage) {
        this.imageList.add(tIMImage);
    }
}
