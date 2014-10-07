.class Landroid/widget/TYAnalogClockView$2;
.super Ljava/lang/Object;
.source "TYAnalogClockView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 254
    iput-object p1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 259
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 13
    .parameter "animation"

    .prologue
    const/high16 v8, 0x4170

    const/high16 v7, 0x43b4

    const/high16 v6, 0x4140

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 264
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    const/4 v2, 0x0

    #calls: Landroid/widget/TYAnalogClockView;->onTimeChanged(Z)V
    invoke-static {v1, v2}, Landroid/widget/TYAnalogClockView;->access$100(Landroid/widget/TYAnalogClockView;Z)V

    .line 265
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    iget-object v2, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mHour:F
    invoke-static {v2}, Landroid/widget/TYAnalogClockView;->access$300(Landroid/widget/TYAnalogClockView;)F

    move-result v2

    #setter for: Landroid/widget/TYAnalogClockView;->mLastHours:F
    invoke-static {v1, v2}, Landroid/widget/TYAnalogClockView;->access$202(Landroid/widget/TYAnalogClockView;F)F

    .line 266
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    iget-object v2, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mMinutes:F
    invoke-static {v2}, Landroid/widget/TYAnalogClockView;->access$500(Landroid/widget/TYAnalogClockView;)F

    move-result v2

    #setter for: Landroid/widget/TYAnalogClockView;->mLastMinutes:F
    invoke-static {v1, v2}, Landroid/widget/TYAnalogClockView;->access$402(Landroid/widget/TYAnalogClockView;F)F

    .line 268
    new-instance v12, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v12}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 270
    .local v12, accelerate:Landroid/view/animation/AccelerateInterpolator;
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mHour:F
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$300(Landroid/widget/TYAnalogClockView;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_0

    .line 271
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    iget-object v2, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mHour:F
    invoke-static {v2}, Landroid/widget/TYAnalogClockView;->access$300(Landroid/widget/TYAnalogClockView;)F

    move-result v2

    rem-float/2addr v2, v6

    div-float/2addr v2, v6

    mul-float/2addr v2, v7

    add-float/2addr v2, v8

    #setter for: Landroid/widget/TYAnalogClockView;->mHourToDegree:F
    invoke-static {v1, v2}, Landroid/widget/TYAnalogClockView;->access$602(Landroid/widget/TYAnalogClockView;F)F

    .line 272
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mHourFromDegree:F
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$700(Landroid/widget/TYAnalogClockView;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mHourToDegree:F
    invoke-static {v2}, Landroid/widget/TYAnalogClockView;->access$600(Landroid/widget/TYAnalogClockView;)F

    move-result v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 279
    .local v0, hour_anim:Landroid/view/animation/RotateAnimation;
    :goto_0
    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 280
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 281
    invoke-virtual {v0, v12}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 282
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    iget-object v1, v1, Landroid/widget/TYAnalogClockView;->mHourAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 283
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mImgHour:Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$800(Landroid/widget/TYAnalogClockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 285
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    iget-object v2, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mMinutes:F
    invoke-static {v2}, Landroid/widget/TYAnalogClockView;->access$500(Landroid/widget/TYAnalogClockView;)F

    move-result v2

    const/high16 v6, 0x4270

    div-float/2addr v2, v6

    mul-float/2addr v2, v7

    add-float/2addr v2, v7

    add-float/2addr v2, v8

    #setter for: Landroid/widget/TYAnalogClockView;->mMinuteToDegree:F
    invoke-static {v1, v2}, Landroid/widget/TYAnalogClockView;->access$902(Landroid/widget/TYAnalogClockView;F)F

    .line 286
    new-instance v5, Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mMinuteFromDegree:F
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$1000(Landroid/widget/TYAnalogClockView;)F

    move-result v6

    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mMinuteToDegree:F
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$900(Landroid/widget/TYAnalogClockView;)F

    move-result v7

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 288
    .local v5, minute_anim:Landroid/view/animation/RotateAnimation;
    const-wide/16 v1, 0x384

    invoke-virtual {v5, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 289
    invoke-virtual {v5, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 291
    invoke-virtual {v5, v12}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 292
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mImgMinute:Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$1100(Landroid/widget/TYAnalogClockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 293
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    iget-object v1, v1, Landroid/widget/TYAnalogClockView;->mMinuteAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v5, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 294
    invoke-virtual {v5}, Landroid/view/animation/RotateAnimation;->startNow()V

    .line 295
    return-void

    .line 275
    .end local v0           #hour_anim:Landroid/view/animation/RotateAnimation;
    .end local v5           #minute_anim:Landroid/view/animation/RotateAnimation;
    :cond_0
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    iget-object v2, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mHour:F
    invoke-static {v2}, Landroid/widget/TYAnalogClockView;->access$300(Landroid/widget/TYAnalogClockView;)F

    move-result v2

    div-float/2addr v2, v6

    mul-float/2addr v2, v7

    add-float/2addr v2, v8

    #setter for: Landroid/widget/TYAnalogClockView;->mHourToDegree:F
    invoke-static {v1, v2}, Landroid/widget/TYAnalogClockView;->access$602(Landroid/widget/TYAnalogClockView;F)F

    .line 276
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TYAnalogClockView$2;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mHourToDegree:F
    invoke-static {v2}, Landroid/widget/TYAnalogClockView;->access$600(Landroid/widget/TYAnalogClockView;)F

    move-result v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .restart local v0       #hour_anim:Landroid/view/animation/RotateAnimation;
    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 301
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 307
    return-void
.end method
