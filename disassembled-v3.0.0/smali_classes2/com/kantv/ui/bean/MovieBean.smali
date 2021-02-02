.class public Lcom/kantv/ui/bean/MovieBean;
.super Ljava/lang/Object;
.source "MovieBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field allpart:Ljava/lang/String;

.field changed:Ljava/lang/String;

.field curpart:Ljava/lang/String;

.field descript:Ljava/lang/String;

.field msg:Ljava/lang/String;

.field photo:Ljava/lang/String;

.field score:Ljava/lang/String;

.field seo:Ljava/lang/String;

.field title:Ljava/lang/String;

.field totalcount:Ljava/lang/String;

.field url:Ljava/lang/String;

.field videoTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/kantv/ui/bean/MovieBean;->title:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/kantv/ui/bean/MovieBean;->score:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/kantv/ui/bean/MovieBean;->photo:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/kantv/ui/bean/MovieBean;->descript:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/kantv/ui/bean/MovieBean;->totalcount:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/kantv/ui/bean/MovieBean;->curpart:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/kantv/ui/bean/MovieBean;->changed:Ljava/lang/String;

    .line 33
    iput-object p8, p0, Lcom/kantv/ui/bean/MovieBean;->allpart:Ljava/lang/String;

    .line 34
    iput-object p9, p0, Lcom/kantv/ui/bean/MovieBean;->msg:Ljava/lang/String;

    .line 35
    iput-object p10, p0, Lcom/kantv/ui/bean/MovieBean;->seo:Ljava/lang/String;

    .line 36
    iput-object p11, p0, Lcom/kantv/ui/bean/MovieBean;->url:Ljava/lang/String;

    .line 37
    iput-object p12, p0, Lcom/kantv/ui/bean/MovieBean;->videoTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAllpart()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/kantv/ui/bean/MovieBean;->allpart:Ljava/lang/String;

    return-object v0
.end method

.method public getChanged()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/kantv/ui/bean/MovieBean;->changed:Ljava/lang/String;

    return-object v0
.end method

.method public getCurpart()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/kantv/ui/bean/MovieBean;->curpart:Ljava/lang/String;

    return-object v0
.end method

.method public getDescript()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/kantv/ui/bean/MovieBean;->descript:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/kantv/ui/bean/MovieBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/kantv/ui/bean/MovieBean;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/kantv/ui/bean/MovieBean;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getSeo()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/kantv/ui/bean/MovieBean;->seo:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/kantv/ui/bean/MovieBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalcount()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/kantv/ui/bean/MovieBean;->totalcount:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/kantv/ui/bean/MovieBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTag()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/kantv/ui/bean/MovieBean;->videoTag:Ljava/lang/String;

    return-object v0
.end method

.method public setAllpart(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/kantv/ui/bean/MovieBean;->allpart:Ljava/lang/String;

    return-void
.end method

.method public setChanged(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/kantv/ui/bean/MovieBean;->changed:Ljava/lang/String;

    return-void
.end method

.method public setCurpart(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/kantv/ui/bean/MovieBean;->curpart:Ljava/lang/String;

    return-void
.end method

.method public setDescript(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/kantv/ui/bean/MovieBean;->descript:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/kantv/ui/bean/MovieBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setPhoto(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/kantv/ui/bean/MovieBean;->photo:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/kantv/ui/bean/MovieBean;->score:Ljava/lang/String;

    return-void
.end method

.method public setSeo(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/kantv/ui/bean/MovieBean;->seo:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/kantv/ui/bean/MovieBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotalcount(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/kantv/ui/bean/MovieBean;->totalcount:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/kantv/ui/bean/MovieBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setVideoTag(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/kantv/ui/bean/MovieBean;->videoTag:Ljava/lang/String;

    return-void
.end method
