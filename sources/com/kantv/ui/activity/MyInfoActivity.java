package com.kantv.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.Html;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import butterknife.BindView;
import butterknife.OnClick;
import com.bigkoo.pickerview.builder.OptionsPickerBuilder;
import com.bigkoo.pickerview.builder.TimePickerBuilder;
import com.bigkoo.pickerview.listener.OnOptionsSelectListener;
import com.bigkoo.pickerview.listener.OnTimeSelectListener;
import com.bigkoo.pickerview.view.OptionsPickerView;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.ProfileType;
import com.kantv.lib.gallery.DensityUtil;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.ui.BuildConfig;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.bean.AddressBean;
import com.kantv.ui.bean.City;
import com.kantv.ui.bean.CountryBean;
import com.kantv.ui.bean.Province;
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
import com.kantv.ui.view.AlertDialog;
import com.kantv.ui.view.CircleImageView;
import com.kantv.ui.viewmodel.CommonViewModel;
import com.tencent.connect.common.Constants;
import debug.KanApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class MyInfoActivity extends PackageActivity {
    private static final int REQUEST_EDIT_ABOUT = 50;
    private static final int REQUEST_EDIT_NICK_NAME = 40;
    private static String clickFlag = "";
    private final int REQUEST_CODE_ALBUM = 2;
    private final int REQUEST_CODE_CROUP_PHOTO = 3;
    private final int REQUEST_CODE_TAKE_PHOTO = 1;
    private String TAG = MyInfoActivity.class.getSimpleName();
    @BindView(2131296266)
    TextView aboutTv;
    @BindView(2131296374)
    TextView areaTv;
    /* access modifiers changed from: private */
    public String base64 = null;
    /* access modifiers changed from: private */
    public String bgBase64 = null;
    @BindView(2131296392)
    ImageView bgImg;
    @BindView(2131296408)
    TextView birthTv;
    String city;
    String cn;
    /* access modifiers changed from: private */
    public String countryFlag = null;
    private File file;
    @BindView(2131296647)
    TextView headTip;
    @BindView(2131296656)
    TextView homeTip;
    @BindView(2131296657)
    TextView homeTv;
    /* access modifiers changed from: private */
    public boolean isChange = false;
    private AddressBean mAddress;
    @BindView(2131296380)
    CircleImageView mAvatar;
    /* access modifiers changed from: private */
    public String mCurrentArea;
    /* access modifiers changed from: private */
    public JSONObject mHomeTown;
    @BindView(2131296483)
    TextView mTitle;
    private Uri mUritempFile;
    @BindView(2131297013)
    TextView nichengTip;
    @BindView(2131297014)
    TextView nickNameTv;
    List<CountryBean> options1Items = new ArrayList();
    ArrayList<ArrayList<String>> options2Items = new ArrayList<>();
    ArrayList<ArrayList<ArrayList<String>>> options3Items = new ArrayList<>();
    String province;
    private OptionsPickerView pvOptions = null;
    /* access modifiers changed from: private */
    public String sexFlag = null;
    @BindView(2131296683)
    RelativeLayout sexInfoLayout;
    @BindView(2131297190)
    TextView sexTip;
    @BindView(2131297191)
    TextView sexTv;
    @BindView(2131297198)
    TextView shengriTip;
    @BindView(2131297293)
    ImageView titleLeftImg;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131296482)
    RelativeLayout titleRelateLayout;
    @BindView(2131297295)
    ImageView titleRightImg;
    @BindView(2131297294)
    LinearLayout titleRightLayout;
    @BindView(2131297328)
    TextView titleRightTv;
    private Uri uri;

    public MyInfoActivity() {
        String str = "";
        this.cn = str;
        this.province = str;
        this.city = str;
        this.mAddress = null;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_myinfo);
        initBase();
        initStatusBar();
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN6);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
        initRedTip();
    }

    private void initRedTip() {
        this.headTip.setText(Html.fromHtml("头像 <font color='#ff0000'>*</font>"));
        this.nichengTip.setText(Html.fromHtml("昵称 <font color='#ff0000'>*</font>"));
        this.shengriTip.setText(Html.fromHtml("生日 <font color='#ff0000'>*</font>"));
        this.sexTip.setText(Html.fromHtml("性别 <font color='#ff0000'>*</font>"));
        this.homeTip.setText(Html.fromHtml("家乡 <font color='#ff0000'>*</font>"));
    }

    private void initView() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.mTitle.setText("我的资料");
        this.mTitle.setTextSize(18.0f);
        this.mTitle.setTextColor(getResources().getColor(R.color.white));
        this.titleRightImg.setVisibility(8);
        this.titleRightTv.setVisibility(0);
        this.titleRightTv.setText("更新");
        this.titleRightTv.setTextColor(getResources().getColor(R.color.hot_gray));
        String str = "name";
        String str2 = "";
        this.nickNameTv.setText((String) PreferenceUtil.get(Utils.getContext(), str, str2));
        this.birthTv.setText((String) PreferenceUtil.get(Utils.getContext(), UserPreference.BIRTHDAY, str2));
        this.areaTv.setText((String) PreferenceUtil.get(Utils.getContext(), UserPreference.AREA, str2));
        TextView textView = this.aboutTv;
        Context context = Utils.getContext();
        String str3 = UserPreference.ABOUT_ME;
        textView.setText((String) PreferenceUtil.get(context, str3, str2));
        String str4 = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.SEX, str2);
        if (!StringUtils.isEmpty(str4)) {
            if (str4.equals("1")) {
                this.sexTv.setText("男");
            } else if (str4.equals("2")) {
                this.sexTv.setText("女");
            }
            this.sexFlag = str4;
        }
        this.file = new File(FileUtil.getCachePath(this), "user-avatar.jpg");
        if (VERSION.SDK_INT < 24) {
            this.uri = Uri.fromFile(this.file);
        } else {
            this.uri = FileProvider.getUriForFile(this, getPackageName(), this.file);
        }
        String str5 = (String) PreferenceUtil.get(Utils.getContext(), "Photo", str2);
        int i = DensityUtil.Density38;
        GlideUtils.loadimageRoundness(str5, this.mAvatar, i, i);
        GlideUtils.loadimage2((String) PreferenceUtil.get(Utils.getContext(), UserPreference.BACKGROUND, str2), this.bgImg);
        if (!StringUtils.isEmpty((String) PreferenceUtil.get(Utils.getContext(), str, str2))) {
            this.nickNameTv.setText((String) PreferenceUtil.get(Utils.getContext(), str, str2));
        }
        if (!StringUtils.isEmpty((String) PreferenceUtil.get(Utils.getContext(), str3, str2))) {
            this.aboutTv.setText((String) PreferenceUtil.get(Utils.getContext(), str3, str2));
        }
        try {
            this.mCurrentArea = AddressBean.getArea((String) PreferenceUtil.get(Utils.getContext(), UserPreference.CONTRY, str2), (String) PreferenceUtil.get(Utils.getContext(), UserPreference.PROVINCE, str2), (String) PreferenceUtil.get(Utils.getContext(), UserPreference.CITY, str2));
            this.homeTv.setText(this.mCurrentArea);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
    }

    @OnClick({2131297292, 2131296678, 2131296682, 2131296683, 2131296677, 2131297294, 2131296680, 2131296679, 2131296676, 2131296681})
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.title_left_ll) {
            if (id != R.id.title_right_ll) {
                String str = "1";
                String str2 = "提示";
                String str3 = "0";
                String str4 = UserPreference.EDIT_BIRTH;
                switch (id) {
                    case R.id.info_about /*2131296676*/:
                        startActivityForResult(new Intent(this, MeAboutActivity.class), 50);
                        return;
                    case R.id.info_area /*2131296677*/:
                        initAreaDialog();
                        return;
                    case R.id.info_avatar /*2131296678*/:
                        clickFlag = "avatar";
                        initAvatarDialog();
                        return;
                    case R.id.info_bg /*2131296679*/:
                        clickFlag = "bg";
                        initAvatarDialog();
                        return;
                    case R.id.info_birth /*2131296680*/:
                        String str5 = (String) PreferenceUtil.get(Utils.getContext(), str4, str3);
                        if (StringUtils.isEmpty(str5) || !str5.equals(str)) {
                            initAlertDialog(str2, "生日仅可修改一次，是否修改？", "birth");
                            return;
                        } else {
                            ToastUtils.showShort((CharSequence) "生日不支持修改");
                            return;
                        }
                    case R.id.info_home /*2131296681*/:
                        String str6 = (String) PreferenceUtil.get(Utils.getContext(), str4, str3);
                        if (StringUtils.isEmpty(str6) || !str6.equals(str)) {
                            initAlertDialog(str2, "家乡仅可修改一次，是否修改？", "home");
                            return;
                        } else {
                            ToastUtils.showShort((CharSequence) "家乡不支持修改");
                            return;
                        }
                    case R.id.info_nickname /*2131296682*/:
                        startActivityForResult(new Intent(this, EditNicknameActivity.class), 40);
                        return;
                    case R.id.info_sex /*2131296683*/:
                        String str7 = (String) PreferenceUtil.get(Utils.getContext(), str4, str3);
                        if (StringUtils.isEmpty(str7) || !str7.equals(str)) {
                            initAlertDialog(str2, "性别仅可修改一次，是否修改？", UserPreference.SEX);
                            return;
                        } else {
                            ToastUtils.showShort((CharSequence) "性别不支持修改");
                            return;
                        }
                    default:
                        return;
                }
            } else if (this.isChange) {
                saveInfo();
            }
        } else if (this.isChange) {
            showSaveDialog();
        } else {
            finish();
        }
    }

    /* access modifiers changed from: private */
    public void showDatePickerDialog() {
        new TimePickerBuilder(this, new OnTimeSelectListener() {
            public void onTimeSelect(Date date, View view) {
                String str = "-";
                Calendar instance = Calendar.getInstance();
                Calendar instance2 = Calendar.getInstance();
                instance2.setTime(date);
                int i = instance2.get(1);
                int i2 = instance2.get(2);
                int i3 = instance2.get(5);
                try {
                    if (instance2.getTimeInMillis() > instance.getTimeInMillis()) {
                        ToastUtils.showShort((CharSequence) "生日不能超过当前日期");
                        return;
                    }
                    TextView textView = MyInfoActivity.this.birthTv;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i);
                    sb.append(str);
                    sb.append(i2 + 1);
                    sb.append(str);
                    sb.append(i3);
                    textView.setText(sb.toString());
                    MyInfoActivity.this.isChange = true;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }).isCenterLabel(false).setType(new boolean[]{true, true, true, false, false, false}).setTitleText("出生").setOutSideCancelable(false).setBgColor(Color.parseColor("#F6F7F6")).setTitleSize(18).setTitleColor(getResources().getColor(R.color.cursor_color)).setSubmitColor(getResources().getColor(R.color.item_filter_color)).setCancelColor(getResources().getColor(R.color.tabtxt_color)).build().show();
    }

    /* access modifiers changed from: private */
    public void showHomePickerDialog() {
        OptionsPickerView optionsPickerView = this.pvOptions;
        if (optionsPickerView != null) {
            optionsPickerView.show();
            return;
        }
        String str = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.AREA_DATA, "");
        if (StringUtils.isEmpty(str)) {
            String bootDomain = Api.getBootDomain();
            StringBuilder sb = new StringBuilder();
            sb.append(bootDomain);
            sb.append("/area/area.json");
            Api.getService().getAreaJson(sb.toString()).enqueue(new Callback<ResponseBody>() {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    if (response != null) {
                        try {
                            if (response.isSuccessful()) {
                                String str = ((ResponseBody) response.body()).string().toString();
                                PreferenceUtil.put(Utils.getContext(), UserPreference.AREA_DATA, str);
                                MyInfoActivity.this.parseAreaJson(str);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            ToastUtils.show((int) R.string.load_area_fail, 0);
                        }
                    }
                }

                public void onFailure(Call<ResponseBody> call, Throwable th) {
                    th.printStackTrace();
                    ToastUtils.show((int) R.string.load_area_fail, 0);
                }
            });
        } else {
            parseAreaJson(str);
        }
    }

    /* access modifiers changed from: private */
    public void parseAreaJson(String str) {
        Gson gson = new Gson();
        this.options1Items.clear();
        this.options2Items.clear();
        this.options3Items.clear();
        this.mAddress = (AddressBean) gson.fromJson(str, AddressBean.class);
        List<CountryBean> country = this.mAddress.getCountry();
        this.options1Items = country;
        for (int i = 0; i < country.size(); i++) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            String str2 = "";
            if (((CountryBean) country.get(i)).getChildren() == null) {
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(str2);
                arrayList.add(str2);
                arrayList2.add(arrayList3);
            } else {
                for (int i2 = 0; i2 < ((CountryBean) country.get(i)).getChildren().size(); i2++) {
                    arrayList.add(((Province) ((CountryBean) country.get(i)).getChildren().get(i2)).getName());
                    ArrayList arrayList4 = new ArrayList();
                    if (((Province) ((CountryBean) country.get(i)).getChildren().get(i2)).getChildren() == null || ((Province) ((CountryBean) country.get(i)).getChildren().get(i2)).getChildren().size() == 0) {
                        arrayList4.add(str2);
                    } else {
                        for (City name : ((Province) ((CountryBean) country.get(i)).getChildren().get(i2)).getChildren()) {
                            arrayList4.add(name.getName());
                        }
                    }
                    arrayList2.add(arrayList4);
                }
            }
            this.options2Items.add(arrayList);
            this.options3Items.add(arrayList2);
        }
        this.pvOptions = new OptionsPickerBuilder(this, new OnOptionsSelectListener() {
            public void onOptionsSelect(int i, int i2, int i3, View view) {
                String str = UserPreference.CITY;
                String str2 = UserPreference.PROVINCE;
                String str3 = "country";
                MyInfoActivity.this.isChange = true;
                MyInfoActivity.this.mHomeTown = new JSONObject();
                String str4 = "";
                MyInfoActivity.this.mCurrentArea = str4;
                try {
                    MyInfoActivity.this.mHomeTown.put(str3, str4);
                    MyInfoActivity.this.mHomeTown.put(str2, str4);
                    MyInfoActivity.this.mHomeTown.put(str, str4);
                    MyInfoActivity.this.cn = ((CountryBean) MyInfoActivity.this.options1Items.get(i)).getPickerViewText();
                    MyInfoActivity.this.province = (String) ((ArrayList) MyInfoActivity.this.options2Items.get(i)).get(i2);
                    MyInfoActivity.this.city = (String) ((ArrayList) ((ArrayList) MyInfoActivity.this.options3Items.get(i)).get(i2)).get(i3);
                    MyInfoActivity myInfoActivity = MyInfoActivity.this;
                    StringBuilder sb = new StringBuilder();
                    sb.append(MyInfoActivity.this.cn);
                    sb.append(MyInfoActivity.this.province);
                    sb.append(MyInfoActivity.this.city);
                    myInfoActivity.mCurrentArea = sb.toString();
                    MyInfoActivity.this.homeTv.setText(MyInfoActivity.this.mCurrentArea);
                    MyInfoActivity.this.mHomeTown.put(str3, ((CountryBean) MyInfoActivity.this.options1Items.get(i)).getId());
                    if (((CountryBean) MyInfoActivity.this.options1Items.get(i)).getChildren() != null && ((CountryBean) MyInfoActivity.this.options1Items.get(i)).getChildren().size() - 1 > i2) {
                        MyInfoActivity.this.mHomeTown.put(str2, ((Province) ((CountryBean) MyInfoActivity.this.options1Items.get(i)).getChildren().get(i2)).getId());
                        if (((Province) ((CountryBean) MyInfoActivity.this.options1Items.get(i)).getChildren().get(i2)).getChildren() != null && ((Province) ((CountryBean) MyInfoActivity.this.options1Items.get(i)).getChildren().get(i2)).getChildren().size() - 1 > i3) {
                            MyInfoActivity.this.mHomeTown.put(str, ((City) ((Province) ((CountryBean) MyInfoActivity.this.options1Items.get(i)).getChildren().get(i2)).getChildren().get(i3)).getId());
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }).isCenterLabel(false).isRestoreItem(true).setTitleText("家乡").setOutSideCancelable(false).setBgColor(Color.parseColor("#F6F7F6")).setTitleSize(18).setTitleColor(getResources().getColor(R.color.cursor_color)).setSubmitColor(getResources().getColor(R.color.item_filter_color)).setCancelColor(getResources().getColor(R.color.tabtxt_color)).build();
        this.pvOptions.setPicker(this.options1Items, this.options2Items, this.options3Items);
        this.pvOptions.show();
    }

    private void initAvatarDialog() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this);
        actionSheetDialog.builder();
        String str = "相册选取";
        actionSheetDialog.setTitle("请选择拍照方式").addSheetItem("手机拍照", SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                if (PermissionUtil.hasCameraPermission(MyInfoActivity.this)) {
                    MyInfoActivity.this.paizhao();
                }
            }
        }).addSheetItem(str, SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                MyInfoActivity.this.xuanqu();
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void initSexDialog() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this);
        actionSheetDialog.builder();
        String str = "女";
        actionSheetDialog.setTitle("请选择性别").addSheetItem("男", SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                MyInfoActivity.this.sexTv.setText("男");
                String str = "1";
                MyInfoActivity.this.sexFlag = str;
                PreferenceUtil.put(Utils.getContext(), UserPreference.EDIT_SEX, str);
                MyInfoActivity.this.isChange = true;
            }
        }).addSheetItem(str, SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                MyInfoActivity.this.sexTv.setText("女");
                MyInfoActivity.this.sexFlag = "2";
                PreferenceUtil.put(Utils.getContext(), UserPreference.EDIT_SEX, "1");
                MyInfoActivity.this.isChange = true;
            }
        }).show();
    }

    private void initAreaDialog() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this);
        actionSheetDialog.builder();
        String str = "新西兰";
        String str2 = "加拿大";
        actionSheetDialog.setTitle("请选择地区").addSheetItem("澳洲", SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                MyInfoActivity.this.areaTv.setText(MyInfoActivity.this.getString(R.string.area_code_13));
                MyInfoActivity.this.countryFlag = Constants.VIA_REPORT_TYPE_JOININ_GROUP;
                MyInfoActivity.this.isChange = true;
            }
        }).addSheetItem(str, SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                MyInfoActivity.this.areaTv.setText(MyInfoActivity.this.getString(R.string.area_code_153));
                MyInfoActivity.this.countryFlag = "153";
                MyInfoActivity.this.isChange = true;
            }
        }).addSheetItem(str2, SheetItemColor.Blue, new OnSheetItemClickListener() {
            public void onClick(int i) {
                MyInfoActivity.this.areaTv.setText(MyInfoActivity.this.getString(R.string.area_code_38));
                MyInfoActivity.this.countryFlag = "38";
                MyInfoActivity.this.isChange = true;
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
                    if (clickFlag != null) {
                        if (clickFlag.equals("avatar")) {
                            this.base64 = StringUtils.bitmapToBase64(decodeStream);
                            this.mAvatar.setImageBitmap(decodeStream);
                            this.isChange = true;
                        } else if (clickFlag.equals("bg")) {
                            this.bgBase64 = StringUtils.bitmapToBase64(decodeStream);
                            this.bgImg.setImageBitmap(decodeStream);
                            this.isChange = true;
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (i == 40 && intent != null) {
                this.nickNameTv.setText(intent.getStringExtra("nick_name"));
                this.isChange = true;
            } else if (i == 50 && intent != null) {
                this.aboutTv.setText(intent.getStringExtra("about"));
                this.isChange = true;
            }
        }
    }

    /* access modifiers changed from: private */
    public void saveInfo() {
        try {
            String str = (String) PreferenceUtil.get(Utils.getContext(), "token", "");
            String trim = this.nickNameTv.getText().toString().trim();
            String trim2 = this.sexTv.getText().toString().trim();
            String trim3 = this.birthTv.getText().toString().trim();
            String trim4 = this.aboutTv.getText().toString().trim();
            String trim5 = this.homeTv.getText().toString().trim();
            if (StringUtils.isEmpty(trim)) {
                ToastUtils.showShort((CharSequence) "请输入昵称");
            } else if (StringUtils.isEmpty(trim2)) {
                ToastUtils.showShort((CharSequence) "请选择性别");
            } else if (StringUtils.isEmpty(trim3)) {
                ToastUtils.showShort((CharSequence) "生日未填");
            } else if (StringUtils.isEmpty(trim5)) {
                ToastUtils.showShort((CharSequence) "家乡未填");
            } else {
                HashMap hashMap = new HashMap();
                hashMap.clear();
                hashMap.put("name", trim);
                if (!StringUtils.isEmpty(this.sexFlag)) {
                    hashMap.put("gender", this.sexFlag);
                }
                if (!StringUtils.isEmpty(this.countryFlag)) {
                    hashMap.put("country", this.countryFlag);
                }
                if (!StringUtils.isEmpty(this.base64)) {
                    hashMap.put("photo", this.base64);
                }
                if (!StringUtils.isEmpty(this.bgBase64)) {
                    hashMap.put(UserPreference.BACKGROUND, this.bgBase64);
                }
                hashMap.put(UserPreference.ABOUT_ME, trim4);
                hashMap.put(UserPreference.BIRTHDAY, trim3);
                hashMap.put("noncestr", SignConfig.noncestr);
                hashMap.put("timestamp", SignConfig.timestamp);
                hashMap.put("sbID", SignConfig.sbID);
                hashMap.put("sign", SignConfig.sign);
                hashMap.put("_token", str);
                hashMap.put("devicetype", "0");
                hashMap.put(ProfileType.FROM, "1");
                if (this.mHomeTown != null) {
                    hashMap.put("hometown", this.mHomeTown);
                }
                hashMap.put("interfaceVersion", Utils.interfaceVersion);
                Api.getService().updateUserInfos(hashMap).enqueue(new CommonCallBack(this, true) {
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                        String str = "hometown";
                        String str2 = UserPreference.CITY;
                        String str3 = UserPreference.PROVINCE;
                        String str4 = UserPreference.AREA;
                        super.onResponse(call, response);
                        if (!MyInfoActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                            JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                            if (jsonObject != null) {
                                if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                    JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                                    if (jsonObject2 != null) {
                                        String str5 = "name";
                                        if (jsonObject2.has(str5)) {
                                            PreferenceUtil.put(Utils.getContext(), str5, jsonObject2.optString(str5));
                                        }
                                        String str6 = UserPreference.BIRTHDAY;
                                        if (jsonObject2.has(str6)) {
                                            PreferenceUtil.put(Utils.getContext(), str6, jsonObject2.optString(str6));
                                        }
                                        String str7 = UserPreference.ABOUT_ME;
                                        if (jsonObject2.has(str7)) {
                                            PreferenceUtil.put(Utils.getContext(), str7, jsonObject2.optString(str7));
                                        }
                                        String str8 = "gender";
                                        if (jsonObject2.has(str8)) {
                                            PreferenceUtil.put(Utils.getContext(), UserPreference.SEX, Integer.toString(jsonObject2.optInt(str8)));
                                        }
                                        String str9 = "modify";
                                        if (jsonObject2.has(str9)) {
                                            PreferenceUtil.put(Utils.getContext(), UserPreference.EDIT_BIRTH, jsonObject2.optString(str9));
                                        }
                                        if (!StringUtils.isEmpty(MyInfoActivity.this.base64)) {
                                            PreferenceUtil.put(Utils.getContext(), "Photo", jsonObject2.optString("photo"));
                                        }
                                        if (!StringUtils.isEmpty(MyInfoActivity.this.bgBase64)) {
                                            Context context = Utils.getContext();
                                            String str10 = UserPreference.BACKGROUND;
                                            PreferenceUtil.put(context, str10, jsonObject2.optString(str10));
                                        }
                                        try {
                                            String str11 = "country";
                                            if (!StringUtils.isJSONKeyAndValueEmpty(jsonObject2, str4, new JSONObject())) {
                                                if (!StringUtils.isEmpty(jsonObject2.optJSONObject(str4).optString(str11))) {
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append("area_code_");
                                                    sb.append(jsonObject2.optJSONObject(str4).optString(str11));
                                                    String sb2 = sb.toString();
                                                    PreferenceUtil.put(Utils.getContext(), UserPreference.AREA_CODE, sb2);
                                                    PreferenceUtil.put(Utils.getContext(), str4, MyInfoActivity.this.getResources().getString(MyInfoActivity.this.getResources().getIdentifier(sb2, "string", BuildConfig.APPLICATION_ID)));
                                                }
                                            }
                                            if (!StringUtils.isJSONKeyAndValueEmpty(jsonObject2, str, new JsonObject())) {
                                                JSONObject jSONObject = jsonObject2.getJSONObject(str);
                                                String str12 = "";
                                                if (jSONObject.has(str11)) {
                                                    Context context2 = Utils.getContext();
                                                    String str13 = UserPreference.CONTRY;
                                                    StringBuilder sb3 = new StringBuilder();
                                                    sb3.append(jSONObject.get(str11));
                                                    sb3.append(str12);
                                                    PreferenceUtil.put(context2, str13, sb3.toString());
                                                }
                                                if (jSONObject.has(str3)) {
                                                    Context context3 = Utils.getContext();
                                                    StringBuilder sb4 = new StringBuilder();
                                                    sb4.append(jSONObject.get(str3));
                                                    sb4.append(str12);
                                                    PreferenceUtil.put(context3, str3, sb4.toString());
                                                }
                                                if (jSONObject.has(str2)) {
                                                    Context context4 = Utils.getContext();
                                                    StringBuilder sb5 = new StringBuilder();
                                                    sb5.append(jSONObject.get(str2));
                                                    sb5.append(str12);
                                                    PreferenceUtil.put(context4, str2, sb5.toString());
                                                }
                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                        KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE54).build());
                                        MyInfoActivity.this.finish();
                                    } else {
                                        return;
                                    }
                                }
                                ToastUtils.showShort((CharSequence) jsonObject.optString("msg"));
                            }
                        }
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void initAlertDialog(String str, String str2, final String str3) {
        new AlertDialog(this).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
            }
        }).setPositiveButton("修改", new OnClickListener() {
            public void onClick(View view) {
                if (!StringUtils.isEmpty(str3) && str3.equals(UserPreference.SEX)) {
                    MyInfoActivity.this.initSexDialog();
                } else if (!StringUtils.isEmpty(str3) && str3.equals("birth")) {
                    MyInfoActivity.this.showDatePickerDialog();
                } else if (!StringUtils.isEmpty(str3) && str3.equals("home")) {
                    MyInfoActivity.this.showHomePickerDialog();
                }
            }
        }).show();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!this.isChange) {
            return super.onKeyDown(i, keyEvent);
        }
        showSaveDialog();
        return true;
    }

    private void showSaveDialog() {
        CommonViewModel.initAlertDialog(this, "提示", "是否保存修改？", "保存", "不保存", new OnClickListener() {
            public void onClick(View view) {
                MyInfoActivity.this.saveInfo();
            }
        }, new OnClickListener() {
            public void onClick(View view) {
                MyInfoActivity.this.finish();
            }
        });
    }
}
