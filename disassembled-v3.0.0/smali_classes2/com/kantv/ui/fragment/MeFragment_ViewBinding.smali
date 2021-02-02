.class public Lcom/kantv/ui/fragment/MeFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MeFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/fragment/MeFragment;

.field private view2131296267:Landroid/view/View;

.field private view2131296485:Landroid/view/View;

.field private view2131296541:Landroid/view/View;

.field private view2131296804:Landroid/view/View;

.field private view2131296841:Landroid/view/View;

.field private view2131296842:Landroid/view/View;

.field private view2131297058:Landroid/view/View;

.field private view2131297059:Landroid/view/View;

.field private view2131297065:Landroid/view/View;

.field private view2131297193:Landroid/view/View;

.field private view2131297245:Landroid/view/View;

.field private view2131297247:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/fragment/MeFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/MeFragment;

    .line 51
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090223

    const-string v2, "field \'mNologin\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/fragment/MeFragment;->mNologin:Landroid/widget/RelativeLayout;

    .line 52
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090221

    const-string v2, "field \'mInlogin\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/fragment/MeFragment;->mInlogin:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903df

    const-string v1, "field \'mWaveView\' and method \'onClick\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 54
    const-class v2, Lcom/kantv/ui/view/WaveView;

    const-string v3, "field \'mWaveView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/view/WaveView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/MeFragment;->mWaveView:Lcom/kantv/ui/view/WaveView;

    .line 55
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297247:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$1;-><init>(Lcom/kantv/ui/fragment/MeFragment_ViewBinding;Lcom/kantv/ui/fragment/MeFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const-class v0, Lcom/kantv/ui/view/CircleImageView;

    const v1, 0x7f090220

    const-string v2, "field \'mHead\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/view/CircleImageView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/MeFragment;->mHead:Lcom/kantv/ui/view/CircleImageView;

    .line 63
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090222

    const-string v2, "field \'mName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/MeFragment;->mName:Landroid/widget/TextView;

    .line 64
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f0903db

    const-string v2, "field \'watchHistoryRV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/MeFragment;->watchHistoryRV:Landroid/support/v7/widget/RecyclerView;

    .line 65
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903aa

    const-string v2, "field \'versionTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/MeFragment;->versionTv:Landroid/widget/TextView;

    const-string v0, "method \'onClick\'"

    const v1, 0x7f09011d

    .line 66
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296541:Landroid/view/View;

    .line 68
    new-instance v2, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$2;-><init>(Lcom/kantv/ui/fragment/MeFragment_ViewBinding;Lcom/kantv/ui/fragment/MeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090224

    .line 74
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 75
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296804:Landroid/view/View;

    .line 76
    new-instance v2, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$3;-><init>(Lcom/kantv/ui/fragment/MeFragment_ViewBinding;Lcom/kantv/ui/fragment/MeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090323

    .line 82
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 83
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297059:Landroid/view/View;

    .line 84
    new-instance v2, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$4;-><init>(Lcom/kantv/ui/fragment/MeFragment_ViewBinding;Lcom/kantv/ui/fragment/MeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903dd

    .line 90
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 91
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297245:Landroid/view/View;

    .line 92
    new-instance v2, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$5;-><init>(Lcom/kantv/ui/fragment/MeFragment_ViewBinding;Lcom/kantv/ui/fragment/MeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900e5

    .line 98
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 99
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296485:Landroid/view/View;

    .line 100
    new-instance v2, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$6;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$6;-><init>(Lcom/kantv/ui/fragment/MeFragment_ViewBinding;Lcom/kantv/ui/fragment/MeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09000b

    .line 106
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 107
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296267:Landroid/view/View;

    .line 108
    new-instance v2, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$7;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$7;-><init>(Lcom/kantv/ui/fragment/MeFragment_ViewBinding;Lcom/kantv/ui/fragment/MeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903a9

    .line 114
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 115
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297193:Landroid/view/View;

    .line 116
    new-instance v2, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$8;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$8;-><init>(Lcom/kantv/ui/fragment/MeFragment_ViewBinding;Lcom/kantv/ui/fragment/MeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090329

    .line 122
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 123
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297065:Landroid/view/View;

    .line 124
    new-instance v2, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$9;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$9;-><init>(Lcom/kantv/ui/fragment/MeFragment_ViewBinding;Lcom/kantv/ui/fragment/MeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09024a

    .line 130
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 131
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296842:Landroid/view/View;

    .line 132
    new-instance v2, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$10;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$10;-><init>(Lcom/kantv/ui/fragment/MeFragment_ViewBinding;Lcom/kantv/ui/fragment/MeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090322

    .line 138
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 139
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297058:Landroid/view/View;

    .line 140
    new-instance v2, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$11;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$11;-><init>(Lcom/kantv/ui/fragment/MeFragment_ViewBinding;Lcom/kantv/ui/fragment/MeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090249

    .line 146
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 147
    iput-object p2, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296841:Landroid/view/View;

    .line 148
    new-instance v0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$12;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$12;-><init>(Lcom/kantv/ui/fragment/MeFragment_ViewBinding;Lcom/kantv/ui/fragment/MeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/MeFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 161
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/MeFragment;

    .line 163
    iput-object v1, v0, Lcom/kantv/ui/fragment/MeFragment;->mNologin:Landroid/widget/RelativeLayout;

    .line 164
    iput-object v1, v0, Lcom/kantv/ui/fragment/MeFragment;->mInlogin:Landroid/widget/RelativeLayout;

    .line 165
    iput-object v1, v0, Lcom/kantv/ui/fragment/MeFragment;->mWaveView:Lcom/kantv/ui/view/WaveView;

    .line 166
    iput-object v1, v0, Lcom/kantv/ui/fragment/MeFragment;->mHead:Lcom/kantv/ui/view/CircleImageView;

    .line 167
    iput-object v1, v0, Lcom/kantv/ui/fragment/MeFragment;->mName:Landroid/widget/TextView;

    .line 168
    iput-object v1, v0, Lcom/kantv/ui/fragment/MeFragment;->watchHistoryRV:Landroid/support/v7/widget/RecyclerView;

    .line 169
    iput-object v1, v0, Lcom/kantv/ui/fragment/MeFragment;->versionTv:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297247:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297247:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296541:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296541:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296804:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296804:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297059:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297059:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297245:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297245:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296485:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296485:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296267:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296267:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297193:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297193:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297065:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297065:Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296842:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296842:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297058:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131297058:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296841:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iput-object v1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding;->view2131296841:Landroid/view/View;

    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
