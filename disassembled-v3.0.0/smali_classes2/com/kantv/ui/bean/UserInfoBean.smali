.class public Lcom/kantv/ui/bean/UserInfoBean;
.super Ljava/lang/Object;
.source "UserInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/bean/UserInfoBean$HometownBean;,
        Lcom/kantv/ui/bean/UserInfoBean$AreaBean;
    }
.end annotation


# instance fields
.field private _id:J

.field private aboutme:Ljava/lang/String;

.field private access:I

.field private areas:Ljava/lang/Object;

.field private background:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private cname:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private created:I

.field private device:Ljava/lang/String;

.field private diffexp:I

.field private exp:I

.field private experience:I

.field private gender:I

.field private hometowns:Lcom/kantv/ui/bean/UserInfoBean$HometownBean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ip:Ljava/lang/String;

.field private iso_code:Ljava/lang/String;

.field private level:I

.field private login:I

.field private mail:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private modify:I

.field private mysql:I

.field private name:Ljava/lang/String;

.field private nextExp:I

.field private nextLevel:I

.field private openid:Ljava/lang/String;

.field private photo:Ljava/lang/String;

.field private role:I

.field private status:I

.field private today_id:I

.field private uid:J

.field private verify:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->openid:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->birthday:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->aboutme:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAboutme()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->aboutme:Ljava/lang/String;

    return-object v0
.end method

.method public getAccess()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->access:I

    return v0
.end method

.method public getAreas()Ljava/lang/Object;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->areas:Ljava/lang/Object;

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCname()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->cname:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->created:I

    return v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDiffexp()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->diffexp:I

    return v0
.end method

.method public getExp()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->exp:I

    return v0
.end method

.method public getExperience()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->experience:I

    return v0
.end method

.method public getGender()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->gender:I

    return v0
.end method

.method public getHometown()Lcom/kantv/ui/bean/UserInfoBean$HometownBean;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->hometowns:Lcom/kantv/ui/bean/UserInfoBean$HometownBean;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIso_code()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->iso_code:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->level:I

    return v0
.end method

.method public getLogin()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->login:I

    return v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->mail:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getModify()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->modify:I

    return v0
.end method

.method public getMysql()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->mysql:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextExp()I
    .locals 1

    .line 320
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->nextExp:I

    return v0
.end method

.method public getNextLevel()I
    .locals 1

    .line 304
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->nextLevel:I

    return v0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->role:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->status:I

    return v0
.end method

.method public getToday_id()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->today_id:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->uid:J

    return-wide v0
.end method

.method public getVerify()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->verify:I

    return v0
.end method

.method public get_id()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/kantv/ui/bean/UserInfoBean;->_id:J

    return-wide v0
.end method

.method public setAboutme(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->aboutme:Ljava/lang/String;

    return-void
.end method

.method public setAccess(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->access:I

    return-void
.end method

.method public setAreas(Ljava/lang/Object;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->areas:Ljava/lang/Object;

    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->background:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setCname(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->cname:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setCreated(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->created:I

    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->device:Ljava/lang/String;

    return-void
.end method

.method public setDiffexp(I)V
    .locals 0

    .line 332
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->diffexp:I

    return-void
.end method

.method public setExp(I)V
    .locals 0

    .line 316
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->exp:I

    return-void
.end method

.method public setExperience(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->experience:I

    return-void
.end method

.method public setGender(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->gender:I

    return-void
.end method

.method public setHometown(Lcom/kantv/ui/bean/UserInfoBean$HometownBean;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->hometowns:Lcom/kantv/ui/bean/UserInfoBean$HometownBean;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->ip:Ljava/lang/String;

    return-void
.end method

.method public setIso_code(Ljava/lang/String;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->iso_code:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 300
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->level:I

    return-void
.end method

.method public setLogin(I)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->login:I

    return-void
.end method

.method public setMail(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->mail:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setModify(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->modify:I

    return-void
.end method

.method public setMysql(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->mysql:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNextExp(I)V
    .locals 0

    .line 324
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->nextExp:I

    return-void
.end method

.method public setNextLevel(I)V
    .locals 0

    .line 308
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->nextLevel:I

    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->openid:Ljava/lang/String;

    return-void
.end method

.method public setPhoto(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->photo:Ljava/lang/String;

    return-void
.end method

.method public setRole(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->role:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->status:I

    return-void
.end method

.method public setToday_id(I)V
    .locals 0

    .line 260
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->today_id:I

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 164
    iput-wide p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->uid:J

    return-void
.end method

.method public setVerify(I)V
    .locals 0

    .line 284
    iput p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->verify:I

    return-void
.end method

.method public set_id(J)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lcom/kantv/ui/bean/UserInfoBean;->_id:J

    return-void
.end method
