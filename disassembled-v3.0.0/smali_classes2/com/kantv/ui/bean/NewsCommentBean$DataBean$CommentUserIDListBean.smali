.class public Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;
.super Ljava/lang/Object;
.source "NewsCommentBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/NewsCommentBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentUserIDListBean"
.end annotation


# instance fields
.field private access:I

.field private ccode:Ljava/lang/String;

.field private cname:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private created:I

.field private device:Ljava/lang/String;

.field private experience:I

.field private init:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private login:I

.field private mail:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private photo:Ljava/lang/String;

.field private role:I

.field private status:I

.field private today_id:I

.field private uid:J

.field private verify:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->access:I

    return v0
.end method

.method public getCcode()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->ccode:Ljava/lang/String;

    return-object v0
.end method

.method public getCname()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->cname:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->created:I

    return v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getExperience()I
    .locals 1

    .line 331
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->experience:I

    return v0
.end method

.method public getInit()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->init:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLogin()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->login:I

    return v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->mail:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->role:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->status:I

    return v0
.end method

.method public getToday_id()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->today_id:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->uid:J

    return-wide v0
.end method

.method public getVerify()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->verify:I

    return v0
.end method

.method public setAccess(I)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->access:I

    return-void
.end method

.method public setCcode(Ljava/lang/String;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->ccode:Ljava/lang/String;

    return-void
.end method

.method public setCname(Ljava/lang/String;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->cname:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setCreated(I)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->created:I

    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->device:Ljava/lang/String;

    return-void
.end method

.method public setExperience(I)V
    .locals 0

    .line 335
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->experience:I

    return-void
.end method

.method public setInit(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->init:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->ip:Ljava/lang/String;

    return-void
.end method

.method public setLogin(I)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->login:I

    return-void
.end method

.method public setMail(Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->mail:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->password:Ljava/lang/String;

    return-void
.end method

.method public setPhoto(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->photo:Ljava/lang/String;

    return-void
.end method

.method public setRole(I)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->role:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 247
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->status:I

    return-void
.end method

.method public setToday_id(I)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->today_id:I

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 191
    iput-wide p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->uid:J

    return-void
.end method

.method public setVerify(I)V
    .locals 0

    .line 327
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;->verify:I

    return-void
.end method
