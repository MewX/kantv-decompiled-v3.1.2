.class public Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/IntroductoryOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zzhy:Landroid/app/Activity;

.field private final zzhz:Landroid/view/View;

.field private zzia:I

.field private zzib:Ljava/lang/String;

.field private zzic:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

.field private zzid:Z

.field private zzie:F

.field private zzif:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/MediaRouteButton;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzhy:Landroid/app/Activity;

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzhz:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/MenuItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzhy:Landroid/app/Activity;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzhz:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/framework/IntroductoryOverlay;
    .locals 1

    .line 35
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/cast/zzn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzn;-><init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;)V

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/cast/zzr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzr;-><init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;)V

    return-object v0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzhy:Landroid/app/Activity;

    return-object v0
.end method

.method public setButtonText(I)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzhy:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzif:Ljava/lang/String;

    return-object p0
.end method

.method public setButtonText(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzif:Ljava/lang/String;

    return-object p0
.end method

.method public setFocusRadius(F)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;
    .locals 0

    .line 21
    iput p1, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzie:F

    return-object p0
.end method

.method public setFocusRadiusId(I)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzhy:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzie:F

    return-object p0
.end method

.method public setOnOverlayDismissedListener(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzic:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    return-object p0
.end method

.method public setOverlayColor(I)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzhy:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzia:I

    return-object p0
.end method

.method public setSingleTime()Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzid:Z

    return-object p0
.end method

.method public setTitleText(I)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzhy:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzib:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzib:Ljava/lang/String;

    return-object p0
.end method

.method public final zzac()Landroid/view/View;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzhz:Landroid/view/View;

    return-object v0
.end method

.method public final zzad()Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzic:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    return-object v0
.end method

.method public final zzae()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzia:I

    return v0
.end method

.method public final zzaf()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzid:Z

    return v0
.end method

.method public final zzag()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzib:Ljava/lang/String;

    return-object v0
.end method

.method public final zzah()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzif:Ljava/lang/String;

    return-object v0
.end method

.method public final zzai()F
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzie:F

    return v0
.end method
