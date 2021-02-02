package com.kantv.ui.fragment;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.transition.TransitionSet;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.google.android.exoplayer2.C;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.lib.indicator.IndicatorViewPager;
import com.kantv.lib.indicator.IndicatorViewPager.IndicatorFragmentPagerAdapter;
import com.kantv.lib.indicator.ScrollIndicatorView;
import com.kantv.lib.indicator.transition.OnTransitionTextListener;
import com.kantv.ui.MainActivity.IFragment;
import com.kantv.ui.activity.AccountLoginActivity;
import com.kantv.ui.activity.MeActivity;
import com.kantv.ui.activity.NewCollectHistroyActivity;
import com.kantv.ui.activity.SearchActivity;
import com.kantv.ui.activity.WebViewActivity;
import com.kantv.ui.bean.EventBusBean;
import com.kantv.ui.bean.NavBean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.interfaces.ScrollEffect;
import com.kantv.ui.utils.DateUtil;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.view.AlertDialog;
import com.kantv.ui.view.CircleImageView;
import com.kantv.ui.view.MyQBadageView;
import com.kantv.ui.viewmodel.CommonViewModel;
import com.tandong.bottomview.view.BottomView;
import debug.KanApplication;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import okhttp3.ResponseBody;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONArray;
import org.json.JSONObject;
import org.seamless.xhtml.XHTML.ATTR;
import q.rorbin.badgeview.Badge;
import retrofit2.Call;
import retrofit2.Response;

