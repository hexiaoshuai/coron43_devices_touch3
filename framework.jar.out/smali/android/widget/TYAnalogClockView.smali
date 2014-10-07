.class public Landroid/widget/TYAnalogClockView;
.super Landroid/widget/RelativeLayout;
.source "TYAnalogClockView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DAIL_ID:I = 0x65

.field private static final HOUR_ID:I = 0x66

.field private static final MINUTE_ID:I = 0x67

.field private static final ROTATE_DURATION_PER_DEGREE:F = 2.0f

.field private static final ROTATE_FOR_HOUR:J = 0x6L

.field private static final ROTATE_FOR_MINUTE:J = 0x5L


# instance fields
.field private TAG:Ljava/lang/String;

.field mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mDail:Landroid/graphics/drawable/Drawable;

.field private final mHandler:Landroid/os/Handler;

.field private mHour:F

.field mHourAnimationListener:Landroid/view/animation/Animation$AnimationListener;

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

.field mMinuteAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mMinuteFromDegree:F

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinuteToDegree:F

.field private mMinutes:F

.field private mPreviewLayout:Landroid/widget/RelativeLayout;

.field private final mTimeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TYAnalogClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TYAnalogClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v9, 0xf

    const/16 v8, 0xe

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const-string v4, "TYAnalogClockView"

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->TAG:Ljava/lang/String;

    .line 88
    iput-boolean v7, p0, Landroid/widget/TYAnalogClockView;->mIsDailRefreshNeed:Z

    .line 90
    iput v5, p0, Landroid/widget/TYAnalogClockView;->mHourFromDegree:F

    .line 91
    iput v5, p0, Landroid/widget/TYAnalogClockView;->mHourToDegree:F

    .line 93
    iput v5, p0, Landroid/widget/TYAnalogClockView;->mMinuteFromDegree:F

    .line 94
    iput v5, p0, Landroid/widget/TYAnalogClockView;->mMinuteToDegree:F

    .line 97
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v4, Landroid/widget/TYAnalogClockView$1;

    invoke-direct {v4, p0}, Landroid/widget/TYAnalogClockView$1;-><init>(Landroid/widget/TYAnalogClockView;)V

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    new-instance v4, Landroid/widget/TYAnalogClockView$2;

    invoke-direct {v4, p0}, Landroid/widget/TYAnalogClockView$2;-><init>(Landroid/widget/TYAnalogClockView;)V

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 311
    new-instance v4, Landroid/widget/TYAnalogClockView$3;

    invoke-direct {v4, p0}, Landroid/widget/TYAnalogClockView$3;-><init>(Landroid/widget/TYAnalogClockView;)V

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->mMinuteAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 340
    new-instance v4, Landroid/widget/TYAnalogClockView$4;

    invoke-direct {v4, p0}, Landroid/widget/TYAnalogClockView$4;-><init>(Landroid/widget/TYAnalogClockView;)V

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->mHourAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 139
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->TAG:Ljava/lang/String;

    const-string v5, "TYAnalogClockView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 142
    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mDail:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 143
    const v4, 0x1080636

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->mDail:Landroid/graphics/drawable/Drawable;

    .line 145
    :cond_0
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 146
    const v4, 0x1080637

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 148
    :cond_1
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 149
    const v4, 0x1080638

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 152
    :cond_2
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Landroid/widget/TYAnalogClockView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->mPreviewLayout:Landroid/widget/RelativeLayout;

    .line 154
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v2, previewParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v0, dailLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/widget/TYAnalogClockView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->mImgDail:Landroid/widget/ImageView;

    .line 165
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mImgDail:Landroid/widget/ImageView;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 166
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mImgDail:Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/widget/TYAnalogClockView;->mDail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mPreviewLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Landroid/widget/TYAnalogClockView;->mImgDail:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v1, handLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 172
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 174
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/widget/TYAnalogClockView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->mImgHour:Landroid/widget/ImageView;

    .line 175
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mImgHour:Landroid/widget/ImageView;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 176
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mImgHour:Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/widget/TYAnalogClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mPreviewLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Landroid/widget/TYAnalogClockView;->mImgHour:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/widget/TYAnalogClockView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->mImgMinute:Landroid/widget/ImageView;

    .line 180
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mImgMinute:Landroid/widget/ImageView;

    const/16 v5, 0x67

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 181
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mImgMinute:Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/widget/TYAnalogClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mPreviewLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Landroid/widget/TYAnalogClockView;->mImgMinute:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4, v2}, Landroid/widget/TYAnalogClockView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, p0, Landroid/widget/TYAnalogClockView;->mCalendar:Landroid/text/format/Time;

    .line 186
    return-void
