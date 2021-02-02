package com.kantv.ui.view;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.imkan.tv.R;
import java.util.ArrayList;
import java.util.List;

public class ActionSheetDialog {
    private Context context;
    /* access modifiers changed from: private */
    public Dialog dialog;
    private Display display;
    private LinearLayout lLayout_content;
    private ScrollView sLayout_content;
    private List<SheetItem> sheetItemList;
    private boolean showTitle = false;
    private TextView txt_cancel;
    private TextView txt_title;

    public interface OnSheetItemClickListener {
        void onClick(int i);
    }

    public class SheetItem {
        SheetItemColor color;
        OnSheetItemClickListener itemClickListener;
        String name;

        public SheetItem(String str, SheetItemColor sheetItemColor, OnSheetItemClickListener onSheetItemClickListener) {
            this.name = str;
            this.color = sheetItemColor;
            this.itemClickListener = onSheetItemClickListener;
        }
    }

    public enum SheetItemColor {
        Blue("#1D94F0"),
        Red("#FD4A2E"),
        DrgGreen("#00b6c8");
        
        private String name;

        private SheetItemColor(String str) {
            this.name = str;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }
    }

    public ActionSheetDialog(Context context2) {
        this.context = context2;
        this.display = ((WindowManager) context2.getSystemService("window")).getDefaultDisplay();
    }

    public ActionSheetDialog builder() {
        View inflate = LayoutInflater.from(this.context).inflate(R.layout.view_actionsheet, null);
        inflate.setMinimumWidth(this.display.getWidth());
        this.sLayout_content = (ScrollView) inflate.findViewById(R.id.sLayout_content);
        this.lLayout_content = (LinearLayout) inflate.findViewById(R.id.lLayout_content);
        this.txt_title = (TextView) inflate.findViewById(R.id.txt_title);
        this.txt_cancel = (TextView) inflate.findViewById(R.id.txt_cancel);
        this.txt_cancel.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ActionSheetDialog.this.dialog.dismiss();
            }
        });
        this.dialog = new Dialog(this.context, R.style.ActionSheetDialogStyle);
        this.dialog.setContentView(inflate);
        Window window = this.dialog.getWindow();
        window.setGravity(83);
        LayoutParams attributes = window.getAttributes();
        attributes.x = 0;
        attributes.y = 0;
        window.setAttributes(attributes);
        return this;
    }

    public ActionSheetDialog setTitle(String str) {
        this.showTitle = true;
        this.txt_title.setVisibility(0);
        this.txt_title.setText(str);
        return this;
    }

    public ActionSheetDialog setCancelable(boolean z) {
        this.dialog.setCancelable(z);
        return this;
    }

    public ActionSheetDialog setCanceledOnTouchOutside(boolean z) {
        this.dialog.setCanceledOnTouchOutside(z);
        return this;
    }

    public ActionSheetDialog addSheetItem(String str, SheetItemColor sheetItemColor, OnSheetItemClickListener onSheetItemClickListener) {
        if (this.sheetItemList == null) {
            this.sheetItemList = new ArrayList();
        }
        this.sheetItemList.add(new SheetItem(str, sheetItemColor, onSheetItemClickListener));
        return this;
    }

    private void setSheetItems() {
        List<SheetItem> list = this.sheetItemList;
        if (list != null && list.size() > 0) {
            int size = this.sheetItemList.size();
            if (size >= 7) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.sLayout_content.getLayoutParams();
                layoutParams.height = this.display.getHeight() / 2;
                this.sLayout_content.setLayoutParams(layoutParams);
            }
            for (final int i = 1; i <= size; i++) {
                SheetItem sheetItem = (SheetItem) this.sheetItemList.get(i - 1);
                String str = sheetItem.name;
                SheetItemColor sheetItemColor = sheetItem.color;
                final OnSheetItemClickListener onSheetItemClickListener = sheetItem.itemClickListener;
                TextView textView = new TextView(this.context);
                textView.setText(str);
                textView.setTextSize(18.0f);
                textView.setGravity(17);
                if (size == 1) {
                    if (this.showTitle) {
                        textView.setBackgroundResource(R.drawable.actionsheet_bottom_selector);
                    } else {
                        textView.setBackgroundResource(R.drawable.actionsheet_single_selector);
                    }
                } else if (this.showTitle) {
                    if (i < 1 || i >= size) {
                        textView.setBackgroundResource(R.drawable.actionsheet_bottom_selector);
                    } else {
                        textView.setBackgroundResource(R.drawable.actionsheet_middle_selector);
                    }
                } else if (i == 1) {
                    textView.setBackgroundResource(R.drawable.actionsheet_top_selector);
                } else if (i < size) {
                    textView.setBackgroundResource(R.drawable.actionsheet_middle_selector);
                } else {
                    textView.setBackgroundResource(R.drawable.actionsheet_bottom_selector);
                }
                if (sheetItemColor == null) {
                    textView.setTextColor(Color.parseColor(SheetItemColor.Blue.getName()));
                } else {
                    textView.setTextColor(Color.parseColor(sheetItemColor.getName()));
                }
                textView.setLayoutParams(new LinearLayout.LayoutParams(-1, (int) ((this.context.getResources().getDisplayMetrics().density * 45.0f) + 0.5f)));
                textView.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        onSheetItemClickListener.onClick(i);
                        ActionSheetDialog.this.dialog.dismiss();
                    }
                });
                this.lLayout_content.addView(textView);
            }
        }
    }

    public void show() {
        setSheetItems();
        this.dialog.show();
    }
}
