.class public Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private zzka:Landroid/widget/TextView;

.field private zzkb:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static zza(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public asView()Landroid/view/View;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->cast_featurehighlight_help_text_header_view:I

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzev;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->zzka:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->cast_featurehighlight_help_text_body_view:I

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzev;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->zzkb:Landroid/widget/TextView;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->zzka:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->zza(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->zzkb:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->zza(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method
