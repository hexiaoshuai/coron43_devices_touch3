.class public Landroid/widget/TYColorClockView;
.super Landroid/widget/RelativeLayout;
.source "TYColorClockView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final CHANGE_CLOCK_COLOR:Ljava/lang/String; = "android.widget.broadcast.change_clock_color"

.field private static final DAIL_ID:I = 0x65

.field private static final HOUR_ID:I = 0x66

.field private static final MINUTE_ID:I = 0x67

.field private static final ROTATE_FOR_HOUR:J = 0x6L

.field private static final ROTATE_FOR_MINUTE:J = 0x5L


# instance fields
.field private TAG:Ljava/lang/String;

.field private currentColor:Ljava/lang/String;

.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mDail:Landroid/graphics/drawable/Drawable;

.field private mDownMotionY:F

.field private final mHandler:Landroid/os/Handler;

.field private mHour:F

.field private mHourFromDegree:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private mHourToDegree:F

.field private mImgDail:Landroid/widget/ImageView;

.field private mImgHour:Landroid/widget/ImageView;

.field private mImgMinute:Landroid/widget/ImageView;

.field private mInitRotateHour:F

.field private mInitRotateMinutes:F

.field private mIsDailRefreshNeed:Z

.field private mLastHours:F

.field private mLastMinutes:F

.field private mMinuteFromDegree:F

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinuteToDegree:F

.field private mMinutes:F

.field private final mTimeReceiver:Landroid/content/BroadcastReceiver;

.field private mUpMotionY:F

.field private mUpdateHandler:Landroid/os/Handler;

.field private widgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TYColorClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TYColorClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const-string v3, "TYColorClockView"

    iput-object v3, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    .line 56
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Landroid/widget/TYColorClockView;->mHandler:Landroid/os/Handler;

    .line 77
    iput-boolean v6, p0, Landroid/widget/TYColorClockView;->mIsDailRefreshNeed:Z

    .line 79
    iput v4, p0, Landroid/widget/TYColorClockView;->mHourFromDegree:F

    .line 80
    iput v4, p0, Landroid/widget/TYColorClockView;->mHourToDegree:F

    .line 82
    iput v4, p0, Landroid/widget/TYColorClockView;->mMinuteFromDegree:F

    .line 83
    iput v4, p0, Landroid/widget/TYColorClockView;->mMinuteToDegree:F

    .line 89
    const-string/jumbo v3, "red"

    iput-object v3, p0, Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;

    .line 92
    new-instance v3, Landroid/widget/TYColorClockView$1;

    invoke-direct {v3, p0}, Landroid/widget/TYColorClockView$1;-><init>(Landroid/widget/TYColorClockView;)V

    iput-object v3, p0, Landroid/widget/TYColorClockView;->mUpdateHandler:Landroid/os/Handler;

    .line 163
    new-instance v3, Landroid/widget/TYColorClockView$2;

    invoke-direct {v3, p0}, Landroid/widget/TYColorClockView$2;-><init>(Landroid/widget/TYColorClockView;)V

    iput-object v3, p0, Landroid/widget/TYColorClockView;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 206
    .local v2, r:Landroid/content/res/Resources;
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 207
    const v3, 0x108065a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;

    .line 209
    :cond_0
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 210
    const v3, 0x1080657

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TYColorClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 212
    :cond_1
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 213
    const v3, 0x1080658

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TYColorClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 216
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 218
    .local v0, dailLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 221
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/TYColorClockView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/TYColorClockView;->mImgDail:Landroid/widget/ImageView;

    .line 222
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mImgDail:Landroid/widget/ImageView;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 223
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mImgDail:Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mImgDail:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v0}, Landroid/widget/TYColorClockView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 228
    .local v1, handLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 229
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 231
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/TYColorClockView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/TYColorClockView;->mImgHour:Landroid/widget/ImageView;

    .line 232
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mImgHour:Landroid/widget/ImageView;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 233
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mImgHour:Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/TYColorClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mImgHour:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v1}, Landroid/widget/TYColorClockView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/TYColorClockView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/TYColorClockView;->mImgMinute:Landroid/widget/ImageView;

    .line 237
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mImgMinute:Landroid/widget/ImageView;

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 238
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mImgMinute:Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/TYColorClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mImgMinute:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v1}, Landroid/widget/TYColorClockView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iput-object v3, p0, Landroid/widget/TYColorClockView;->mCalendar:Landroid/text/format/Time;

    .line 244
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TYColorClockView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/widget/TYColorClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/TYColorClockView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/TYColorClockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/widget/TYColorClockView;->mImgMinute:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/TYColorClockView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Landroid/widget/TYColorClockView;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/widget/TYColorClockView;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/widget/TYColorClockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/TYColorClockView;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TYColorClockView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/TYColorClockView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/TYColorClockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/widget/TYColorClockView;->mImgDail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TYColorClockView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/TYColorClockView;->widgetId:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/TYColorClockView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/widget/TYColorClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TYColorClockView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TYColorClockView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/TYColorClockView;->mHour:F

    return v0
