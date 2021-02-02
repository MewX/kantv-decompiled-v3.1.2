package com.kantv.flt_tencent_im.utils;

import android.os.Environment;
import com.kantv.flt_tencent_im.TUIKit;

public class TUIKitConstants {
    public static String APP_DIR = null;
    public static final String CAMERA_IMAGE_PATH = "camera_image_path";
    public static final String CAMERA_TYPE = "camera_type";
    public static final String CAMERA_VIDEO_PATH = "camera_video_path";
    public static String CRASH_LOG_DIR = null;
    public static String FILE_DOWNLOAD_DIR = null;
    public static String IMAGE_BASE_DIR = null;
    public static final String IMAGE_DATA = "image_data";
    public static String IMAGE_DOWNLOAD_DIR = null;
    public static final String IMAGE_HEIGHT = "image_height";
    public static final String IMAGE_WIDTH = "image_width";
    public static String MEDIA_DIR = null;
    public static String RECORD_DIR = null;
    public static String RECORD_DOWNLOAD_DIR = null;
    public static String SD_CARD_PATH = Environment.getExternalStorageDirectory().getAbsolutePath();
    public static final String SELF_MESSAGE = "self_message";
    public static String SOFT_KEY_BOARD_HEIGHT = "soft_key_board_height";
    public static String UI_PARAMS = "ilive_ui_params";
    public static String VIDEO_DOWNLOAD_DIR = null;
    public static final String VIDEO_TIME = "video_time";

    public static final class ActivityRequest {
        public static final int CODE_1 = 1;
    }

    public static final class Group {
        public static final String GROUP_ID = "group_id";
        public static final String GROUP_INFO = "groupInfo";
        public static final String MEMBER_APPLY = "apply";
        public static final int MODIFY_GROUP_JOIN_TYPE = 3;
        public static final int MODIFY_GROUP_NAME = 1;
        public static final int MODIFY_GROUP_NOTICE = 2;
        public static final int MODIFY_MEMBER_NAME = 17;
    }

    public static class GroupType {
        public static final int CHAT_ROOM = 2;
        public static final String GROUP = "isGroup";
        public static final int PRIVATE = 0;
        public static final int PUBLIC = 1;
        public static final String TYPE = "type";
        public static final String TYPE_CHAT_ROOM = "ChatRoom";
        public static final String TYPE_PRIVATE = "Private";
        public static final String TYPE_PUBLIC = "Public";
    }

    public static class ProfileType {
        public static final String CONTENT = "content";
        public static final String FROM = "from";
        public static final int FROM_CHAT = 1;
        public static final int FROM_CONTACT = 3;
        public static final int FROM_GROUP_APPLY = 4;
        public static final int FROM_NEW_FRIEND = 2;
    }

    public static class Selection {
        public static final String CONTENT = "content";
        public static final String DEFAULT_SELECT_ITEM_INDEX = "default_select_item_index";
        public static final String INIT_CONTENT = "init_content";
        public static final String LIMIT = "limit";
        public static final String LIST = "list";
        public static final String TITLE = "title";
        public static final String TYPE = "type";
        public static final int TYPE_LIST = 2;
        public static final int TYPE_TEXT = 1;
    }

    static {
        String str;
        if (TUIKit.getConfigs().getGeneralConfig().getAppCacheDir() != null) {
            str = TUIKit.getConfigs().getGeneralConfig().getAppCacheDir();
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(SD_CARD_PATH);
            sb.append("/");
            sb.append(TUIKit.getAppContext().getPackageName());
            str = sb.toString();
        }
        APP_DIR = str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(APP_DIR);
        sb2.append("/record/");
        RECORD_DIR = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(APP_DIR);
        sb3.append("/record/download/");
        RECORD_DOWNLOAD_DIR = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        sb4.append(APP_DIR);
        sb4.append("/video/download/");
        VIDEO_DOWNLOAD_DIR = sb4.toString();
        StringBuilder sb5 = new StringBuilder();
        sb5.append(APP_DIR);
        sb5.append("/image/");
        IMAGE_BASE_DIR = sb5.toString();
        StringBuilder sb6 = new StringBuilder();
        sb6.append(IMAGE_BASE_DIR);
        sb6.append("download/");
        IMAGE_DOWNLOAD_DIR = sb6.toString();
        StringBuilder sb7 = new StringBuilder();
        sb7.append(APP_DIR);
        sb7.append("/media");
        MEDIA_DIR = sb7.toString();
        StringBuilder sb8 = new StringBuilder();
        sb8.append(APP_DIR);
        sb8.append("/file/download/");
        FILE_DOWNLOAD_DIR = sb8.toString();
        StringBuilder sb9 = new StringBuilder();
        sb9.append(APP_DIR);
        sb9.append("/crash/");
        CRASH_LOG_DIR = sb9.toString();
    }

    public static String covert2HTMLString(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("\"<font color=\"#5B6B92\">");
        sb.append(str);
        sb.append("</font>\"");
        return sb.toString();
    }
}