public class TabNewsFragment extends BaseFragment implements ScrollEffect, IFragment {
    private static final String TAG = "TabNewsFragment";
    /* access modifiers changed from: private */
    public Handler adPopHandler = new Handler();
    Runnable adPopRunnable = new Runnable() {
        public void run() {
            try {
                if (TabNewsFragment.this.mBottomView != null) {
                    TabNewsFragment.this.mBottomView.showBottomView(true);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };
    private boolean first = true;
    private IndicatorFragmentPagerAdapter fragmentPagerAdapter;
    private IndicatorViewPager indicatorViewPager;
    boolean isExpand = true;
    /* access modifiers changed from: private */
    public boolean isExpandAnimator = false;
    @BindView(2131296810)
    ImageView iv_histroy;
    @BindView(2131296812)
    ImageView iv_save;
    /* access modifiers changed from: private */
    public BottomView mBottomView = null;
    /* access modifiers changed from: private */
    public List<Fragment> mFragmentData;
    private boolean mLogin;
    private int mMeasuredHeight = 0;
    public List<NavBean> mNavData;
    private Badge mQBadgeView;
    @BindView(2131296864)
    LinearLayout mSearchLayout;
    private TransitionSet mTransitionSet;
    @BindView(2131296902)
    CircleImageView mine_head;
    @BindView(2131296912)
    ScrollIndicatorView scrollIndicatorView;
    @BindView(2131297163)
    LinearLayout searchbar;
    @BindView(2131297329)
    TextView tvSearch;
    @BindView(2131297259)
    public ViewPager viewPager;

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.fragment_tab_new, null);
        initRequestPopAd();
        return this.mRootView;
    }

    public void initData() {
        if (this.first) {
            this.first = false;
            this.mNavData = new ArrayList();
            initCacheData();
            EventBus.getDefault().register(this);
            this.mQBadgeView = new MyQBadageView(getContext()).bindTarget(this.mine_head);
        }
    }

    public void onResume() {
        super.onResume();
        initUserHead();
    }

    private void initUserHead() {
        Context context = Utils.getContext();
        Integer valueOf = Integer.valueOf(0);
        this.mLogin = ((Boolean) PreferenceUtil.get(context, "Login_State", Boolean.valueOf(false))).booleanValue();
        if (this.mLogin) {
            String str = "";
            GlideUtils.loadimage((String) PreferenceUtil.get(Utils.getContext(), "Photo", str), this.mine_head);
            this.mQBadgeView.setBadgeText(str);
            if (((Integer) PreferenceUtil.get(UserPreference.MSG_COMMENT_COUNT, valueOf)).intValue() + ((Integer) PreferenceUtil.get(UserPreference.MSG_LIKE_COUNT, valueOf)).intValue() <= 0) {
                this.mQBadgeView.setBadgeNumber(0);
                return;
            }
            return;
        }
        this.mine_head.setImageDrawable(getResources().getDrawable(R.drawable.avatar));
        this.mQBadgeView.setBadgeNumber(0);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void EventBusAccept(EventBusBean eventBusBean) {
        if (eventBusBean.getClassname().equals(TAG)) {
            String type = eventBusBean.getType();
            char c = 65535;
            int hashCode = type.hashCode();
            if (hashCode != 3107) {
                if (hashCode == 47665 && type.equals("001")) {
                    c = 0;
                }
            } else if (type.equals("ad")) {
                c = 1;
            }
            if (c == 0) {
                this.tvSearch.setText(eventBusBean.getData());
            }
        }
    }

    private void initCacheData() {
        String str = "";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.NEWS_NAV_JSON, str);
        int isCache = DateUtil.isCache(str2, (String) PreferenceUtil.get(Utils.getContext(), UserPreference.NEWS_NAV_TIME, str));
        if (isCache == 0) {
            initParse(str2);
        } else if (isCache == 1) {
            initRequest(str2);
        }
    }

    /* access modifiers changed from: private */
    public void initParse(String str) {
        AILog.d("头部导航信息", str);
        JSONObject jsonObject = StringUtils.toJsonObject(str);
        if (jsonObject != null) {
            JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
            if (jsonObject2 != null) {
                JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString(ATTR.CLASS));
                if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                    for (int i = 0; i < jsonArray.length(); i++) {
                        JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                        String str2 = "";
                        if (Integer.parseInt(Utils.interfaceVersion) < 100) {
                            this.mNavData.add(new NavBean(jSONobject.optString("id"), jSONobject.optString("value"), str2));
                        } else {
                            this.mNavData.add(new NavBean(jSONobject.optString("_id"), jSONobject.optString("name"), str2));
                        }
                    }
                    initTopNavi();
                }
            }
        }
    }

    private void initRequest(final String str) {
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().getNewsNav(this.request).enqueue(new CommonCallBack(getActivity(), false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!TabNewsFragment.this.isonDestroy) {
                    if (!StringUtils.isEmpty(this.json)) {
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                PreferenceUtil.put(Utils.getContext(), UserPreference.NEWS_NAV_JSON, this.json);
                                PreferenceUtil.put(Utils.getContext(), UserPreference.NEWS_NAV_TIME, String.valueOf(System.currentTimeMillis() / 1000));
                                TabNewsFragment.this.initParse(this.json);
                            } else if (!StringUtils.isEmpty(str)) {
                                TabNewsFragment.this.initParse(str);
                            }
                        }
                    } else if (!StringUtils.isEmpty(str)) {
                        TabNewsFragment.this.initParse(str);
                    }
                }
            }
        });
    }

    private void initTopNavi() {
        this.mFragmentData = new ArrayList();
        for (int i = 0; i < this.mNavData.size(); i++) {
            Bundle bundle = new Bundle();
            NewsFragment newsFragment = new NewsFragment();
            bundle.putString("value", ((NavBean) this.mNavData.get(i)).getValue());
            bundle.putString("id", ((NavBean) this.mNavData.get(i)).getId());
            bundle.putInt(Param.INDEX, i);
            try {
                if (Integer.valueOf(((NavBean) this.mNavData.get(i)).getId()).intValue() < 0) {
                    bundle.putString("default", "1");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            newsFragment.setArguments(bundle);
            newsFragment.setScrollEffect(this);
            this.mFragmentData.add(newsFragment);
        }
        this.fragmentPagerAdapter = new IndicatorFragmentPagerAdapter(getChildFragmentManager()) {
            public int getItemPosition(Object obj) {
                return -1;
            }

            public int getCount() {
                return TabNewsFragment.this.mFragmentData.size();
            }

            public View getViewForTab(int i, View view, ViewGroup viewGroup) {
                if (view == null) {
                    view = LayoutInflater.from(Utils.getContext()).inflate(R.layout.tab_top, viewGroup, false);
                }
                TextView textView = (TextView) view;
                StringBuilder sb = new StringBuilder();
                sb.append("### position : ");
                sb.append(i);
                sb.append(" value : ");
                sb.append(((NavBean) TabNewsFragment.this.mNavData.get(i)).getValue());
                AILog.d(sb.toString());
                textView.setText(((NavBean) TabNewsFragment.this.mNavData.get(i)).getValue());
                textView.setWidth(((int) (((float) getTextWidth(textView)) * 1.2f)) + DisplayUtil.dipToPix(Utils.getContext(), 10));
                return view;
            }

            public Fragment getFragmentForPage(int i) {
                return (Fragment) TabNewsFragment.this.mFragmentData.get(i);
            }

            private int getTextWidth(TextView textView) {
                if (textView == null) {
                    return 0;
                }
                Rect rect = new Rect();
                String charSequence = textView.getText().toString();
                textView.getPaint().getTextBounds(charSequence, 0, charSequence.length(), rect);
                return rect.left + rect.width();
            }
        };
        this.scrollIndicatorView.setOnTransitionListener(new OnTransitionTextListener().setColor(ViewCompat.MEASURED_STATE_MASK, getResources().getColor(R.color.temp_tv_color)).setSize(20.400002f, 17.0f));
        List<Fragment> list = this.mFragmentData;
        if (list != null && list.size() > 0) {
            this.viewPager.setOffscreenPageLimit(this.mFragmentData.size());
        }
        this.indicatorViewPager = new IndicatorViewPager(this.scrollIndicatorView, this.viewPager);
        this.indicatorViewPager.setAdapter(this.fragmentPagerAdapter);
    }

    @OnClick({2131296864, 2131296902, 2131296812, 2131296810})
    public void onClick(View view) {
        String str = "jumpIndex";
        switch (view.getId()) {
            case R.id.iv_histroy /*2131296810*/:
                if (this.mLogin) {
                    Bundle bundle = new Bundle();
                    bundle.putInt(str, 1);
                    gotoActivity(bundle, NewCollectHistroyActivity.class);
                    return;
                }
                initAlertDialog(getResources().getString(R.string.login_text1), getResources().getString(R.string.login_text3), 2);
                return;
            case R.id.iv_save /*2131296812*/:
                if (this.mLogin) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt(str, 0);
                    gotoActivity(bundle2, NewCollectHistroyActivity.class);
                    return;
                }
                initAlertDialog(getResources().getString(R.string.login_text1), getResources().getString(R.string.login_text3), 2);
                return;
            case R.id.ll_search /*2131296864*/:
                if (CommonViewModel.checkNotification(getContext(), getResources().getString(R.string.open_push_title), getResources().getString(R.string.open_push_tips), UserPreference.SEARCH_MUST_OPEN_PUSH)) {
                    Bundle bundle3 = new Bundle();
                    bundle3.putString("seo", "news");
                    gotoActivity(bundle3, SearchActivity.class);
                    return;
                }
                return;
            case R.id.mine_head /*2131296902*/:
                gotoActivity(MeActivity.class);
                return;
            default:
                return;
        }
    }

    private void initRequestPopAd() {
        String str = Build.SERIAL;
        if (this.request == null) {
            this.request = new HashMap();
        }
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("getPop", str);
        this.request.put("seo", "news");
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().getPop(this.request).enqueue(new CommonCallBack(getActivity(), false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!TabNewsFragment.this.isonDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        final JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                        if (jsonObject2 != null) {
                            String str = "photo";
                            if (!StringUtils.isEmpty(jsonObject2.optString(str))) {
                                String optString = jsonObject2.optString(str);
                                TabNewsFragment tabNewsFragment = TabNewsFragment.this;
                                tabNewsFragment.mBottomView = new BottomView((Context) tabNewsFragment.getActivity(), (int) R.style.BottomViewTheme_Defalut, (int) R.layout.item_advertising);
                                TabNewsFragment.this.mBottomView.setAnimation(R.style.BottomToTopAnim);
                                ImageView imageView = (ImageView) TabNewsFragment.this.mBottomView.getView().findViewById(R.id.item_advertising_gb);
                                ImageView imageView2 = (ImageView) TabNewsFragment.this.mBottomView.getView().findViewById(R.id.item_advertising_img);
                                imageView2.setOnClickListener(new OnClickListener() {
                                    public void onClick(View view) {
                                        Bundle bundle = new Bundle();
                                        String str = "opentype";
                                        String str2 = "url";
                                        if (StringUtils.isEmpty(jsonObject2.optString(str)) || !jsonObject2.optString(str).equals("0")) {
                                            String str3 = "title";
                                            bundle.putString(str3, jsonObject2.optString(str3));
                                            bundle.putString(str2, jsonObject2.optString(str2));
                                            Intent intent = new Intent(Utils.getContext(), WebViewActivity.class);
                                            intent.setFlags(C.ENCODING_PCM_MU_LAW);
                                            intent.putExtras(bundle);
                                            Utils.getContext().startActivity(intent);
                                        } else {
                                            Intent intent2 = new Intent();
                                            intent2.setAction("android.intent.action.VIEW");
                                            intent2.setData(Uri.parse(jsonObject2.optString(str2)));
                                            intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                                            Utils.getContext().startActivity(intent2);
                                        }
                                        if (TabNewsFragment.this.mBottomView != null) {
                                            TabNewsFragment.this.mBottomView.dismissBottomView();
                                            TabNewsFragment.this.mBottomView = null;
                                        }
                                    }
                                });
                                imageView.setOnClickListener(new OnClickListener() {
                                    public void onClick(View view) {
                                        if (TabNewsFragment.this.mBottomView != null) {
                                            TabNewsFragment.this.mBottomView.dismissBottomView();
                                            TabNewsFragment.this.mBottomView = null;
                                        }
                                    }
                                });
                                int length = optString.length();
                                if (length >= 3) {
                                    if (optString.substring(length - 3, length).equals("gif")) {
                                        Glide.with(Utils.getContext()).load(optString).asGif().diskCacheStrategy(DiskCacheStrategy.ALL).into(imageView2);
                                    } else {
                                        Glide.with(Utils.getContext()).load(optString).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.ALL).listener((RequestListener<? super ModelType, GlideDrawable>) new RequestListener<String, GlideDrawable>() {
                                            public boolean onException(Exception exc, String str, Target<GlideDrawable> target, boolean z) {
                                                return false;
                                            }

                                            public boolean onResourceReady(GlideDrawable glideDrawable, String str, Target<GlideDrawable> target, boolean z, boolean z2) {
                                                TabNewsFragment.this.adPopHandler.postDelayed(TabNewsFragment.this.adPopRunnable, 500);
                                                return false;
                                            }
                                        }).into(imageView2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        });
    }

    public void expand() {
        if (!this.isExpand && !this.isExpandAnimator) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("expand:mMeasuredHeight ");
            sb.append(this.searchbar.getHeight());
            sb.append(" ");
            sb.append(this.mMeasuredHeight);
            sb.append(this.isExpand);
            AILog.d(str, sb.toString());
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{0, this.mMeasuredHeight});
            ofInt.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TabNewsFragment.this.setVisiableHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
                }
            });
            ofInt.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    TabNewsFragment.this.isExpandAnimator = false;
                    super.onAnimationEnd(animator);
                }

                public void onAnimationStart(Animator animator) {
                    TabNewsFragment.this.isExpandAnimator = true;
                    super.onAnimationStart(animator);
                }
            });
            ofInt.setDuration(300).start();
            this.isExpand = true;
        }
    }

    public void reduce() {
        LinearLayout linearLayout = this.searchbar;
        if (!(linearLayout == null || linearLayout.getHeight() == 0 || this.mMeasuredHeight != 0)) {
            this.mMeasuredHeight = this.searchbar.getHeight();
        }
        if (this.isExpand && !this.isExpandAnimator) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("reduce:mMeasuredHeight");
            sb.append(this.searchbar.getHeight());
            sb.append(" ");
            sb.append(this.mMeasuredHeight);
            AILog.d(str, sb.toString());
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{this.mMeasuredHeight, 0});
            ofInt.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TabNewsFragment.this.setVisiableHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
                }
            });
            ofInt.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    TabNewsFragment.this.isExpandAnimator = false;
                    super.onAnimationEnd(animator);
                }

                public void onAnimationStart(Animator animator) {
                    TabNewsFragment.this.isExpandAnimator = true;
                    super.onAnimationStart(animator);
                }
            });
            ofInt.setDuration(300).start();
            this.isExpand = false;
        }
    }

    public void setVisiableHeight(int i) {
        if (i < 0) {
            i = 0;
        }
        LayoutParams layoutParams = new LayoutParams(-1, 0);
        layoutParams.height = i;
        this.searchbar.setLayoutParams(layoutParams);
    }

    public void onDestroyView() {
        super.onDestroyView();
        BottomView bottomView = this.mBottomView;
        if (bottomView != null) {
            bottomView.dismissBottomView();
            this.mBottomView = null;
        }
        Handler handler = this.adPopHandler;
        if (handler != null) {
            handler.removeCallbacks(this.adPopRunnable);
        }
    }

    private void initAlertDialog(String str, String str2, final int i) {
        new AlertDialog((Context) new WeakReference(getActivity()).get()).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
                new Bundle().putString("num", "1");
                KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE64).build());
            }
        }).setPositiveButton("确定", new OnClickListener() {
            public void onClick(View view) {
                int i = i;
                if (i != 1 && i == 2) {
                    TabNewsFragment.this.gotoActivity(AccountLoginActivity.class);
                }
            }
        }).show();
    }

    public void onDestroy() {
        super.onDestroy();
        List<Fragment> list = this.mFragmentData;
        if (list != null) {
            list.clear();
            this.mFragmentData = null;
        }
        this.fragmentPagerAdapter = null;
        this.viewPager = null;
        Handler handler = this.adPopHandler;
        if (handler != null) {
            handler.removeCallbacks(this.adPopRunnable);
        }
        BottomView bottomView = this.mBottomView;
        if (bottomView != null) {
            bottomView.dismissBottomView();
            this.mBottomView = null;
        }
        EventBus.getDefault().unregister(this);
    }

    public int getIndex() {
        IndicatorViewPager indicatorViewPager2 = this.indicatorViewPager;
        if (indicatorViewPager2 == null) {
            return 0;
        }
        return indicatorViewPager2.getCurrentItem();
    }
}
