.class public Lcom/androidquery/util/WebImage;
.super Landroid/webkit/WebViewClient;
.source "WebImage.java"


# static fields
.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static template:Ljava/lang/String;


# instance fields
.field private color:I

.field private control:Z

.field private progress:Ljava/lang/Object;

.field private url:Ljava/lang/String;

.field private wv:Landroid/webkit/WebView;

.field private zoom:Z


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;ZZI)V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 72
    iput-object p2, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/androidquery/util/WebImage;->progress:Ljava/lang/Object;

    .line 74
    iput-boolean p4, p0, Lcom/androidquery/util/WebImage;->zoom:Z

    .line 75
    iput-boolean p5, p0, Lcom/androidquery/util/WebImage;->control:Z

    .line 76
    iput p6, p0, Lcom/androidquery/util/WebImage;->color:I

    return-void
.end method

.method static synthetic access$000(Lcom/androidquery/util/WebImage;)Landroid/webkit/WebView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/androidquery/util/WebImage;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/androidquery/util/WebImage;->setup()V

    return-void
.end method

.method private delaySetup()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    new-instance v1, Lcom/androidquery/util/WebImage$1;

    invoke-direct {v1, p0}, Lcom/androidquery/util/WebImage$1;-><init>(Lcom/androidquery/util/WebImage;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 138
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    const-string v1, "<html></html>"

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    iget v1, p0, Lcom/androidquery/util/WebImage;->color:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method private static disableZoomControl(Landroid/webkit/WebView;)V
    .locals 8

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 p0, 0x1

    .line 186
    new-array v6, p0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    new-array v7, p0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v7, v1

    const-string v3, "setDisplayZoomControls"

    invoke-static/range {v2 .. v7}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private done(Landroid/webkit/WebView;)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->progress:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->progress:Ljava/lang/Object;

    iget-object v2, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 163
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private static fixWebviewTip(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "WebViewSettings"

    .line 63
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "double_tap_toast_count"

    const/4 v2, 0x1

    .line 64
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 65
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private static getSource(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/androidquery/util/WebImage;->template:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "com/androidquery/util/web_image.html"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 48
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->toBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/androidquery/util/WebImage;->template:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 55
    :cond_0
    :goto_0
    sget-object p0, Lcom/androidquery/util/WebImage;->template:Ljava/lang/String;

    return-object p0
.end method

.method private setup()V
    .locals 9

    .line 146
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/androidquery/util/WebImage;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    const-string v2, "@src"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/androidquery/util/WebImage;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@color"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 149
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 152
    iget-object v3, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    const/4 v4, 0x0

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    iget v1, p0, Lcom/androidquery/util/WebImage;->color:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public load()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    const v2, 0x40ff0001

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-gt v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/androidquery/util/WebImage;->fixWebviewTip(Landroid/content/Context;)V

    .line 97
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 98
    iget-boolean v1, p0, Lcom/androidquery/util/WebImage;->zoom:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 99
    iget-boolean v1, p0, Lcom/androidquery/util/WebImage;->zoom:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 101
    iget-boolean v1, p0, Lcom/androidquery/util/WebImage;->control:Z

    if-nez v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/androidquery/util/WebImage;->disableZoomControl(Landroid/webkit/WebView;)V

    .line 105
    :cond_2
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    iget v1, p0, Lcom/androidquery/util/WebImage;->color:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 108
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->progress:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 110
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    .line 114
    invoke-direct {p0}, Lcom/androidquery/util/WebImage;->setup()V

    goto :goto_0

    .line 116
    :cond_4
    invoke-direct {p0}, Lcom/androidquery/util/WebImage;->delaySetup()V

    :goto_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/androidquery/util/WebImage;->done(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/androidquery/util/WebImage;->done(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0

    return-void
.end method
