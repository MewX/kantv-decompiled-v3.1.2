package com.kantv.ui.fragment;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.transition.TransitionSet;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
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
import com.kantv.ui.activity.FeedBackActivity;
import com.kantv.ui.activity.MeActivity;
import com.kantv.ui.activity.SearchActivity;
import com.kantv.ui.bean.EventBusBean;
import com.kantv.ui.bean.NavBean;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.interfaces.ScrollEffect;
import com.kantv.ui.utils.DateUtil;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.view.CircleImageView;
import com.kantv.ui.view.MyQBadageView;
import com.kantv.ui.viewmodel.CommonViewModel;
import debug.KanApplication;
import java.util.ArrayList;
import java.util.List;
import okhttp3.ResponseBody;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONArray;
import org.json.JSONObject;
import q.rorbin.badgeview.Badge;
import retrofit2.Call;
import retrofit2.Response;

public class TabTvFragment extends BaseFragment implements ScrollEffect, IFragment {
    @BindView(2131296575)
    ImageView feedBackImg;
    private boolean first = true;
    private IndicatorFragmentPagerAdapter fragmentPagerAdapter;
    private IndicatorViewPager indicatorViewPager;
    boolean isExpand = true;
    boolean isExpandAnimator = false;
    /* access modifiers changed from: private */
    public List<Fragment> mFragmentData;
    private boolean mLogin;
    private int mMeasuredHeight = 0;
    public List<NavBean> mNavData;
    private Badge mQBadgeView;
    @BindView(2131296864)
    LinearLayout mSearchLayout;
    private TransitionSet mTransitionSet;
    CircleImageView mine_head;
    @BindView(2131296911)
    ScrollIndicatorView scrollIndicatorView;
    @BindView(2131297163)
    RelativeLayout searchbar;
    @BindView(2131297329)
    TextView tvSearch;
    @BindView(2131297260)
    public ViewPager viewPager;

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.fragment_tv, null);
        this.mine_head = (CircleImageView) this.mRootView.findViewById(R.id.mine_head);
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
            if (((Integer) PreferenceUtil.get(UserPreference.MSG_COMMENT_COUNT, valueOf)).intValue() + ((Integer) PreferenceUtil.get(UserPreference.MSG_LIKE_COUNT, valueOf)).intValue() > 0) {
                this.mQBadgeView.setBadgeNumber(-1);
            } else {
                this.mQBadgeView.setBadgeNumber(0);
            }
        } else {
            this.mine_head.setImageDrawable(getResources().getDrawable(R.drawable.avatar));
            this.mQBadgeView.setBadgeNumber(0);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void EventBusAccept(EventBusBean eventBusBean) {
        if (eventBusBean.getClassname().equals("TabTvFragment")) {
            String type = eventBusBean.getType();
            char c = 65535;
            if (type.hashCode() == 47665 && type.equals("001")) {
                c = 0;
            }
            if (c == 0) {
                this.tvSearch.setText(eventBusBean.getData());
            }
        }
    }

    private void initCacheData() {
        String str = "";
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), "nav_json", str);
        int isCache = DateUtil.isCache(str2, (String) PreferenceUtil.get(Utils.getContext(), "nav_time", str));
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
                JSONArray jsonArray = StringUtils.toJsonArray(jsonObject2.optString("nav"));
                if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                    for (int i = 0; i < jsonArray.length(); i++) {
                        JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, i);
                        String str2 = "value";
                        String str3 = "id";
                        if (i == 0) {
                            this.mNavData.add(new NavBean(jSONobject.optString(str3), jSONobject.optString(str2), "0"));
                        } else {
                            this.mNavData.add(new NavBean(jSONobject.optString(str3), jSONobject.optString(str2), jSONobject.optString("type")));
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
        AILog.d("头部导航信息传参", this.request.toString());
        Api.getService().getNav(this.request).enqueue(new CommonCallBack(getActivity(), false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!TabTvFragment.this.isonDestroy) {
                    if (!StringUtils.isEmpty(this.json)) {
                        AILog.d("版本信息", Utils.interfaceVersion);
                        AILog.d("头部导航信息", this.json);
                        JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                        if (jsonObject != null) {
                            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                                PreferenceUtil.put(Utils.getContext(), "nav_json", this.json);
                                PreferenceUtil.put(Utils.getContext(), "nav_time", String.valueOf(System.currentTimeMillis() / 1000));
                                TabTvFragment.this.initParse(this.json);
                            } else if (!StringUtils.isEmpty(str)) {
                                TabTvFragment.this.initParse(str);
                            }
                        }
                    } else if (!StringUtils.isEmpty(str)) {
                        TabTvFragment.this.initParse(str);
                    }
                }
            }
        });
    }

    private void initTopNavi() {
        this.mFragmentData = new ArrayList();
        int i = 0;
        while (true) {
            char c = 65535;
            if (i >= this.mNavData.size()) {
                break;
            }
            String type = ((NavBean) this.mNavData.get(i)).getType();
            int hashCode = type.hashCode();
            if (hashCode != 48) {
                if (hashCode == 49 && type.equals("1")) {
                    c = 1;
                }
            } else if (type.equals("0")) {
                c = 0;
            }
            String str = "id";
            String str2 = "value";
            if (c == 0) {
                TvDefaultFragment tvDefaultFragment = new TvDefaultFragment();
                Bundle bundle = new Bundle();
                bundle.putString(str2, ((NavBean) this.mNavData.get(i)).getValue());
                bundle.putString(str, ((NavBean) this.mNavData.get(i)).getId());
                tvDefaultFragment.setArguments(bundle);
                tvDefaultFragment.setScrollEffect(this);
                this.mFragmentData.add(tvDefaultFragment);
            } else if (c == 1) {
                Bundle bundle2 = new Bundle();
                VideoClassFragment videoClassFragment = new VideoClassFragment();
                bundle2.putString(str2, ((NavBean) this.mNavData.get(i)).getValue());
                bundle2.putString(str, ((NavBean) this.mNavData.get(i)).getId());
                videoClassFragment.setArguments(bundle2);
                videoClassFragment.setScrollEffect(this);
                this.mFragmentData.add(videoClassFragment);
            }
            i++;
        }
        this.fragmentPagerAdapter = new IndicatorFragmentPagerAdapter(getChildFragmentManager()) {
            public int getItemPosition(Object obj) {
                return -1;
            }

            public int getCount() {
                return TabTvFragment.this.mFragmentData.size();
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
                sb.append(((NavBean) TabTvFragment.this.mNavData.get(i)).getValue());
                AILog.d(sb.toString());
                textView.setText(((NavBean) TabTvFragment.this.mNavData.get(i)).getValue());
                textView.setWidth(((int) (((float) getTextWidth(textView)) * 1.2f)) + DisplayUtil.dipToPix(Utils.getContext(), 10));
                return view;
            }

            public Fragment getFragmentForPage(int i) {
                return (Fragment) TabTvFragment.this.mFragmentData.get(i);
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
        this.scrollIndicatorView.setOnTransitionListener(new OnTransitionTextListener().setColor(-1, getResources().getColor(R.color.hot_gray)).setSize(20.400002f, 17.0f));
        List<Fragment> list = this.mFragmentData;
        if (list != null && list.size() > 0) {
            this.viewPager.setOffscreenPageLimit(this.mFragmentData.size());
        }
        this.indicatorViewPager = new IndicatorViewPager(this.scrollIndicatorView, this.viewPager);
        this.indicatorViewPager.setAdapter(this.fragmentPagerAdapter);
    }

    @OnClick({2131296864, 2131296575, 2131296902})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.feedback) {
            gotoActivity(FeedBackActivity.class);
        } else if (id != R.id.ll_search) {
            if (id == R.id.mine_head) {
                gotoActivity(MeActivity.class);
            }
        } else if (CommonViewModel.checkNotification(getContext(), getResources().getString(R.string.open_push_title), getResources().getString(R.string.open_push_tips), UserPreference.SEARCH_MUST_OPEN_PUSH)) {
            Bundle bundle = new Bundle();
            bundle.putString("seo", "video");
            gotoActivity(bundle, SearchActivity.class);
        }
    }

    public void expand() {
        if (!this.isExpand) {
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{0, this.mMeasuredHeight});
            ofInt.setDuration(300).start();
            ofInt.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TabTvFragment.this.setVisiableHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
                }
            });
            ofInt.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    TabTvFragment.this.isExpandAnimator = false;
                    super.onAnimationEnd(animator);
                }

                public void onAnimationStart(Animator animator) {
                    TabTvFragment.this.isExpandAnimator = true;
                    super.onAnimationStart(animator);
                }
            });
            ofInt.start();
            this.isExpand = true;
            this.feedBackImg.setVisibility(0);
        }
    }

    public void reduce() {
        RelativeLayout relativeLayout = this.searchbar;
        if (!(relativeLayout == null || relativeLayout.getHeight() == 0 || this.mMeasuredHeight != 0)) {
            this.mMeasuredHeight = this.searchbar.getHeight();
        }
        if (this.isExpand && !this.isExpandAnimator) {
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{this.mMeasuredHeight, 0});
            ofInt.setDuration(300).start();
            ofInt.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TabTvFragment.this.setVisiableHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
                }
            });
            ofInt.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    TabTvFragment.this.isExpandAnimator = false;
                    super.onAnimationEnd(animator);
                }

                public void onAnimationStart(Animator animator) {
                    TabTvFragment.this.isExpandAnimator = true;
                    super.onAnimationStart(animator);
                }
            });
            ofInt.start();
            this.isExpand = false;
            this.feedBackImg.setVisibility(8);
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

    private int dip2px(float f) {
        return (int) ((f * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void onDestroy() {
        super.onDestroy();
        List<Fragment> list = this.mFragmentData;
        if (list != null) {
            list.clear();
            this.mFragmentData = null;
        }
        this.fragmentPagerAdapter = null;
        this.indicatorViewPager = null;
        this.viewPager = null;
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
