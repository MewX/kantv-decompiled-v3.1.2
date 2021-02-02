.class public Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
.super Ljava/lang/Object;
.source "TimePickerBuilder.java"


# instance fields
.field private mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnTimeSelectListener;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/bigkoo/pickerview/configure/PickerOptions;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/configure/PickerOptions;-><init>(I)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    .line 28
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->context:Landroid/content/Context;

    .line 29
    iput-object p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->timeSelectListener:Lcom/bigkoo/pickerview/listener/OnTimeSelectListener;

    return-void
.end method


# virtual methods
.method public addOnCancelClickListener(Landroid/view/View$OnClickListener;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cancelListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public build()Lcom/bigkoo/pickerview/view/TimePickerView;
    .locals 2

    .line 292
    new-instance v0, Lcom/bigkoo/pickerview/view/TimePickerView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/view/TimePickerView;-><init>(Lcom/bigkoo/pickerview/configure/PickerOptions;)V

    return-object v0
.end method

.method public isCenterLabel(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isCenterLabel:Z

    return-object p0
.end method

.method public isCyclic(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cyclic:Z

    return-object p0
.end method

.method public isDialog(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isDialog:Z

    return-object p0
.end method

.method public setBackgroundId(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->outSideColor:I

    return-object p0
.end method

.method public setBgColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->bgColorWheel:I

    return-object p0
.end method

.method public setCancelColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorCancel:I

    return-object p0
.end method

.method public setCancelText(Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentCancel:Ljava/lang/String;

    return-object p0
.end method

.method public setContentTextSize(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeContent:I

    return-object p0
.end method

.method public setDate(Ljava/util/Calendar;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    return-object p0
.end method

.method public setDecorView(Landroid/view/ViewGroup;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->decorView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public setDividerColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 174
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->dividerColor:I

    return-object p0
.end method

.method public setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    return-object p0
.end method

.method public setGravity(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textGravity:I

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_year:Ljava/lang/String;

    .line 247
    iput-object p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_month:Ljava/lang/String;

    .line 248
    iput-object p3, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_day:Ljava/lang/String;

    .line 249
    iput-object p4, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_hours:Ljava/lang/String;

    .line 250
    iput-object p5, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_minutes:Ljava/lang/String;

    .line 251
    iput-object p6, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_seconds:Ljava/lang/String;

    return-object p0
.end method

.method public setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->layoutRes:I

    .line 140
    iput-object p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->customListener:Lcom/bigkoo/pickerview/listener/CustomListener;

    return-object p0
.end method

.method public setLineSpacingMultiplier(F)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->lineSpacingMultiplier:F

    return-object p0
.end method

.method public setLunarCalendar(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isLunarCalendar:Z

    return-object p0
.end method

.method public setOutSideCancelable(Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-boolean p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cancelable:Z

    return-object p0
.end method

.method public setOutSideColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 205
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->outSideColor:I

    return-object p0
.end method

.method public setRangDate(Ljava/util/Calendar;Ljava/util/Calendar;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->startDate:Ljava/util/Calendar;

    .line 152
    iput-object p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->endDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public setSubCalSize(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeSubmitCancel:I

    return-object p0
.end method

.method public setSubmitColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorConfirm:I

    return-object p0
.end method

.method public setSubmitText(Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentConfirm:Ljava/lang/String;

    return-object p0
.end method

.method public setTextColorCenter(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 215
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorCenter:I

    return-object p0
.end method

.method public setTextColorOut(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 225
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorOut:I

    return-object p0
.end method

.method public setTextXOffset(IIIIII)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_year:I

    .line 269
    iput p2, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_month:I

    .line 270
    iput p3, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_day:I

    .line 271
    iput p4, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_hours:I

    .line 272
    iput p5, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_minutes:I

    .line 273
    iput p6, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_seconds:I

    return-object p0
.end method

.method public setTimeSelectChangeListener(Lcom/bigkoo/pickerview/listener/OnTimeSelectChangeListener;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->timeSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnTimeSelectChangeListener;

    return-object p0
.end method

.method public setTitleBgColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->bgColorTitle:I

    return-object p0
.end method

.method public setTitleColor(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorTitle:I

    return-object p0
.end method

.method public setTitleSize(I)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeTitle:I

    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setType([Z)Lcom/bigkoo/pickerview/builder/TimePickerBuilder;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/bigkoo/pickerview/builder/TimePickerBuilder;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->type:[Z

    return-object p0
.end method
