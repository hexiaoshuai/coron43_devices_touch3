.class Landroid/widget/TYAnalogClockView$3;
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
    .line 311
    iput-object p1, p0, Landroid/widget/TYAnalogClockView$3;->this$0:Landroid/widget/TYAnalogClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 8
    .parameter "animation"

    .prologue
    const/high16 v6, 0x43b4

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 316
    const/4 v2, 0x0

    .line 317
    .local v2, endDegree:F
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$3;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mMinutes:F
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$500(Landroid/widget/TYAnalogClockView;)F

    move-result v1

    const/high16 v5, 0x4270

    div-float/2addr v1, v5

    mul-float/2addr v1, v6

    add-float v2, v1, v6

    .line 318
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 319
    .local v7, interpolator:Landroid/view/animation/AccelerateInterpolator;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget-object v1, p0, Landroid/widget/TYAnalogClockView$3;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mMinuteToDegree:F
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$900(Landroid/widget/TYAnalogClockView;)F

    move-result v1

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 321
    .local v0, minute_anim:Landroid/view/animation/RotateAnimation;
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 322
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 323
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 324
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$3;->this$0:Landroid/widget/TYAnalogClockView;

    #getter for: Landroid/widget/TYAnalogClockView;->mImgMinute:Landroid/widget/ImageView;
    invoke-static {v1}, Landroid/widget/TYAnalogClockView;->access$1100(Landroid/widget/TYAnalogClockView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 325
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 331
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 337
    return-void
.end method
