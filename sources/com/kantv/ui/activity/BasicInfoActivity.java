package com.kantv.ui.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.ProfileType;
import com.kantv.lib.gallery.DensityUtil;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.photo.FileUtil;
import com.kantv.ui.photo.PermissionUtil;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.ActionSheetDialog;
import com.kantv.ui.view.ActionSheetDialog.OnSheetItemClickListener;
import com.kantv.ui.view.ActionSheetDialog.SheetItemColor;
import com.kantv.ui.view.CircleImageView;
import com.kantv.ui.viewmodel.CommonViewModel;
import debug.KanApplication;
import java.io.File;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class BasicInfoActivity extends PackageActivity {
    private static final int REQUEST_EDIT_NICK_NAME = 40;
    private final int REQUEST_CODE_ALBUM = 2;
    private final int REQUEST_CODE_CROUP_PHOTO = 3;
    private final int REQUEST_CODE_TAKE_PHOTO = 1;
    /* access modifiers changed from: private */
    public String base64 = null;
    private File file;
    @BindView(2131296380)
    CircleImageView mAvatar;
    @BindView(2131296483)
    TextView mTitle;
    private Uri mUritempFile;
    @BindView(2131297014)
    TextView nickNameTv;
    /* access modifiers changed from: private */
    public String sexFlag = null;
    @BindView(2131297191)
    TextView sexTv;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131297294)
    LinearLayout titleRightLayout;
    private Uri uri;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.login_basic_info);
        initBase();
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN11);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initView() {
        this.titleLeftLayout.setVisibility(0);
        this.mTitle.setText("基础资料");
        this.titleRightLayout.setVisibility(8);
        this.file = new File(FileUtil.getCachePath(this), "user-avatar.jpg");
        if (VERSION.SDK_INT < 24) {
            this.uri = Uri.fromFile(this.file);
        } else {
            this.uri = FileProvider.getUriForFile(this, getPackageName(), this.file);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.uri.toString());
        String str = "";
        sb.append(str);
        AILog.i("Basic@@", sb.toString());
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "Photo", str);
        int i = DensityUtil.Density38;
        GlideUtils.loadimageRoundness(str2, this.mAvatar, i, i);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
    }

    @OnClick({2131297292, 2131296387, 2131296388, 2131296390, 2131296389})
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.title_left_ll) {
            switch (id) {
                case R.id.basic_avatar /*2131296387*/:
                    initAvatarDialog();
                    return;
                case R.id.basic_nickname /*2131296388*/:
                    startActivityForResult(new Intent(this, EditNicknameActivity.class), 40);
                    return;
                case R.id.basic_reg /*2131296389*/:
                    basicRegister();
                    return;
                case R.id.basic_sex /*2131296390*/:
                    initSexDialog();
                    return;
                default:
                    return;
            }
        } else {
            finish();
        }
    }

    private void initAvatarDialog() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this);
        actionSheetDialog.builder();
        String str = "相册选取";
        actionSheetDialog.setTitle("请选择拍照方式").addSheetItem("手机拍照", SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                if (PermissionUtil.hasCameraPermission(BasicInfoActivity.this)) {
                    BasicInfoActivity.this.paizhao();
                }
            }
        }).addSheetItem(str, SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                BasicInfoActivity.this.xuanqu();
            }
        }).show();
    }

    private void initSexDialog() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this);
        actionSheetDialog.builder();
        String str = "女";
        actionSheetDialog.setTitle("请选择性别").addSheetItem("男", SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                BasicInfoActivity.this.sexTv.setText("男");
                BasicInfoActivity.this.sexFlag = "1";
            }
        }).addSheetItem(str, SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                BasicInfoActivity.this.sexTv.setText("女");
                BasicInfoActivity.this.sexFlag = "2";
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void paizhao() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.addFlags(1);
        intent.putExtra("orientation", 0);
        intent.putExtra("output", this.uri);
        startActivityForResult(intent, 1);
    }

    /* access modifiers changed from: private */
    public void xuanqu() {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("image/*");
        startActivityForResult(intent, 2);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            if (i == 2 && intent != null) {
                Uri data = intent.getData();
                if (data != null) {
                    this.mUritempFile = CommonViewModel.startPhotoZoom(this, data, 3);
                } else {
                    Toast.makeText(this, "没有得到相册图片", 1).show();
                }
            } else if (i == 1) {
                this.mUritempFile = CommonViewModel.startPhotoZoom(this, this.uri, 3);
            } else if (i == 3) {
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(getContentResolver().openInputStream(this.mUritempFile));
                    this.base64 = StringUtils.bitmapToBase64(decodeStream);
                    this.mAvatar.setImageBitmap(decodeStream);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (i == 40 && intent != null) {
                this.nickNameTv.setText(intent.getStringExtra("nick_name"));
            }
        }
    }

    private void basicRegister() {
        String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
        String trim = this.nickNameTv.getText().toString().trim();
        String trim2 = this.sexTv.getText().toString().trim();
        if (StringUtils.isEmpty(trim)) {
            ToastUtils.showShort((CharSequence) "请输入昵称");
        } else if (StringUtils.isEmpty(trim2)) {
            ToastUtils.showShort((CharSequence) "请选择性别");
        } else {
            this.request.clear();
            this.request.put("name", trim);
            if (!StringUtils.isEmpty(this.sexFlag)) {
                this.request.put("gender", this.sexFlag);
            }
            if (!StringUtils.isEmpty(this.base64)) {
                this.request.put("image", this.base64);
                this.request.put("noncestr", SignConfig.noncestr);
                this.request.put("timestamp", SignConfig.timestamp);
                this.request.put("sbID", SignConfig.sbID);
                this.request.put("sign", SignConfig.sign);
                this.request.put("_token", str);
                String str2 = "0";
                this.request.put("devicetype", str2);
                this.request.put("interfaceVersion", Utils.interfaceVersion);
                this.request.put(ProfileType.FROM, str2);
                Api.getService().updateUserInfo(this.request).enqueue(new CommonCallBack(this, true) {
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                        super.onResponse(call, response);
                        if (!BasicInfoActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            if (jsonObject != null) {
                                if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                    JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                                    if (jsonObject2 != null) {
                                        String str = "name";
                                        PreferenceUtil.put(Utils.getContext(), str, jsonObject2.optString(str));
                                        if (!StringUtils.isEmpty(BasicInfoActivity.this.base64)) {
                                            PreferenceUtil.put(Utils.getContext(), "Photo", jsonObject2.optString("photo"));
                                        }
                                        String str2 = "gender";
                                        if (jsonObject2.has(str2)) {
                                            PreferenceUtil.put(Utils.getContext(), UserPreference.SEX, Integer.toString(jsonObject2.optInt(str2)));
                                        }
                                        KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE55).build());
                                        BasicInfoActivity.this.finish();
                                    } else {
                                        return;
                                    }
                                }
                                ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                            }
                        }
                    }
                });
                return;
            }
            ToastUtils.showShort((CharSequence) "请选择头像");
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }
}