.end method

.method static synthetic access$800(Landroid/widget/TYColorClockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/widget/TYColorClockView;->mImgHour:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/TYColorClockView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/TYColorClockView;->mMinutes:F

    return v0
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/TYColorClockView;->mDownMotionY:F

    .line 278
    return-void
.end method

.method private handleUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/TYColorClockView;->mUpMotionY:F

    .line 283
    iget v0, p0, Landroid/widget/TYColorClockView;->mUpMotionY:F

    iget v1, p0, Landroid/widget/TYColorClockView;->mDownMotionY:F

    const/high16 v2, 0x4040

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 284
    invoke-direct {p0}, Landroid/widget/TYColorClockView;->updateClock()V

    .line 285
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTimeRefreshed(Z)V
    .locals 11
    .parameter "isRefreshed"

    .prologue
    .line 513
    if-eqz p1, :cond_2

    .line 515
    iget v4, p0, Landroid/widget/TYColorClockView;->mLastHours:F

    iget v5, p0, Landroid/widget/TYColorClockView;->mHour:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 517
    const/4 v10, 0x0

    .line 518
    .local v10, rotateDegree:F
    iget-object v4, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*******************************************mLastHours: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/TYColorClockView;->mLastHours:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v4, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*******************************************mHour: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/TYColorClockView;->mHour:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v1, 0x0

    .line 521
    .local v1, fromDegree:F
    const/4 v2, 0x0

    .line 523
    .local v2, toDegree:F
    iget v4, p0, Landroid/widget/TYColorClockView;->mLastHours:F

    const/high16 v5, 0x4140

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    .line 524
    iget v4, p0, Landroid/widget/TYColorClockView;->mLastHours:F

    const/high16 v5, 0x4140

    rem-float/2addr v4, v5

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v1, v4, v5

    .line 529
    :goto_0
    iget v4, p0, Landroid/widget/TYColorClockView;->mHour:F

    const/high16 v5, 0x4140

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 530
    iget v4, p0, Landroid/widget/TYColorClockView;->mHour:F

    const/high16 v5, 0x4140

    rem-float/2addr v4, v5

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v2, v4, v5

    .line 534
    :goto_1
    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    .line 535
    const/high16 v4, 0x43b4

    add-float/2addr v2, v4

    .line 537
    :cond_0
    sub-float v10, v2, v1

    .line 538
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 541
    .local v0, hour_anim:Landroid/view/animation/RotateAnimation;
    iget-object v4, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isTimeRefreshed-----------------------------1>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/high16 v4, 0x40c0

    mul-float/2addr v4, v10

    float-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 543
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 544
    iget-object v4, p0, Landroid/widget/TYColorClockView;->mImgHour:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 546
    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->startNow()V

    .line 547
    iget v4, p0, Landroid/widget/TYColorClockView;->mHour:F

    iput v4, p0, Landroid/widget/TYColorClockView;->mLastHours:F

    .line 549
    .end local v0           #hour_anim:Landroid/view/animation/RotateAnimation;
    .end local v1           #fromDegree:F
    .end local v2           #toDegree:F
    .end local v10           #rotateDegree:F
    :cond_1
    iget v4, p0, Landroid/widget/TYColorClockView;->mLastMinutes:F

    iget v5, p0, Landroid/widget/TYColorClockView;->mMinutes:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 551
    const/4 v10, 0x0

    .line 552
    .restart local v10       #rotateDegree:F
    iget v4, p0, Landroid/widget/TYColorClockView;->mLastMinutes:F

    iget v5, p0, Landroid/widget/TYColorClockView;->mMinutes:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 553
    new-instance v3, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Landroid/widget/TYColorClockView;->mLastMinutes:F

    const/high16 v5, 0x4270

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/widget/TYColorClockView;->mMinutes:F

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    const/high16 v6, 0x43b4

    add-float/2addr v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 557
    .local v3, minute_anim:Landroid/view/animation/RotateAnimation;
    iget v4, p0, Landroid/widget/TYColorClockView;->mMinutes:F

    const/high16 v5, 0x4270

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    const/high16 v5, 0x43b4

    add-float/2addr v4, v5

    iget v5, p0, Landroid/widget/TYColorClockView;->mLastMinutes:F

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    sub-float v10, v4, v5

    .line 566
    :goto_2
    const/high16 v4, 0x40a0

    mul-float/2addr v4, v10

    float-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 567
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 568
    iget-object v4, p0, Landroid/widget/TYColorClockView;->mImgMinute:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 569
    iget v4, p0, Landroid/widget/TYColorClockView;->mMinutes:F

    iput v4, p0, Landroid/widget/TYColorClockView;->mLastMinutes:F

    .line 572
    .end local v3           #minute_anim:Landroid/view/animation/RotateAnimation;
    .end local v10           #rotateDegree:F
    :cond_2
    return-void

    .line 526
    .restart local v1       #fromDegree:F
    .restart local v2       #toDegree:F
    .restart local v10       #rotateDegree:F
    :cond_3
    iget v4, p0, Landroid/widget/TYColorClockView;->mLastHours:F

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v1, v4, v5

    goto/16 :goto_0

    .line 532
    :cond_4
    iget v4, p0, Landroid/widget/TYColorClockView;->mHour:F

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v2, v4, v5

    goto/16 :goto_1

    .line 560
    .end local v1           #fromDegree:F
    .end local v2           #toDegree:F
    :cond_5
    new-instance v3, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Landroid/widget/TYColorClockView;->mLastMinutes:F

    const/high16 v5, 0x4270

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/widget/TYColorClockView;->mMinutes:F

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 564
    .restart local v3       #minute_anim:Landroid/view/animation/RotateAnimation;
    iget v4, p0, Landroid/widget/TYColorClockView;->mMinutes:F

    const/high16 v5, 0x4270

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/widget/TYColorClockView;->mLastMinutes:F

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    sub-float v10, v4, v5

    goto :goto_2
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    const/high16 v5, 0x4270

    .line 176
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 178
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 179
    .local v0, hour:I
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 180
    .local v1, minute:I
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 182
    .local v2, second:I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/TYColorClockView;->mMinutes:F

    .line 183
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/TYColorClockView;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/TYColorClockView;->mHour:F

    .line 185
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/widget/TYColorClockView;->isTimeRefreshed(Z)V

    .line 187
    iget-object v3, p0, Landroid/widget/TYColorClockView;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0, v3}, Landroid/widget/TYColorClockView;->updateContentDescription(Landroid/text/format/Time;)V

    .line 188
    return-void
