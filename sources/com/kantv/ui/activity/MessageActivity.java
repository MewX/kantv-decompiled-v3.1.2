package com.kantv.ui.activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.imkan.tv.R;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.utils.PreferenceUtil;
import q.rorbin.badgeview.Badge;
import q.rorbin.badgeview.QBadgeView;

public class MessageActivity extends PackageActivity {
    @BindView(2131296837)
    TextView likeText;
    private Badge mLike;
    private Badge mSend;
    @BindView(2131297179)
    TextView sendText;
    @BindView(2131297293)
    ImageView titleLeftImg;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131296482)
    RelativeLayout titleRelateLayout;
    @BindView(2131297295)
    ImageView titleRightImg;
    @BindView(2131296483)
    TextView titleTV;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_message);
        initBase();
        initStatusBar();
        initView();
    }

    private void initView() {
        initTitle();
        Integer valueOf = Integer.valueOf(0);
        int intValue = ((Integer) PreferenceUtil.get(UserPreference.MSG_COMMENT_COUNT, valueOf)).intValue();
        int intValue2 = ((Integer) PreferenceUtil.get(UserPreference.MSG_LIKE_COUNT, valueOf)).intValue();
        if (intValue > 0) {
            this.mSend = new QBadgeView(this).bindTarget(this.sendText).setBadgeNumber(intValue).setBadgeGravity(8388629);
        }
        if (intValue2 > 0) {
            this.mLike = new QBadgeView(this).bindTarget(this.likeText).setBadgeNumber(intValue2).setBadgeGravity(8388629);
        }
    }

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.titleTV.setText("我的消息");
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleTV.setTextSize(18.0f);
        this.titleRightImg.setVisibility(8);
        this.titleLeftLayout.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MessageActivity.this.finish();
            }
        });
    }

    @OnClick({2131296895, 2131296896, 2131296894})
    public void onClick(View view) {
        int id = view.getId();
        Integer valueOf = Integer.valueOf(0);
        switch (id) {
            case R.id.message_agree /*2131296894*/:
                PreferenceUtil.put(UserPreference.MSG_LIKE_COUNT, valueOf);
                Badge badge = this.mLike;
                if (badge != null) {
                    badge.setBadgeNumber(0);
                }
                gotoActivity(AgreeMsgActivity.class);
                return;
            case R.id.message_received /*2131296895*/:
                PreferenceUtil.put(UserPreference.MSG_COMMENT_COUNT, valueOf);
                Badge badge2 = this.mSend;
                if (badge2 != null) {
                    badge2.setBadgeNumber(0);
                }
                gotoActivity(ReceiveMsgActivity.class);
                return;
            case R.id.message_send /*2131296896*/:
                gotoActivity(SendMsgActivity.class);
                return;
            default:
                return;
        }
    }
}
