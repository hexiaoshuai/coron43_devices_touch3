.class public Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$BaiduInjector;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduInjector"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1589
    const-class v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$BaiduInjector;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBaiduKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 5
    .parameter "keyguardHostView"

    .prologue
    .line 1628
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mContext-e5950c(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v1

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mContext-e5950c(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->createBaiduLockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)Landroid/view/View;

    move-result-object v0

    .line 1630
    .local v0, baiduKeyguardView:Landroid/view/View;
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$BaiduInjector;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1631
    :cond_0
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mBaiduKeyguardContainer:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mBaiduKeyguardContainer-224b04(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1632
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mBaiduKeyguardContainer:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mBaiduKeyguardContainer-224b04(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1633
    return-void
.end method

.method public static hasDefaultStatusWidget(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 4
    .parameter "keyguardHostView"

    .prologue
    .line 1647
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1648
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 1649
    .local v0, frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getId()I

    move-result v2

    const v3, #id@keyguard_status_view#t

    if-ne v2, v3, :cond_0

    .line 1650
    const/4 v2, 0x1

    .line 1653
    .end local v0           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :goto_1
    return v2

    .line 1647
    .restart local v0       #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1653
    .end local v0           #frame:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static hideMusicWidget()Z
    .locals 1

    .prologue
    .line 1657
    const/4 v0, 0x0

    return v0
.end method

.method public static pauseBaiduKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 3
    .parameter "keyguardHostView"

    .prologue
    .line 1600
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mBaiduKeyguardContainer:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mBaiduKeyguardContainer-224b04(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1607
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mBaiduKeyguardContainer:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mBaiduKeyguardContainer-224b04(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 1604
    .local v0, view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 1605
    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_0
.end method

.method public static processBaiduKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 4
    .parameter "keyguardHostView"

    .prologue
    const/4 v3, -0x1

    new-instance v1, Landroid/widget/FrameLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mContext-e5950c(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mBaiduKeyguardContainer:Landroid/widget/FrameLayout;
    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iput-mBaiduKeyguardContainer-b18b5a(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 1638
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1640
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mBaiduKeyguardContainer:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mBaiduKeyguardContainer-224b04(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1641
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mBaiduKeyguardContainer:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mBaiduKeyguardContainer-224b04(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addView(Landroid/view/View;I)V

    .line 1642
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$BaiduInjector;->addBaiduKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    .line 1643
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v1

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setSystemUiVisibility(I)V

    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$BaiduInjector;->switchBaiduKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    .line 1644
    return-void
.end method

.method private static resumeBaiduKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)V
    .locals 3
    .parameter "keyguardHostView"
    .parameter "reason"

    .prologue
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$BaiduInjector;->switchBaiduKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1625
    :cond_0
    :goto_0
    return-void

    .line 1621
    :cond_1
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mBaiduKeyguardContainer:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mBaiduKeyguardContainer-224b04(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 1622
    .local v0, view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 1623
    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    goto :goto_0
.end method

.method public static resumeBaiduKeyguardScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 1
    .parameter "keyguardHostView"

    .prologue
    .line 1610
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$BaiduInjector;->resumeBaiduKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)V

    .line 1611
    return-void
.end method

.method public static resumeBaiduKeyguardViewRevealed(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 1
    .parameter "keyguardHostView"

    .prologue
    .line 1614
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$BaiduInjector;->resumeBaiduKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)V

    .line 1615
    return-void
.end method

.method public static shouldUseBaiduKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 2
    .parameter "keyguardHostView"

    .prologue
    .line 1592
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mSecurityModel-b360b8(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mSecurityModel-b360b8(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 1594
    :cond_0
    const/4 v0, 0x1

    .line 1596
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static switchBaiduKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 3
    .parameter "keyguardHostView"

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mBaiduKeyguardContainer:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mBaiduKeyguardContainer-224b04(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$BaiduInjector;->shouldUseBaiduKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v1

    if-eqz v1, :cond_2

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mSlidingChallengeLayout-3ce008(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mSlidingChallengeLayout-3ce008(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setVisibility(I)V

    :cond_1
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mBaiduKeyguardContainer:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mBaiduKeyguardContainer-224b04(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mSlidingChallengeLayout-3ce008(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mSlidingChallengeLayout-3ce008(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setVisibility(I)V

    :cond_3
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mBaiduKeyguardContainer:Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$iget-mBaiduKeyguardContainer-224b04(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method
