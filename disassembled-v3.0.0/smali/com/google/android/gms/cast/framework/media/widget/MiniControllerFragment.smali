.class public Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/widget/ControlButtonsContainer;


# static fields
.field private static final zzbe:Lcom/google/android/gms/internal/cast/zzdg;


# instance fields
.field private zzsa:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsb:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsc:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsd:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzse:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsf:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsg:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsh:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsi:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzsj:I

.field private zzso:[I

.field private zzsp:[Landroid/widget/ImageView;

.field private zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

.field private zztf:Z

.field private zztg:I

.field private zzth:I

.field private zzti:Landroid/widget/TextView;

.field private zztj:I

.field private zztk:I

.field private zztl:I

.field private zztm:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zztn:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private zzto:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 192
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdg;

    const-string v1, "MiniControllerFragment"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsp:[Landroid/widget/ImageView;

    return-void
.end method

.method private final zza(Landroid/widget/RelativeLayout;II)V
    .locals 8

    .line 111
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzso:[I

    aget p3, v0, p3

    .line 113
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    if-ne p3, v0, :cond_0

    const/4 p1, 0x4

    .line 114
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 115
    :cond_0
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_custom:I

    if-eq p3, v0, :cond_9

    .line 116
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_play_pause_toggle:I

    if-ne p3, v0, :cond_3

    .line 117
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsa:I

    .line 118
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsb:I

    .line 119
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsc:I

    .line 120
    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztl:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 121
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztm:I

    .line 122
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztn:I

    .line 123
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzto:I

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsj:I

    .line 126
    invoke-static {v3, v4, p3}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsj:I

    .line 129
    invoke-static {p3, v4, v0}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsj:I

    .line 132
    invoke-static {p3, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 133
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    new-instance v6, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {v6, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x8

    .line 137
    invoke-virtual {p3, v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x6

    .line 138
    invoke-virtual {p3, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x5

    .line 139
    invoke-virtual {p3, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x7

    .line 140
    invoke-virtual {p3, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p2, 0xf

    .line 141
    invoke-virtual {p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    invoke-virtual {v6, p3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {v6, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 145
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztk:I

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    .line 146
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 149
    :cond_2
    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 150
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindImageViewToPlayPauseToggle(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V

    return-void

    .line 151
    :cond_3
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_skip_previous:I

    const/4 p2, 0x0

    if-ne p3, p1, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsj:I

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsd:I

    .line 154
    invoke-static {p1, p3, v0}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 155
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/google/android/gms/cast/framework/R$string;->cast_skip_prev:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {p1, v2, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToSkipPrev(Landroid/view/View;I)V

    return-void

    .line 158
    :cond_4
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_skip_next:I

    if-ne p3, p1, :cond_5

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsj:I

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzse:I

    .line 161
    invoke-static {p1, p3, v0}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 162
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/google/android/gms/cast/framework/R$string;->cast_skip_next:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {p1, v2, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToSkipNext(Landroid/view/View;I)V

    return-void

    .line 165
    :cond_5
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_rewind_30_seconds:I

    const-wide/16 v0, 0x7530

    if-ne p3, p1, :cond_6

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsj:I

    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsf:I

    .line 168
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 169
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/gms/cast/framework/R$string;->cast_rewind_30:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToRewind(Landroid/view/View;J)V

    return-void

    .line 172
    :cond_6
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_forward_30_seconds:I

    if-ne p3, p1, :cond_7

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsj:I

    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsg:I

    .line 175
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 176
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/gms/cast/framework/R$string;->cast_forward_30:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToForward(Landroid/view/View;J)V

    return-void

    .line 179
    :cond_7
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_mute_toggle:I

    if-ne p3, p1, :cond_8

    .line 181
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsj:I

    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsh:I

    .line 182
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 183
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindImageViewToMuteToggle(Landroid/widget/ImageView;)V

    return-void

    .line 185
    :cond_8
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_closed_caption:I

    if-ne p3, p1, :cond_9

    .line 187
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsj:I

    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsi:I

    .line 188
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/widget/zze;->zza(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 189
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToClosedCaption(Landroid/view/View;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public final getButtonImageViewAt(I)Landroid/widget/ImageView;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsp:[Landroid/widget/ImageView;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getButtonSlotCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final getButtonTypeAt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzso:[I

    aget p1, v0, p1

    return p1
.end method

.method public getUIMediaController()Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 64
    new-instance p3, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 65
    sget p3, Lcom/google/android/gms/cast/framework/R$layout;->cast_mini_controller:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewVisibilityToMediaSession(Landroid/view/View;I)V

    .line 68
    sget p3, Lcom/google/android/gms/cast/framework/R$id;->container_current:I

    .line 69
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    .line 70
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztj:I

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 72
    :cond_0
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->icon_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    sget v1, Lcom/google/android/gms/cast/framework/R$id;->title_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztg:I

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztg:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 76
    :cond_1
    sget v2, Lcom/google/android/gms/cast/framework/R$id;->subtitle_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzti:Landroid/widget/TextView;

    .line 77
    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzth:I

    if-eqz v2, :cond_2

    .line 78
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzti:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzth:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 79
    :cond_2
    sget v2, Lcom/google/android/gms/cast/framework/R$id;->progressBar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 80
    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztk:I

    if-eqz v3, :cond_3

    .line 81
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 82
    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztk:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 83
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindTextViewToMetadataOfCurrentItem(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzti:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindTextViewToSmartSubtitle(Landroid/widget/TextView;)V

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindProgressBar(Landroid/widget/ProgressBar;)V

    .line 86
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v1, p3}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToLaunchExpandedController(Landroid/view/View;)V

    .line 87
    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztf:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/google/android/gms/cast/framework/R$dimen;->cast_mini_controller_icon_width:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/gms/cast/framework/R$dimen;->cast_mini_controller_icon_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 92
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    new-instance v4, Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-direct {v4, v2, p2, v1}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    sget p2, Lcom/google/android/gms/cast/framework/R$drawable;->cast_album_art_placeholder:I

    invoke-virtual {v3, v0, v4, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindImageViewToImageOfCurrentItem(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/ImageHints;I)V

    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsp:[Landroid/widget/ImageView;

    sget v0, Lcom/google/android/gms/cast/framework/R$id;->button_0:I

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 96
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsp:[Landroid/widget/ImageView;

    sget v0, Lcom/google/android/gms/cast/framework/R$id;->button_1:I

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v0, p2, v3

    .line 97
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsp:[Landroid/widget/ImageView;

    sget v0, Lcom/google/android/gms/cast/framework/R$id;->button_2:I

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, p2, v2

    .line 98
    sget p2, Lcom/google/android/gms/cast/framework/R$id;->button_0:I

    invoke-direct {p0, p3, p2, v1}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zza(Landroid/widget/RelativeLayout;II)V

    .line 99
    sget p2, Lcom/google/android/gms/cast/framework/R$id;->button_1:I

    invoke-direct {p0, p3, p2, v3}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zza(Landroid/widget/RelativeLayout;II)V

    .line 100
    sget p2, Lcom/google/android/gms/cast/framework/R$id;->button_2:I

    invoke-direct {p0, p3, p2, v2}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zza(Landroid/widget/RelativeLayout;II)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->dispose()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsx:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 105
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 4

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 5
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzso:[I

    if-nez p3, :cond_6

    .line 6
    sget-object p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController:[I

    sget v0, Lcom/google/android/gms/cast/framework/R$attr;->castMiniControllerStyle:I

    sget v1, Lcom/google/android/gms/cast/framework/R$style;->CastMiniController:I

    .line 7
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castShowImageThumbnail:I

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztf:Z

    .line 10
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castTitleTextAppearance:I

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztg:I

    .line 12
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castSubtitleTextAppearance:I

    .line 13
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzth:I

    .line 14
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castBackground:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztj:I

    .line 15
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castProgressBarColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztk:I

    .line 16
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castButtonColor:I

    .line 17
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsj:I

    .line 18
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castPlayButtonDrawable:I

    .line 19
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsa:I

    .line 20
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castPauseButtonDrawable:I

    .line 21
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsb:I

    .line 22
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castStopButtonDrawable:I

    .line 23
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsc:I

    .line 24
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castPlayButtonDrawable:I

    .line 25
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztm:I

    .line 26
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castPauseButtonDrawable:I

    .line 27
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztn:I

    .line 28
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castStopButtonDrawable:I

    .line 29
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzto:I

    .line 30
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castSkipPreviousButtonDrawable:I

    .line 31
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsd:I

    .line 32
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castSkipNextButtonDrawable:I

    .line 33
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzse:I

    .line 34
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castRewind30ButtonDrawable:I

    .line 35
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsf:I

    .line 36
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castForward30ButtonDrawable:I

    .line 37
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsg:I

    .line 38
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castMuteToggleButtonDrawable:I

    .line 39
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsh:I

    .line 40
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castClosedCaptionsButtonDrawable:I

    .line 41
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzsi:I

    .line 42
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castControlButtons:I

    .line 43
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/4 v2, 0x3

    if-eqz p3, :cond_4

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    if-ne p3, v2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzso:[I

    const/4 p3, 0x0

    .line 48
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge p3, v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzso:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    iget-boolean p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztf:Z

    if-eqz p1, :cond_2

    .line 53
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzso:[I

    sget p3, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    aput p3, p1, v1

    .line 54
    :cond_2
    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztl:I

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzso:[I

    array-length p3, p1

    :goto_2
    if-ge v1, p3, :cond_5

    aget v2, p1, v1

    .line 56
    sget v3, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    if-eq v2, v3, :cond_3

    .line 57
    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztl:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zztl:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 60
    :cond_4
    sget-object p1, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    new-array p3, v1, [Ljava/lang/Object;

    const-string v3, "Unable to read attribute castControlButtons."

    invoke-virtual {p1, v3, p3}, Lcom/google/android/gms/internal/cast/zzdg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    new-array p1, v2, [I

    sget p3, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    aput p3, p1, v1

    sget p3, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    aput p3, p1, v0

    const/4 p3, 0x2

    sget v0, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    aput v0, p1, p3

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->zzso:[I

    .line 62
    :cond_5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    return-void
.end method
