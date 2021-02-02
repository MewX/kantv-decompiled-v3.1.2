package com.kantv.ui.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import androidx.recyclerview.widget.RecyclerView.Adapter;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.imkan.tv.R;
import com.kantv.common.utils.StringUtils;
import com.kantv.ui.bean.String15Bean;
import com.kantv.ui.utils.GlideUtils;
import io.fabric.sdk.android.services.common.IdManager;
import java.text.DecimalFormat;
import java.util.List;
import org.json.JSONObject;

public class HistoryAdapter extends Adapter<ViewHolder> {
    private final int EMPTY_VIEW = 1;
    private final int PROGRESS_VIEW = 2;
    /* access modifiers changed from: private */
    public CallbackInterface clickListener;
    /* access modifiers changed from: private */
    public List<String15Bean> list;
    /* access modifiers changed from: private */
    public CallbackInterface mDeleteListener;

    public HistoryAdapter(List<String15Bean> list2, CallbackInterface callbackInterface) {
        this.list = list2;
        this.clickListener = callbackInterface;
    }

    public void setDeleteListener(CallbackInterface callbackInterface) {
        this.mDeleteListener = callbackInterface;
    }

    public int getItemViewType(int i) {
        if (((String15Bean) this.list.get(i)).getStr1().equals("0")) {
            return 1;
        }
        if (((String15Bean) this.list.get(i)).getStr1().equals("1")) {
            return 2;
        }
        return super.getItemViewType(i);
    }

    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new TitleVH(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.header_index, viewGroup, false));
        }
        return new HistoryVH(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_history, viewGroup, false));
    }

    public void onBindViewHolder(final ViewHolder viewHolder, final int i) {
        if (viewHolder instanceof TitleVH) {
            ((TitleVH) viewHolder).mText.setText(((String15Bean) this.list.get(i)).getStr2());
        } else if (viewHolder instanceof HistoryVH) {
            HistoryVH historyVH = (HistoryVH) viewHolder;
            GlideUtils.loadimage(((String15Bean) this.list.get(i)).getStr6(), historyVH.mMovie);
            new DecimalFormat(IdManager.DEFAULT_VERSION_NAME).format(Double.valueOf(Double.parseDouble(((String15Bean) this.list.get(i)).getStr9())));
            historyVH.mTitle.setText(((String15Bean) this.list.get(i)).getStr2());
            if (!StringUtils.isEmpty(((String15Bean) this.list.get(i)).getStr3())) {
                JSONObject jsonObject = StringUtils.toJsonObject(((String15Bean) this.list.get(i)).getStr3());
                if (jsonObject != null) {
                    historyVH.mTag.setText(jsonObject.optString("part"));
                    historyVH.mActor.setText(jsonObject.optString("time"));
                } else {
                    return;
                }
            }
            String str = "0";
            if (((String15Bean) this.list.get(i)).getStr11().equals(str)) {
                historyVH.mCheck.setVisibility(8);
            } else {
                historyVH.mCheck.setVisibility(0);
            }
            if (((String15Bean) this.list.get(i)).getStr12().equals(str)) {
                historyVH.mCheck.setChecked(false);
            } else {
                historyVH.mCheck.setChecked(true);
            }
            historyVH.mCheck.setOnCheckedChangeListener(new OnCheckedChangeListener() {
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (HistoryAdapter.this.list.size() == i) {
                        return;
                    }
                    if (z) {
                        if (HistoryAdapter.this.list.size() > i) {
                            ((String15Bean) HistoryAdapter.this.list.get(i)).setStr12("1");
                        }
                    } else if (HistoryAdapter.this.list.size() > i) {
                        ((String15Bean) HistoryAdapter.this.list.get(i)).setStr12("0");
                    }
                }
            });
            historyVH.mQj.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    if (((HistoryVH) viewHolder).mCheck.getVisibility() == 8) {
                        HistoryAdapter.this.clickListener.onClick(view, i);
                    } else if (((String15Bean) HistoryAdapter.this.list.get(i)).getStr12().equals("0")) {
                        ((HistoryVH) viewHolder).mCheck.setChecked(true);
                    } else {
                        ((HistoryVH) viewHolder).mCheck.setChecked(false);
                    }
                }
            });
            historyVH.mDelete.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    HistoryAdapter.this.mDeleteListener.onClick(view, i);
                }
            });
        }
    }

    public int getItemCount() {
        return this.list.size();
    }
}