.end method

.method private playDialImageAnimation(Z)V
    .locals 9
    .parameter "play"

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3f4ccccd

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    .line 424
    iget-object v3, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "playDialImageAnimation: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    if-eqz p1, :cond_0

    .line 427
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 429
    .local v0, dail_anim:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 430
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 431
    iget-object v1, p0, Landroid/widget/TYColorClockView;->mImgDail:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 433
    .end local v0           #dail_anim:Landroid/view/animation/ScaleAnimation;
    :cond_0
    return-void
.end method

.method private setColorBg()V
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Landroid/widget/TYColorClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    .local v0, r:Landroid/content/res/Resources;
    const-string/jumbo v1, "red"

    iget-object v2, p0, Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const v1, 0x108065a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;

    .line 159
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/TYColorClockView;->mImgDail:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void

    .line 151
    :cond_1
    const-string v1, "blue"

    iget-object v2, p0, Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const v1, 0x1080656

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 155
    :cond_2
    const-string/jumbo v1, "purple"

    iget-object v2, p0, Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const v1, 0x1080659

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateClock()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/TYColorClockView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 294
    .local v0, mAnim:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 295
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 296
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 297
    invoke-virtual {p0, v0}, Landroid/widget/TYColorClockView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v1, p0, Landroid/widget/TYColorClockView;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 301
    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 6
    .parameter "time"

    .prologue
    .line 575
    const/16 v1, 0x81

    .line 576
    .local v1, flags:I
    iget-object v2, p0, Landroid/widget/TYColorClockView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const/16 v5, 0x81

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, contentDescription:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/widget/TYColorClockView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 579
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x43b4

    const/high16 v9, 0x4140

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    .line 306
    iget-boolean v1, p0, Landroid/widget/TYColorClockView;->mAttached:Z

    if-nez v1, :cond_0

    .line 307
    iput-boolean v5, p0, Landroid/widget/TYColorClockView;->mAttached:Z

    .line 308
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v14, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Landroid/widget/TYColorClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/TYColorClockView;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v8, p0, Landroid/widget/TYColorClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v14, v4, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 318
    .end local v14           #filter:Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Landroid/widget/TYColorClockView;->mCalendar:Landroid/text/format/Time;

    .line 319
    invoke-direct {p0}, Landroid/widget/TYColorClockView;->onTimeChanged()V

    .line 321
    iget v1, p0, Landroid/widget/TYColorClockView;->mHour:F

    iput v1, p0, Landroid/widget/TYColorClockView;->mLastHours:F

    .line 322
    iget v1, p0, Landroid/widget/TYColorClockView;->mMinutes:F

    iput v1, p0, Landroid/widget/TYColorClockView;->mLastMinutes:F

    .line 324
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f4ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f4ccccd

    const/high16 v4, 0x3f80

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 326
    .local v0, dail_anim:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 327
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 328
    iget-object v1, p0, Landroid/widget/TYColorClockView;->mImgDail:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 331
    iget v1, p0, Landroid/widget/TYColorClockView;->mHour:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_1

    .line 332
    new-instance v2, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Landroid/widget/TYColorClockView;->mHour:F

    div-float/2addr v1, v9

    mul-float v4, v1, v10

    move v3, v11

    move v7, v5

    move v8, v6

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 339
    .local v2, hour_anim:Landroid/view/animation/RotateAnimation;
    :goto_0
    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 340
    invoke-virtual {v2, v5}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 341
    iget-object v1, p0, Landroid/widget/TYColorClockView;->mImgHour:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 343
    new-instance v7, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Landroid/widget/TYColorClockView;->mMinutes:F

    const/high16 v3, 0x4270

    div-float/2addr v1, v3

    mul-float/2addr v1, v10

    add-float v9, v1, v10

    move v8, v11

    move v10, v5

    move v11, v6

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 345
    .local v7, minute_anim:Landroid/view/animation/RotateAnimation;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v7, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 346
    invoke-virtual {v7, v5}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 347
    iget-object v1, p0, Landroid/widget/TYColorClockView;->mImgMinute:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 349
    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->startNow()V

    .line 350
    invoke-virtual {v2}, Landroid/view/animation/RotateAnimation;->startNow()V

    .line 351
    invoke-virtual {v7}, Landroid/view/animation/RotateAnimation;->startNow()V

    .line 352
    return-void

    .line 336
    .end local v2           #hour_anim:Landroid/view/animation/RotateAnimation;
    .end local v7           #minute_anim:Landroid/view/animation/RotateAnimation;
    :cond_1
    new-instance v2, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Landroid/widget/TYColorClockView;->mHour:F

    sub-float/2addr v1, v9

    div-float/2addr v1, v9

    mul-float v4, v1, v10

    move v3, v11

    move v7, v5

    move v8, v6

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .restart local v2       #hour_anim:Landroid/view/animation/RotateAnimation;
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 356
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 357
    iget-boolean v0, p0, Landroid/widget/TYColorClockView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Landroid/widget/TYColorClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TYColorClockView;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TYColorClockView;->mAttached:Z

    .line 361
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 249
    .local v0, action:I
    const/4 v1, 0x1

    .line 251
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 265
    const/4 v1, 0x0

    .line 269
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TYColorClockView;->invalidate()V

    .line 270
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v1

    .line 271
    :goto_1
    return v2

    .line 253
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/TYColorClockView;->handleDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 257
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/TYColorClockView;->handleUp(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 258
    if-eqz v1, :cond_0

    .line 259
    const/4 v2, 0x1

    goto :goto_1

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public playPauseTimeAnimation(Z)V
    .locals 14
    .parameter "isRefreshed"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 437
    iget-object v4, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playPauseTimeAnimation1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-eqz p1, :cond_2

    .line 439
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 440
    .local v12, currentTime:Landroid/text/format/Time;
    invoke-virtual {v12}, Landroid/text/format/Time;->setToNow()V

    .line 441
    iget v4, v12, Landroid/text/format/Time;->minute:I

    int-to-float v4, v4

    iget v5, v12, Landroid/text/format/Time;->second:I

    int-to-float v5, v5

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    add-float v11, v4, v5

    .line 442
    .local v11, currentMinutes:F
    iget v4, v12, Landroid/text/format/Time;->hour:I

    int-to-float v4, v4

    const/high16 v5, 0x4270

    div-float v5, v11, v5

    add-float v10, v4, v5

    .line 445
    .local v10, currentHour:F
    iget v4, p0, Landroid/widget/TYColorClockView;->mInitRotateHour:F

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_1

    .line 447
    const/4 v13, 0x0

    .line 448
    .local v13, rotateDegree:F
    const/4 v1, 0x0

    .line 449
    .local v1, fromDegree:F
    const/4 v2, 0x0

    .line 451
    .local v2, toDegree:F
    iget v4, p0, Landroid/widget/TYColorClockView;->mInitRotateHour:F

    const/high16 v5, 0x4140

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    .line 452
    iget v4, p0, Landroid/widget/TYColorClockView;->mInitRotateHour:F

    const/high16 v5, 0x4140

    rem-float/2addr v4, v5

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v1, v4, v5

    .line 457
    :goto_0
    const/high16 v4, 0x4140

    cmpl-float v4, v10, v4

    if-ltz v4, :cond_4

    .line 458
    const/high16 v4, 0x4140

    rem-float v4, v10, v4

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v2, v4, v5

    .line 463
    :goto_1
    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    .line 464
    const/high16 v4, 0x43b4

    add-float/2addr v2, v4

    .line 467
    :cond_0
    sub-float v13, v2, v1

    .line 468
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 471
    .local v0, hour_anim:Landroid/view/animation/RotateAnimation;
    iget-object v4, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$playPauseTimeAnimation1-->: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/high16 v4, 0x40c0

    mul-float/2addr v4, v13

    float-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 474
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 475
    iget-object v4, p0, Landroid/widget/TYColorClockView;->mImgHour:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 476
    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->startNow()V

    .line 479
    .end local v0           #hour_anim:Landroid/view/animation/RotateAnimation;
    .end local v1           #fromDegree:F
    .end local v2           #toDegree:F
    .end local v13           #rotateDegree:F
    :cond_1
    iget v4, p0, Landroid/widget/TYColorClockView;->mInitRotateMinutes:F

    cmpl-float v4, v4, v11

    if-eqz v4, :cond_2

    .line 482
    const/4 v13, 0x0

    .line 483
    .restart local v13       #rotateDegree:F
    iget v4, p0, Landroid/widget/TYColorClockView;->mInitRotateMinutes:F

    cmpl-float v4, v4, v11

    if-lez v4, :cond_5

    .line 484
    new-instance v3, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Landroid/widget/TYColorClockView;->mInitRotateMinutes:F

    const/high16 v5, 0x4270

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    const/high16 v5, 0x4270

    div-float v5, v11, v5

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    const/high16 v6, 0x43b4

    add-float/2addr v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 489
    .local v3, minute_anim:Landroid/view/animation/RotateAnimation;
    const/high16 v4, 0x4270

    div-float v4, v11, v4

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    const/high16 v5, 0x43b4

    add-float/2addr v4, v5

    iget v5, p0, Landroid/widget/TYColorClockView;->mInitRotateMinutes:F

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    sub-float v13, v4, v5

    .line 491
    iget-object v4, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^rotate 1-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_2
    const/high16 v4, 0x40a0

    mul-float/2addr v4, v13

    float-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 504
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 505
    iget-object v4, p0, Landroid/widget/TYColorClockView;->mImgMinute:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 508
    .end local v3           #minute_anim:Landroid/view/animation/RotateAnimation;
    .end local v10           #currentHour:F
    .end local v11           #currentMinutes:F
    .end local v12           #currentTime:Landroid/text/format/Time;
    .end local v13           #rotateDegree:F
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/TYColorClockView;->mIsDailRefreshNeed:Z

    .line 509
    return-void

    .line 454
    .restart local v1       #fromDegree:F
    .restart local v2       #toDegree:F
    .restart local v10       #currentHour:F
    .restart local v11       #currentMinutes:F
    .restart local v12       #currentTime:Landroid/text/format/Time;
    .restart local v13       #rotateDegree:F
    :cond_3
    iget v4, p0, Landroid/widget/TYColorClockView;->mInitRotateHour:F

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v1, v4, v5

    goto/16 :goto_0

    .line 460
    :cond_4
    const/high16 v4, 0x4140

    div-float v4, v10, v4

    const/high16 v5, 0x43b4

    mul-float v2, v4, v5

    goto/16 :goto_1

    .line 494
    .end local v1           #fromDegree:F
    .end local v2           #toDegree:F
    :cond_5
    new-instance v3, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Landroid/widget/TYColorClockView;->mInitRotateMinutes:F

    const/high16 v5, 0x4270

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    const/high16 v5, 0x4270

    div-float v5, v11, v5

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 498
    .restart local v3       #minute_anim:Landroid/view/animation/RotateAnimation;
    const/high16 v4, 0x4270

    div-float v4, v11, v4

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/widget/TYColorClockView;->mInitRotateMinutes:F

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    sub-float v13, v4, v5

    .line 500
    iget-object v4, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^rotate 2-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setCurrentColor(Ljava/lang/String;)V
    .locals 4
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;

    .line 402
    .local v0, oldColor:Ljava/lang/String;
    iput-object p1, p0, Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;

    .line 403
    iget-object v1, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " color#####"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v1, p0, Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    invoke-direct {p0}, Landroid/widget/TYColorClockView;->setColorBg()V

    .line 407
    :cond_0
    return-void
.end method

.method public setDailBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setDailBitmap: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 367
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iput-object v0, p0, Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;

    .line 368
    iget-object v1, p0, Landroid/widget/TYColorClockView;->mImgDail:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    return-void
.end method

.method public setDailRefreshNeed(Z)V
    .locals 3
    .parameter "isNeed"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDailRefreshNeed:isNeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iput-boolean p1, p0, Landroid/widget/TYColorClockView;->mIsDailRefreshNeed:Z

    .line 419
    invoke-direct {p0, p1}, Landroid/widget/TYColorClockView;->playDialImageAnimation(Z)V

    .line 420
    return-void
.end method

.method public setHourBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 373
    iget-object v1, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setHourBitmap:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 375
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iput-object v0, p0, Landroid/widget/TYColorClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 376
    iget-object v1, p0, Landroid/widget/TYColorClockView;->mImgHour:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/TYColorClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    return-void
.end method

.method public setHourValue(F)V
    .locals 3
    .parameter "initRotateHour"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRotateHour: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iput p1, p0, Landroid/widget/TYColorClockView;->mInitRotateHour:F

    .line 391
    return-void
.end method

.method public setMinuteBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 381
    iget-object v1, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setMinuteBitmap: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 383
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iput-object v0, p0, Landroid/widget/TYColorClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 384
    iget-object v1, p0, Landroid/widget/TYColorClockView;->mImgMinute:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/TYColorClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    return-void
.end method

.method public setMinuteValue(F)V
    .locals 3
    .parameter "initRotateMinutes"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRotateMinutes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iput p1, p0, Landroid/widget/TYColorClockView;->mInitRotateMinutes:F

    .line 397
    return-void
.end method

.method public setWidgetId(I)V
    .locals 3
    .parameter "id"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 411
    iput p1, p0, Landroid/widget/TYColorClockView;->widgetId:I

    .line 412
    iget-object v0, p0, Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " widgetId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TYColorClockView;->widgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void
.end method
