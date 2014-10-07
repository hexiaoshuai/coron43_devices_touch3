.class Landroid/widget/TYAnalogClockView$4;
.super Ljava/lang/Object;
.source "TYAnalogClockView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TYAnalogClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TYAnalogClockView;


# direct methods
.method constructor <init>(Landroid/widget/TYAnalogClockView;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Landroid/widget/TYAnalogClockView$4;->this$0:Landroid/widget/TYAnalogClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 10
    .parameter "animation"

    .prologue
    const/high16 v9, 0x43b4

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    const/high16 v6, 0x4140

    .line 345
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 346
    .local v7, decelerate:Landroid/view/animation/DecelerateInterpolator;
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$4;->this$0:Landroid/widget/TYAnalogClockView;

    const/4 v5, 0x0

    #calls: Landroid/widget/TYAnalogClockView;->onTimeChanged(Z)V
    invoke-static {v1, v5}, Landroid/widget/TYAnalogClockView;->access$100(Landroid/widget/TYAnalogClockView;Z)V

    .line 347
    const/4 v2, 0x0

    .line 348
    .local v2, endDegree:F
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$4;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mHour:F
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$300(Landroid/widget/TYAnalogClockView;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_0

    .line 349
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$4;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mHour:F
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$300(Landroid/widget/TYAnalogClockView;)F

    move-result v1

    rem-float/2addr v1, v6

    div-float/2addr v1, v6

    mul-float v2, v1, v9

    .line 353
    :goto_0
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 354
    .local v8, interpolator:Landroid/view/animation/AccelerateInterpolator;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Landroid/widget/TYAnalogClockView$4;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mHourToDegree:F
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$600(Landroid/widget/TYAnalogClockView;)F

    move-result v1

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 356
    .local v0, hour_anim:Landroid/view/animation/RotateAnimation;
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 357
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 358
    invoke-virtual {v0, v8}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 359
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$4;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mImgHour:Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$800(Landroid/widget/TYAnalogClockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 362
    return-void

    .line 351
    .end local v0           #hour_anim:Landroid/view/animation/RotateAnimation;
    .end local v8           #interpolator:Landroid/view/animation/AccelerateInterpolator;
    :cond_0
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$4;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mHour:F
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$300(Landroid/widget/TYAnalogClockView;)F

    move-result v1

    div-float/2addr v1, v6

    mul-float v2, v1, v9

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 368
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 374
    return-void
.end method
