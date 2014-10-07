.class Landroid/widget/TYStackView$StackFrame;
.super Landroid/widget/FrameLayout;
.source "TYStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TYStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackFrame"
.end annotation


# instance fields
.field sliderAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field transformAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 492
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 493
    return-void
.end method


# virtual methods
.method cancelSliderAnimator()Z
    .locals 2

    .prologue
    .line 515
    iget-object v1, p0, Landroid/widget/TYStackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Landroid/widget/TYStackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 517
    .local v0, oa:Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 519
    const/4 v1, 0x1

    .line 522
    .end local v0           #oa:Landroid/animation/ObjectAnimator;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method cancelTransformAnimator()Z
    .locals 2

    .prologue
    .line 504
    iget-object v1, p0, Landroid/widget/TYStackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Landroid/widget/TYStackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 506
    .local v0, oa:Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 508
    const/4 v1, 0x1

    .line 511
    .end local v0           #oa:Landroid/animation/ObjectAnimator;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setSliderAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 1
    .parameter "oa"

    .prologue
    .line 500
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TYStackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    .line 501
    return-void
.end method

.method setTransformAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 1
    .parameter "oa"

    .prologue
    .line 496
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TYStackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    .line 497
    return-void
.end method
