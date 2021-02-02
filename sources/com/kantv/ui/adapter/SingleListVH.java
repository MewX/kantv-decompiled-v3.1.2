package com.kantv.ui.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.imkan.tv.R;
import com.kantv.ui.view.ShapedImageView;

public class SingleListVH extends ViewHolder {
    RelativeLayout item_card_img_rl;
    RelativeLayout mBj;
    TextView mDesc;
    TextView mGenxin;
    TextView mHeat;
    ImageView mHuore;
    ShapedImageView mIng;
    TextView mName;
    TextView mNumber1;
    TextView mNumber2;
    LinearLayout mQj;
    TextView mUpdate;

    public SingleListVH(View view) {
        super(view);
        this.item_card_img_rl = (RelativeLayout) view.findViewById(R.id.item_card_img_rl);
        this.mIng = (ShapedImageView) view.findViewById(R.id.item_card_img);
        this.mBj = (RelativeLayout) view.findViewById(R.id.item_card_img_rl);
        this.mName = (TextView) view.findViewById(R.id.item_card_name);
        this.mDesc = (TextView) view.findViewById(R.id.item_card_desc);
        this.mNumber1 = (TextView) view.findViewById(R.id.item_number1);
        this.mNumber2 = (TextView) view.findViewById(R.id.item_number2);
        this.mUpdate = (TextView) view.findViewById(R.id.item_update);
        this.mQj = (LinearLayout) view.findViewById(R.id.item_card_ll);
    }
}
