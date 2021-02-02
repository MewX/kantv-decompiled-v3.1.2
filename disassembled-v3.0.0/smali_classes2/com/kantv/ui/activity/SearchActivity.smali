.class public Lcom/kantv/ui/activity/SearchActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "SearchActivity.java"


# instance fields
.field private adapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String4Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mHotSearchAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/String4Bean;",
            ">;"
        }
    .end annotation
.end field

.field mSearchEdit:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090303
    .end annotation
.end field

.field mSearchXRecycler:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030a
    .end annotation
.end field

.field private mlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field searchDeleteImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090302
    .end annotation
.end field

.field topHistoryLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/SearchActivity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/SearchActivity;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kantv/ui/activity/SearchActivity;->adapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/SearchActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/kantv/ui/activity/SearchActivity;->initSearch()V

    return-void
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/SearchActivity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kantv/ui/activity/SearchActivity;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/SearchActivity;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kantv/ui/activity/SearchActivity;->mHotSearchAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method private checkIllegalChar(Ljava/lang/String;)Z
    .locals 1

    .line 325
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private initRequest()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 277
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/kantv/ui/activity/SearchActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/SearchActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->sIndex(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/SearchActivity$6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/SearchActivity$6;-><init>(Lcom/kantv/ui/activity/SearchActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initSearch()V
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u641c\u7d22\u5185\u5bb9\uff01"

    .line 229
    invoke-static {v0}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 237
    :goto_0
    iget-object v4, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 238
    iget-object v4, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_7

    const-string v2, "\u63d2\u5165\u6570\u636e=="

    .line 243
    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 245
    iget-object v2, p0, Lcom/kantv/ui/activity/SearchActivity;->topHistoryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    iget-object v2, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_3

    const/16 v2, 0xa

    .line 247
    :goto_1
    iget-object v3, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 248
    iget-object v3, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    :cond_3
    iget-object v2, p0, Lcom/kantv/ui/activity/SearchActivity;->adapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v2, :cond_4

    .line 252
    invoke-virtual {v2}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 253
    :cond_4
    iget-object v2, p0, Lcom/kantv/ui/activity/SearchActivity;->topHistoryLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    .line 254
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6d4b\u8bd5\u53c2\u6570"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 258
    :cond_6
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 259
    iget-object v2, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Search"

    invoke-static {v2, v3, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    :cond_7
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchActivity;->closekeyboard()V

    .line 263
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name"

    .line 264
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-class v2, Lcom/kantv/ui/activity/SearchResultActivity;

    invoke-virtual {p0, v1, v2}, Lcom/kantv/ui/activity/SearchActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 271
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u70b9\u51fb\u641c\u7d22_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 272
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchActivity;->finish()V

    return-void
.end method

.method private initView()V
    .locals 9

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mData:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0076

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090307

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f090300

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f090381

    .line 94
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/kantv/ui/activity/SearchActivity;->topHistoryLayout:Landroid/widget/LinearLayout;

    .line 95
    new-instance v3, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 97
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "Search"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 99
    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    .line 100
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 102
    :try_start_0
    iget-object v7, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 104
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/kantv/ui/activity/SearchActivity;->topHistoryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/kantv/ui/activity/SearchActivity;->topHistoryLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    :goto_2
    new-instance v3, Lcom/kantv/ui/activity/SearchActivity$1;

    const v5, 0x7f0c008c

    iget-object v7, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    invoke-direct {v3, p0, p0, v5, v7}, Lcom/kantv/ui/activity/SearchActivity$1;-><init>(Lcom/kantv/ui/activity/SearchActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/kantv/ui/activity/SearchActivity;->adapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 128
    iget-object v3, p0, Lcom/kantv/ui/activity/SearchActivity;->adapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 129
    new-instance v3, Lcom/kantv/ui/activity/SearchActivity$2;

    invoke-direct {v3, p0}, Lcom/kantv/ui/activity/SearchActivity$2;-><init>(Lcom/kantv/ui/activity/SearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 140
    iget-object v1, p0, Lcom/kantv/ui/activity/SearchActivity;->mSearchXRecycler:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/kantv/lib/recyclerview/XRecyclerView;->addHeaderView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mSearchXRecycler:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 142
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mSearchXRecycler:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {v0, v6}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 144
    new-instance v0, Lcom/kantv/ui/activity/SearchActivity$3;

    const v1, 0x7f0c0081

    iget-object v2, p0, Lcom/kantv/ui/activity/SearchActivity;->mData:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/kantv/ui/activity/SearchActivity$3;-><init>(Lcom/kantv/ui/activity/SearchActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mHotSearchAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 192
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mSearchXRecycler:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/activity/SearchActivity;->mHotSearchAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 193
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 194
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 195
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/SearchActivity$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/SearchActivity$4;-><init>(Lcom/kantv/ui/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 204
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/kantv/ui/activity/SearchActivity$5;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/SearchActivity$5;-><init>(Lcom/kantv/ui/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902ff,
            0x7f090302
        }
    .end annotation

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902ff

    if-eq p1, v0, :cond_1

    const v0, 0x7f090302

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0031

    .line 79
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/SearchActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchActivity;->initBase()V

    .line 81
    invoke-virtual {p0}, Lcom/kantv/ui/activity/SearchActivity;->initStatusBar()V

    .line 82
    invoke-direct {p0}, Lcom/kantv/ui/activity/SearchActivity;->initView()V

    .line 83
    invoke-direct {p0}, Lcom/kantv/ui/activity/SearchActivity;->initRequest()V

    .line 84
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u5f71\u89c6_\u641c\u7d22"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 334
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mSearchXRecycler:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 336
    iput-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    .line 337
    iput-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mData:Ljava/util/List;

    .line 338
    iput-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mHotSearchAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 339
    iput-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->mlist:Ljava/util/List;

    .line 340
    iput-object v0, p0, Lcom/kantv/ui/activity/SearchActivity;->adapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-void
.end method