.end method

.method static synthetic access$002(Landroid/widget/TYAnalogClockView;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/widget/TYAnalogClockView;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/TYAnalogClockView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/TYAnalogClockView;->onTimeChanged(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/TYAnalogClockView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/TYAnalogClockView;->mMinuteFromDegree:F

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/TYAnalogClockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/TYAnalogClockView;->mImgMinute:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/TYAnalogClockView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Landroid/widget/TYAnalogClockView;->mLastHours:F

    return p1
.end method

.method static synthetic access$300(Landroid/widget/TYAnalogClockView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/TYAnalogClockView;->mHour:F

    return v0
.end method

.method static synthetic access$402(Landroid/widget/TYAnalogClockView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Landroid/widget/TYAnalogClockView;->mLastMinutes:F

    return p1
.end method

.method static synthetic access$500(Landroid/widget/TYAnalogClockView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/TYAnalogClockView;->mMinutes:F

    return v0
.end method

.method static synthetic access$600(Landroid/widget/TYAnalogClockView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/TYAnalogClockView;->mHourToDegree:F

    return v0
.end method

.method static synthetic access$602(Landroid/widget/TYAnalogClockView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Landroid/widget/TYAnalogClockView;->mHourToDegree:F

    return p1
.end method

.method static synthetic access$700(Landroid/widget/TYAnalogClockView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/TYAnalogClockView;->mHourFromDegree:F

    return v0
.end method

.method static synthetic access$800(Landroid/widget/TYAnalogClockView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/TYAnalogClockView;->mImgHour:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/TYAnalogClockView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/TYAnalogClockView;->mMinuteToDegree:F

    return v0
.end method

.method static synthetic access$902(Landroid/widget/TYAnalogClockView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Landroid/widget/TYAnalogClockView;->mMinuteToDegree:F

    return p1
.end method

.method private isTimeRefreshed(Z)V
    .locals 11
    .parameter "isRefreshed"

    .prologue
    .line 512
    if-eqz p1, :cond_2

    .line 514
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mLastHours:F

    iget v5, p0, Landroid/widget/TYAnalogClockView;->mHour:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 516
    const/4 v10, 0x0

    .line 517
    .local v10, rotateDegree:F
    const/4 v1, 0x0

    .line 518
    .local v1, fromDegree:F
    const/4 v2, 0x0

    .line 520
    .local v2, toDegree:F
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mLastHours:F

    const/high16 v5, 0x4140

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    .line 521
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mLastHours:F

    const/high16 v5, 0x4140

    rem-float/2addr v4, v5

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v1, v4, v5

    .line 526
    :goto_0
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mHour:F

    const/high16 v5, 0x4140

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 527
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mHour:F

    const/high16 v5, 0x4140

    rem-float/2addr v4, v5

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v2, v4, v5

    .line 531
    :goto_1
    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    .line 532
    const/high16 v4, 0x43b4

    add-float/2addr v2, v4

    .line 534
    :cond_0
    sub-float v10, v2, v1

    .line 535
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 538
    .local v0, hour_anim:Landroid/view/animation/RotateAnimation;
    const/high16 v4, 0x40c0

    mul-float/2addr v4, v10

    float-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 539
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 540
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mImgHour:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 542
    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->startNow()V

    .line 543
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mHour:F

    iput v4, p0, Landroid/widget/TYAnalogClockView;->mLastHours:F

    .line 545
    .end local v0           #hour_anim:Landroid/view/animation/RotateAnimation;
    .end local v1           #fromDegree:F
    .end local v2           #toDegree:F
    .end local v10           #rotateDegree:F
    :cond_1
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mLastMinutes:F

    iget v5, p0, Landroid/widget/TYAnalogClockView;->mMinutes:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 547
    const/4 v10, 0x0

    .line 548
    .restart local v10       #rotateDegree:F
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mLastMinutes:F

    iget v5, p0, Landroid/widget/TYAnalogClockView;->mMinutes:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 549
    new-instance v3, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Landroid/widget/TYAnalogClockView;->mLastMinutes:F

    const/high16 v5, 0x4270

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/widget/TYAnalogClockView;->mMinutes:F

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

    .line 552
    .local v3, minute_anim:Landroid/view/animation/RotateAnimation;
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mMinutes:F

    const/high16 v5, 0x4270

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    const/high16 v5, 0x43b4

    add-float/2addr v4, v5

    iget v5, p0, Landroid/widget/TYAnalogClockView;->mLastMinutes:F

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    sub-float v10, v4, v5

    .line 559
    :goto_2
    const/high16 v4, 0x40a0

    mul-float/2addr v4, v10

    float-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 560
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 561
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mImgMinute:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 562
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mMinutes:F

    iput v4, p0, Landroid/widget/TYAnalogClockView;->mLastMinutes:F

    .line 565
    .end local v3           #minute_anim:Landroid/view/animation/RotateAnimation;
    .end local v10           #rotateDegree:F
    :cond_2
    return-void

    .line 523
    .restart local v1       #fromDegree:F
    .restart local v2       #toDegree:F
    .restart local v10       #rotateDegree:F
    :cond_3
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mLastHours:F

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v1, v4, v5

    goto/16 :goto_0

    .line 529
    :cond_4
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mHour:F

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v2, v4, v5

    goto/16 :goto_1

    .line 554
    .end local v1           #fromDegree:F
    .end local v2           #toDegree:F
    :cond_5
    new-instance v3, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Landroid/widget/TYAnalogClockView;->mLastMinutes:F

    const/high16 v5, 0x4270

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/widget/TYAnalogClockView;->mMinutes:F

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 557
    .restart local v3       #minute_anim:Landroid/view/animation/RotateAnimation;
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mMinutes:F

    const/high16 v5, 0x4270

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/widget/TYAnalogClockView;->mLastMinutes:F

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    sub-float v10, v4, v5

    goto :goto_2
.end method

.method private onTimeChanged(Z)V
    .locals 6
    .parameter "changed"

    .prologue
    const/high16 v5, 0x4270

    .line 111
    iget-object v3, p0, Landroid/widget/TYAnalogClockView;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 113
    iget-object v3, p0, Landroid/widget/TYAnalogClockView;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 114
    .local v0, hour:I
    iget-object v3, p0, Landroid/widget/TYAnalogClockView;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 115
    .local v1, minute:I
    iget-object v3, p0, Landroid/widget/TYAnalogClockView;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 117
    .local v2, second:I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/TYAnalogClockView;->mMinutes:F

    .line 118
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/TYAnalogClockView;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/TYAnalogClockView;->mHour:F

    .line 120
    invoke-direct {p0, p1}, Landroid/widget/TYAnalogClockView;->isTimeRefreshed(Z)V

    .line 122
    iget-object v3, p0, Landroid/widget/TYAnalogClockView;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0, v3}, Landroid/widget/TYAnalogClockView;->updateContentDescription(Landroid/text/format/Time;)V

    .line 123
    return-void
.end method

.method private playAttachedAnimation()V
    .locals 21

    .prologue
    .line 189
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/TYAnalogClockView;->onTimeChanged(Z)V

    .line 191
    const-string/jumbo v18, "scaleX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 193
    .local v8, pvhX1:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "scaleY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 195
    .local v13, pvhY1:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TYAnalogClockView;->mPreviewLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v8, v19, v20

    const/16 v20, 0x1

    aput-object v13, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 196
    .local v2, anim1:Landroid/animation/ObjectAnimator;
    new-instance v18, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v18 .. v18}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 197
    const-wide/16 v18, 0x190

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 199
    const-string/jumbo v18, "scaleX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_2

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 201
    .local v9, pvhX2:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "scaleY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_3

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 203
    .local v14, pvhY2:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TYAnalogClockView;->mPreviewLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v9, v19, v20

    const/16 v20, 0x1

    aput-object v14, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 204
    .local v3, anim2:Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0x3c

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 206
    const-string/jumbo v18, "scaleX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_4

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 208
    .local v10, pvhX3:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "scaleY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_5

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 210
    .local v15, pvhY3:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TYAnalogClockView;->mPreviewLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v15, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 211
    .local v4, anim3:Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0x3c

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 213
    const-string/jumbo v18, "scaleX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_6

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 215
    .local v11, pvhX4:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "scaleY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_7

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 217
    .local v16, pvhY4:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TYAnalogClockView;->mPreviewLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    const/16 v20, 0x1

    aput-object v16, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 218
    .local v5, anim4:Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0x1e

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 220
    const-string/jumbo v18, "scaleX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_8

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 222
    .local v12, pvhX5:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "scaleY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_9

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 224
    .local v17, pvhY5:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TYAnalogClockView;->mPreviewLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v12, v19, v20

    const/16 v20, 0x1

    aput-object v17, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 225
    .local v6, anim5:Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0x1e

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 227
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 228
    .local v7, animator:Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 229
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 230
    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 231
    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TYAnalogClockView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 234
    return-void

    .line 191
    :array_0
    .array-data 0x4
        0x66t 0x66t 0x26t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 193
    :array_1
    .array-data 0x4
        0x66t 0x66t 0x26t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 199
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x86t 0x3ft
    .end array-data

    .line 201
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x86t 0x3ft
    .end array-data

    .line 206
    :array_4
    .array-data 0x4
        0x66t 0x66t 0x86t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 208
    :array_5
    .array-data 0x4
        0x66t 0x66t 0x86t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 213
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xect 0x51t 0x78t 0x3ft
    .end array-data

    .line 215
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xect 0x51t 0x78t 0x3ft
    .end array-data

    .line 220
    :array_8
    .array-data 0x4
        0xect 0x51t 0x78t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 222
    :array_9
    .array-data 0x4
        0xect 0x51t 0x78t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private playDialImageAnimation(Z)V
    .locals 9
    .parameter "play"

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3f4ccccd

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    .line 435
    iget-object v3, p0, Landroid/widget/TYAnalogClockView;->TAG:Ljava/lang/String;

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

    .line 436
    if-eqz p1, :cond_0

    .line 438
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 439
    .local v0, dail_anim:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 440
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 441
    iget-object v1, p0, Landroid/widget/TYAnalogClockView;->mImgDail:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 443
    .end local v0           #dail_anim:Landroid/view/animation/ScaleAnimation;
    :cond_0
    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 6
    .parameter "time"

    .prologue
    .line 568
    const/16 v1, 0x81

    .line 569
    .local v1, flags:I
    iget-object v2, p0, Landroid/widget/TYAnalogClockView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const/16 v5, 0x81

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, contentDescription:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/widget/TYAnalogClockView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 572
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 237
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 238
    iget-object v1, p0, Landroid/widget/TYAnalogClockView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-boolean v1, p0, Landroid/widget/TYAnalogClockView;->mAttached:Z

    if-nez v1, :cond_0

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TYAnalogClockView;->mAttached:Z

    .line 241
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Landroid/widget/TYAnalogClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TYAnalogClockView;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 249
    invoke-direct {p0}, Landroid/widget/TYAnalogClockView;->playAttachedAnimation()V

    .line 251
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 379
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 380
    iget-boolean v0, p0, Landroid/widget/TYAnalogClockView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/widget/TYAnalogClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TYAnalogClockView;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TYAnalogClockView;->mAttached:Z

    .line 384
    :cond_0
    return-void
.end method

.method public playPauseTimeAnimation(Z)V
    .locals 14
    .parameter "isRefreshed"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 447
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->TAG:Ljava/lang/String;

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

    .line 448
    if-eqz p1, :cond_2

    .line 449
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 450
    .local v12, currentTime:Landroid/text/format/Time;
    invoke-virtual {v12}, Landroid/text/format/Time;->setToNow()V

    .line 451
    iget v4, v12, Landroid/text/format/Time;->minute:I

    int-to-float v4, v4

    iget v5, v12, Landroid/text/format/Time;->second:I

    int-to-float v5, v5

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    add-float v11, v4, v5

    .line 452
    .local v11, currentMinutes:F
    iget v4, v12, Landroid/text/format/Time;->hour:I

    int-to-float v4, v4

    const/high16 v5, 0x4270

    div-float v5, v11, v5

    add-float v10, v4, v5

    .line 455
    .local v10, currentHour:F
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mInitRotateHour:F

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_1

    .line 457
    const/4 v13, 0x0

    .line 458
    .local v13, rotateDegree:F
    const/4 v1, 0x0

    .line 459
    .local v1, fromDegree:F
    const/4 v2, 0x0

    .line 461
    .local v2, toDegree:F
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mInitRotateHour:F

    const/high16 v5, 0x4140

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    .line 462
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mInitRotateHour:F

    const/high16 v5, 0x4140

    rem-float/2addr v4, v5

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v1, v4, v5

    .line 467
    :goto_0
    const/high16 v4, 0x4140

    cmpl-float v4, v10, v4

    if-ltz v4, :cond_4

    .line 468
    const/high16 v4, 0x4140

    rem-float v4, v10, v4

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v2, v4, v5

    .line 473
    :goto_1
    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    .line 474
    const/high16 v4, 0x43b4

    add-float/2addr v2, v4

    .line 477
    :cond_0
    sub-float v13, v2, v1

    .line 478
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 481
    .local v0, hour_anim:Landroid/view/animation/RotateAnimation;
    const/high16 v4, 0x40c0

    mul-float/2addr v4, v13

    float-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 482
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 483
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mImgHour:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 484
    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->startNow()V

    .line 487
    .end local v0           #hour_anim:Landroid/view/animation/RotateAnimation;
    .end local v1           #fromDegree:F
    .end local v2           #toDegree:F
    .end local v13           #rotateDegree:F
    :cond_1
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mInitRotateMinutes:F

    cmpl-float v4, v4, v11

    if-eqz v4, :cond_2

    .line 490
    const/4 v13, 0x0

    .line 491
    .restart local v13       #rotateDegree:F
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mInitRotateMinutes:F

    cmpl-float v4, v4, v11

    if-lez v4, :cond_5

    .line 492
    new-instance v3, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Landroid/widget/TYAnalogClockView;->mInitRotateMinutes:F

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

    .line 495
    .local v3, minute_anim:Landroid/view/animation/RotateAnimation;
    const/high16 v4, 0x4270

    div-float v4, v11, v4

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    const/high16 v5, 0x43b4

    add-float/2addr v4, v5

    iget v5, p0, Landroid/widget/TYAnalogClockView;->mInitRotateMinutes:F

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    sub-float v13, v4, v5

    .line 502
    :goto_2
    const/high16 v4, 0x40a0

    mul-float/2addr v4, v13

    float-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 503
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 504
    iget-object v4, p0, Landroid/widget/TYAnalogClockView;->mImgMinute:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 507
    .end local v3           #minute_anim:Landroid/view/animation/RotateAnimation;
    .end local v10           #currentHour:F
    .end local v11           #currentMinutes:F
    .end local v12           #currentTime:Landroid/text/format/Time;
    .end local v13           #rotateDegree:F
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/TYAnalogClockView;->mIsDailRefreshNeed:Z

    .line 508
    return-void

    .line 464
    .restart local v1       #fromDegree:F
    .restart local v2       #toDegree:F
    .restart local v10       #currentHour:F
    .restart local v11       #currentMinutes:F
    .restart local v12       #currentTime:Landroid/text/format/Time;
    .restart local v13       #rotateDegree:F
    :cond_3
    iget v4, p0, Landroid/widget/TYAnalogClockView;->mInitRotateHour:F

    const/high16 v5, 0x4140

    div-float/2addr v4, v5

    const/high16 v5, 0x43b4

    mul-float v1, v4, v5

    goto/16 :goto_0

    .line 470
    :cond_4
    const/high16 v4, 0x4140

    div-float v4, v10, v4

    const/high16 v5, 0x43b4

    mul-float v2, v4, v5

    goto/16 :goto_1

    .line 497
    .end local v1           #fromDegree:F
    .end local v2           #toDegree:F
    :cond_5
    new-instance v3, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Landroid/widget/TYAnalogClockView;->mInitRotateMinutes:F

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

    .line 500
    .restart local v3       #minute_anim:Landroid/view/animation/RotateAnimation;
    const/high16 v4, 0x4270

    div-float v4, v11, v4

    const/high16 v5, 0x43b4

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/widget/TYAnalogClockView;->mInitRotateMinutes:F

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    const/high16 v6, 0x43b4

    mul-float/2addr v5, v6

    sub-float v13, v4, v5

    goto :goto_2
.end method

.method public setDailBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 388
    iget-object v1, p0, Landroid/widget/TYAnalogClockView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setDailBitmap: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 390
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iput-object v0, p0, Landroid/widget/TYAnalogClockView;->mDail:Landroid/graphics/drawable/Drawable;

    .line 391
    iget-object v1, p0, Landroid/widget/TYAnalogClockView;->mImgDail:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/TYAnalogClockView;->mDail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    return-void
.end method

.method public setDailRefreshNeed(Z)V
    .locals 3
    .parameter "isNeed"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Landroid/widget/TYAnalogClockView;->TAG:Ljava/lang/String;

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

    .line 429
    iput-boolean p1, p0, Landroid/widget/TYAnalogClockView;->mIsDailRefreshNeed:Z

    .line 430
    invoke-direct {p0, p1}, Landroid/widget/TYAnalogClockView;->playDialImageAnimation(Z)V

    .line 431
    return-void
.end method

.method public setHourBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 396
    iget-object v1, p0, Landroid/widget/TYAnalogClockView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setHourBitmap:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 398
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iput-object v0, p0, Landroid/widget/TYAnalogClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 399
    iget-object v1, p0, Landroid/widget/TYAnalogClockView;->mImgHour:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/TYAnalogClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    return-void
.end method

.method public setHourValue(F)V
    .locals 3
    .parameter "initRotateHour"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Landroid/widget/TYAnalogClockView;->TAG:Ljava/lang/String;

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

    .line 415
    iput p1, p0, Landroid/widget/TYAnalogClockView;->mInitRotateHour:F

    .line 416
    return-void
.end method

.method public setMinuteBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 405
    iget-object v1, p0, Landroid/widget/TYAnalogClockView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setMinuteBitmap: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 407
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iput-object v0, p0, Landroid/widget/TYAnalogClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 408
    iget-object v1, p0, Landroid/widget/TYAnalogClockView;->mImgMinute:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/TYAnalogClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    return-void
.end method

.method public setMinuteValue(F)V
    .locals 3
    .parameter "initRotateMinutes"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Landroid/widget/TYAnalogClockView;->TAG:Ljava/lang/String;

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

    .line 422
    iput p1, p0, Landroid/widget/TYAnalogClockView;->mInitRotateMinutes:F

    .line 423
    return-void
.end method
