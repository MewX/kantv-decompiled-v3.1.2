.class public Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;
.super Ljava/lang/Object;
.source "MineBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/MineBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$DirectorBean;,
        Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$ActorBean;
    }
.end annotation


# instance fields
.field private _id:J

.field private aboutme:Ljava/lang/String;

.field private actor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$ActorBean;",
            ">;"
        }
    .end annotation
.end field

.field private allpart:I

.field private created:I

.field private curpart:I

.field private director:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$DirectorBean;",
            ">;"
        }
    .end annotation
.end field

.field private ext_link:Ljava/lang/String;

.field private part:I

.field private part_id:J

.field private photo:Ljava/lang/String;

.field private score:D

.field private sec:I

.field private seo:Ljava/lang/String;

.field private status:I

.field private title:Ljava/lang/String;

.field private totalcount:I

.field private tvclass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tvcountry:I

.field private tvid:J

.field private url:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAboutme()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->aboutme:Ljava/lang/String;

    return-object v0
.end method

.method public getActor()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$ActorBean;",
            ">;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->actor:Ljava/util/List;

    return-object v0
.end method

.method public getAllpart()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->allpart:I

    return v0
.end method

.method public getCreated()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->created:I

    return v0
.end method

.method public getCurpart()I
    .locals 1

    .line 326
    iget v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->curpart:I

    return v0
.end method

.method public getDirector()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$DirectorBean;",
            ">;"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->director:Ljava/util/List;

    return-object v0
.end method

.method public getExt_link()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->ext_link:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->part:I

    return v0
.end method

.method public getPart_id()J
    .locals 2

    .line 262
    iget-wide v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->part_id:J

    return-wide v0
.end method

.method public getPhoto()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()D
    .locals 2

    .line 342
    iget-wide v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->score:D

    return-wide v0
.end method

.method public getSec()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->sec:I

    return v0
.end method

.method public getSeo()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->seo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalcount()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->totalcount:I

    return v0
.end method

.method public getTvclass()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->tvclass:Ljava/util/List;

    return-object v0
.end method

.method public getTvcountry()I
    .locals 1

    .line 382
    iget v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->tvcountry:I

    return v0
.end method

.method public getTvid()J
    .locals 2

    .line 286
    iget-wide v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->tvid:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->year:I

    return v0
.end method

.method public get_id()J
    .locals 2

    .line 294
    iget-wide v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->_id:J

    return-wide v0
.end method

.method public setAboutme(Ljava/lang/String;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->aboutme:Ljava/lang/String;

    return-void
.end method

.method public setActor(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$ActorBean;",
            ">;)V"
        }
    .end annotation

    .line 410
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->actor:Ljava/util/List;

    return-void
.end method

.method public setAllpart(I)V
    .locals 0

    .line 322
    iput p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->allpart:I

    return-void
.end method

.method public setCreated(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->created:I

    return-void
.end method

.method public setCurpart(I)V
    .locals 0

    .line 330
    iput p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->curpart:I

    return-void
.end method

.method public setDirector(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$DirectorBean;",
            ">;)V"
        }
    .end annotation

    .line 418
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->director:Ljava/util/List;

    return-void
.end method

.method public setExt_link(Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->ext_link:Ljava/lang/String;

    return-void
.end method

.method public setPart(I)V
    .locals 0

    .line 258
    iput p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->part:I

    return-void
.end method

.method public setPart_id(J)V
    .locals 0

    .line 266
    iput-wide p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->part_id:J

    return-void
.end method

.method public setPhoto(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->photo:Ljava/lang/String;

    return-void
.end method

.method public setScore(D)V
    .locals 0

    .line 346
    iput-wide p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->score:D

    return-void
.end method

.method public setSec(I)V
    .locals 0

    .line 274
    iput p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->sec:I

    return-void
.end method

.method public setSeo(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->seo:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 362
    iput p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->status:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotalcount(I)V
    .locals 0

    .line 354
    iput p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->totalcount:I

    return-void
.end method

.method public setTvclass(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 402
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->tvclass:Ljava/util/List;

    return-void
.end method

.method public setTvcountry(I)V
    .locals 0

    .line 386
    iput p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->tvcountry:I

    return-void
.end method

.method public setTvid(J)V
    .locals 0

    .line 290
    iput-wide p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->tvid:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setYear(I)V
    .locals 0

    .line 378
    iput p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->year:I

    return-void
.end method

.method public set_id(J)V
    .locals 0

    .line 298
    iput-wide p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;->_id:J

    return-void
.end method
