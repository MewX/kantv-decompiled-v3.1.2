.class public Lcom/kantv/ui/fragment/StarFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "StarFragment.java"


# instance fields
.field private farst:Z

.field private mActivity:Lcom/kantv/ui/activity/StarActivity;

.field private mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/String12Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String12Bean;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09034b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/StarFragment;->mData:Ljava/util/List;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/StarFragment;->farst:Z

    return-void
.end method

.method private InItView(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, v0, Lcom/kantv/ui/fragment/StarFragment;->farst:Z

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/fragment/StarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/activity/StarActivity;

    iput-object v2, v0, Lcom/kantv/ui/fragment/StarFragment;->mActivity:Lcom/kantv/ui/activity/StarActivity;

    .line 71
    invoke-static/range {p1 .. p1}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 72
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 73
    invoke-static {v2, v3}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 74
    iget-object v5, v0, Lcom/kantv/ui/fragment/StarFragment;->mData:Ljava/util/List;

    new-instance v15, Lcom/kantv/ui/bean/String12Bean;

    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "photo"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "actor"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "director"

    .line 75
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v6, "year"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v6, "score"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v6, "totalcount"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v6, "seo"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v6, ""

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v6, "tvclass_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v15

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v4

    invoke-direct/range {v6 .. v18}, Lcom/kantv/ui/bean/String12Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, v0, Lcom/kantv/ui/fragment/StarFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/fragment/StarFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 78
    new-instance v1, Lcom/kantv/ui/fragment/StarFragment$1;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c007c

    iget-object v4, v0, Lcom/kantv/ui/fragment/StarFragment;->mData:Ljava/util/List;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/kantv/ui/fragment/StarFragment$1;-><init>(Lcom/kantv/ui/fragment/StarFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, v0, Lcom/kantv/ui/fragment/StarFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 112
    iget-object v1, v0, Lcom/kantv/ui/fragment/StarFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v2, v0, Lcom/kantv/ui/fragment/StarFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v1, v2}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 113
    iget-object v1, v0, Lcom/kantv/ui/fragment/StarFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/StarFragment;->farst:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/StarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/StarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/StarFragment;->InItView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0068

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/StarFragment;->mRootView:Landroid/view/View;

    .line 55
    iget-object p1, p0, Lcom/kantv/ui/fragment/StarFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/kantv/ui/fragment/StarFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 135
    iput-object v0, p0, Lcom/kantv/ui/fragment/StarFragment;->mData:Ljava/util/List;

    .line 136
    iput-object v0, p0, Lcom/kantv/ui/fragment/StarFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 137
    iput-object v0, p0, Lcom/kantv/ui/fragment/StarFragment;->mActivity:Lcom/kantv/ui/activity/StarActivity;

    return-void
.end method
