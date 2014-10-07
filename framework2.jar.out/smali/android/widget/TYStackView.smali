.class public Landroid/widget/TYStackView;
.super Landroid/widget/TYAdapterViewAnimator;
.source "TYStackView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TYStackView$HolographicHelper;,
        Landroid/widget/TYStackView$LayoutParams;,
        Landroid/widget/TYStackView$StackSlider;,
        Landroid/widget/TYStackView$StackFrame;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0x190

.field private static final FRAME_PADDING:I = 0x4

.field private static final GESTURE_NONE:I = 0x0

.field private static final GESTURE_SLIDE_DOWN:I = 0x2

.field private static final GESTURE_SLIDE_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final ITEMS_SLIDE_DOWN:I = 0x1

.field private static final ITEMS_SLIDE_UP:I = 0x0

.field private static final MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static final MIN_TIME_BETWEEN_SCROLLS:J = 0x64L

.field private static final NUM_ACTIVE_VIEWS:I = 0x4

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.0f

.field private static final PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field private static final PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.1f

.field private static final SLIDE_UP_RATIO:F = 0.7f

.field private static final STACK_RELAYOUT_DURATION:I = 0x64

.field private static final SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static sHolographicHelper:Landroid/widget/TYStackView$HolographicHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mClickColor:I

.field private mClickFeedback:Landroid/widget/ImageView;

.field private mClickFeedbackIsValid:Z

.field private mFirstLayoutHappened:Z

.field private mFramePadding:I

.field private mHighlight:Landroid/widget/ImageView;

.field private mInitialX:F

.field private mInitialY:F

.field private mLastInteractionTime:J

.field private mLastScrollTime:J

.field private mMaximumVelocity:I

.field private mNewPerspectiveShiftX:F

.field private mNewPerspectiveShiftY:F

.field private mPerspectiveShiftX:F

.field private mPerspectiveShiftY:F

.field private mResOutColor:I

.field private mSlideAmount:I

.field private mStackMode:I

.field private mStackSlider:Landroid/widget/TYStackView$StackSlider;

.field private mSwipeGestureType:I

.field private mSwipeThreshold:I

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTransitionIsSetup:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYVelocity:I

.field private final stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TYStackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 155
    const v0, 0x10103eb

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TYStackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TYAdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const-string v1, "StackView"

    iput-object v1, p0, Landroid/widget/TYStackView;->TAG:Ljava/lang/String;

    .line 108
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/TYStackView;->mTouchRect:Landroid/graphics/Rect;

    .line 121
    iput v3, p0, Landroid/widget/TYStackView;->mYVelocity:I

    .line 122
    iput v3, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    .line 128
    iput-boolean v3, p0, Landroid/widget/TYStackView;->mTransitionIsSetup:Z

    .line 135
    iput-boolean v3, p0, Landroid/widget/TYStackView;->mClickFeedbackIsValid:Z

    .line 137
    iput-boolean v3, p0, Landroid/widget/TYStackView;->mFirstLayoutHappened:Z

    .line 138
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/TYStackView;->mLastInteractionTime:J

    .line 142
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/TYStackView;->stackInvalidateRect:Landroid/graphics/Rect;

    .line 163
    sget-object v1, Lcom/android/internal/R$styleable;->StackView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 166
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/TYStackView;->mResOutColor:I

    .line 168
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/TYStackView;->mClickColor:I

    .line 171
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    invoke-direct {p0}, Landroid/widget/TYStackView;->initStackView()V

    .line 173
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TYStackView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/TYStackView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/TYStackView;->mStackMode:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/TYStackView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/TYStackView;->mSlideAmount:I

    return v0
.end method

.method private beginGestureIfNeeded(F)V
    .locals 12
    .parameter "deltaY"

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 666
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v10, v10

    iget v11, p0, Landroid/widget/TYStackView;->mTouchSlop:I

    if-le v10, v11, :cond_0

    iget v10, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    if-nez v10, :cond_0

    .line 667
    const/4 v10, 0x0

    cmpg-float v10, p1, v10

    if-gez v10, :cond_1

    move v5, v7

    .line 668
    .local v5, swipeGestureType:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TYStackView;->cancelLongPress()V

    .line 669
    invoke-virtual {p0, v7}, Landroid/widget/TYStackView;->requestDisallowInterceptTouchEvent(Z)V

    .line 671
    iget-object v10, p0, Landroid/widget/TYStackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v10, :cond_2

    .line 711
    .end local v5           #swipeGestureType:I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v5, v8

    .line 667
    goto :goto_0

    .line 672
    .restart local v5       #swipeGestureType:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getCount()I

    move-result v1

    .line 675
    .local v1, adapterCount:I
    iget v10, p0, Landroid/widget/TYStackView;->mStackMode:I

    if-nez v10, :cond_8

    .line 676
    if-ne v5, v8, :cond_7

    move v0, v9

    .line 681
    .local v0, activeIndex:I
    :goto_2
    iget-boolean v10, p0, Landroid/widget/TYStackView;->mLoopViews:Z

    if-eqz v10, :cond_a

    if-ne v1, v7, :cond_a

    iget v10, p0, Landroid/widget/TYStackView;->mStackMode:I

    if-nez v10, :cond_3

    if-eq v5, v7, :cond_4

    :cond_3
    iget v10, p0, Landroid/widget/TYStackView;->mStackMode:I

    if-ne v10, v7, :cond_a

    if-ne v5, v8, :cond_a

    :cond_4
    move v3, v7

    .line 684
    .local v3, endOfStack:Z
    :goto_3
    iget-boolean v10, p0, Landroid/widget/TYStackView;->mLoopViews:Z

    if-eqz v10, :cond_b

    if-ne v1, v7, :cond_b

    iget v10, p0, Landroid/widget/TYStackView;->mStackMode:I

    if-ne v10, v7, :cond_5

    if-eq v5, v7, :cond_6

    :cond_5
    iget v10, p0, Landroid/widget/TYStackView;->mStackMode:I

    if-nez v10, :cond_b

    if-ne v5, v8, :cond_b

    :cond_6
    move v2, v7

    .line 689
    .local v2, beginningOfStack:Z
    :goto_4
    iget-boolean v8, p0, Landroid/widget/TYStackView;->mLoopViews:Z

    if-eqz v8, :cond_c

    if-nez v2, :cond_c

    if-nez v3, :cond_c

    .line 690
    const/4 v4, 0x0

    .line 700
    .local v4, stackMode:I
    :goto_5
    if-nez v4, :cond_11

    :goto_6
    iput-boolean v7, p0, Landroid/widget/TYStackView;->mTransitionIsSetup:Z

    .line 702
    invoke-virtual {p0, v0}, Landroid/widget/TYStackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 703
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 705
    invoke-direct {p0, v6, v4}, Landroid/widget/TYStackView;->setupStackSlider(Landroid/view/View;I)V

    .line 708
    iput v5, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    .line 709
    invoke-virtual {p0}, Landroid/widget/TYStackView;->cancelHandleClick()V

    goto :goto_1

    .end local v0           #activeIndex:I
    .end local v2           #beginningOfStack:Z
    .end local v3           #endOfStack:Z
    .end local v4           #stackMode:I
    .end local v6           #v:Landroid/view/View;
    :cond_7
    move v0, v7

    .line 676
    goto :goto_2

    .line 678
    :cond_8
    if-ne v5, v8, :cond_9

    move v0, v7

    .restart local v0       #activeIndex:I
    :goto_7
    goto :goto_2

    .end local v0           #activeIndex:I
    :cond_9
    move v0, v9

    goto :goto_7

    .restart local v0       #activeIndex:I
    :cond_a
    move v3, v9

    .line 681
    goto :goto_3

    .restart local v3       #endOfStack:Z
    :cond_b
    move v2, v9

    .line 684
    goto :goto_4

    .line 691
    .restart local v2       #beginningOfStack:Z
    :cond_c
    iget v8, p0, Landroid/widget/TYStackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v8, v0

    const/4 v10, -0x1

    if-eq v8, v10, :cond_d

    if-eqz v2, :cond_e

    .line 692
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 693
    const/4 v4, 0x1

    .restart local v4       #stackMode:I
    goto :goto_5

    .line 694
    .end local v4           #stackMode:I
    :cond_e
    iget v8, p0, Landroid/widget/TYStackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v8, v0

    add-int/lit8 v10, v1, -0x1

    if-eq v8, v10, :cond_f

    if-eqz v3, :cond_10

    .line 695
    :cond_f
    const/4 v4, 0x2

    .restart local v4       #stackMode:I
    goto :goto_5

    .line 697
    .end local v4           #stackMode:I
    :cond_10
    const/4 v4, 0x0

    .restart local v4       #stackMode:I
    goto :goto_5

    :cond_11
    move v7, v9

    .line 700
    goto :goto_6
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .locals 13
    .parameter "ev"

    .prologue
    .line 819
    iget v9, p0, Landroid/widget/TYStackView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 820
    .local v6, pointerIndex:I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 821
    .local v4, newY:F
    iget v9, p0, Landroid/widget/TYStackView;->mInitialY:F

    sub-float v9, v4, v9

    float-to-int v1, v9

    .line 822
    .local v1, deltaY:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/widget/TYStackView;->mLastInteractionTime:J

    .line 824
    iget-object v9, p0, Landroid/widget/TYStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 825
    iget-object v9, p0, Landroid/widget/TYStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    iget v11, p0, Landroid/widget/TYStackView;->mMaximumVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 826
    iget-object v9, p0, Landroid/widget/TYStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, p0, Landroid/widget/TYStackView;->mActivePointerId:I

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/TYStackView;->mYVelocity:I

    .line 829
    :cond_0
    iget-object v9, p0, Landroid/widget/TYStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 830
    iget-object v9, p0, Landroid/widget/TYStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 831
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/TYStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 834
    :cond_1
    iget v9, p0, Landroid/widget/TYStackView;->mSwipeThreshold:I

    if-le v1, v9, :cond_4

    iget v9, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    iget v9, v9, Landroid/widget/TYStackView$StackSlider;->mMode:I

    if-nez v9, :cond_4

    .line 838
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    .line 841
    iget v9, p0, Landroid/widget/TYStackView;->mStackMode:I

    if-nez v9, :cond_3

    .line 842
    invoke-virtual {p0}, Landroid/widget/TYStackView;->showPrevious()V

    .line 846
    :goto_0
    iget-object v9, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    .line 899
    :cond_2
    :goto_1
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/TYStackView;->mActivePointerId:I

    .line 900
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    .line 901
    return-void

    .line 844
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TYStackView;->showNext()V

    goto :goto_0

    .line 847
    :cond_4
    iget v9, p0, Landroid/widget/TYStackView;->mSwipeThreshold:I

    neg-int v9, v9

    if-ge v1, v9, :cond_6

    iget v9, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    iget v9, v9, Landroid/widget/TYStackView$StackSlider;->mMode:I

    if-nez v9, :cond_6

    .line 851
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    .line 854
    iget v9, p0, Landroid/widget/TYStackView;->mStackMode:I

    if-nez v9, :cond_5

    .line 855
    invoke-virtual {p0}, Landroid/widget/TYStackView;->showNext()V

    .line 860
    :goto_2
    iget-object v9, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    goto :goto_1

    .line 857
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TYStackView;->showPrevious()V

    goto :goto_2

    .line 861
    :cond_6
    iget v9, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 864
    iget v9, p0, Landroid/widget/TYStackView;->mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    const/high16 v3, 0x3f80

    .line 865
    .local v3, finalYProgress:F
    :goto_3
    iget v9, p0, Landroid/widget/TYStackView;->mStackMode:I

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    iget v9, v9, Landroid/widget/TYStackView$StackSlider;->mMode:I

    if-eqz v9, :cond_9

    .line 866
    :cond_7
    iget-object v9, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/TYStackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 871
    .local v2, duration:I
    :goto_4
    new-instance v0, Landroid/widget/TYStackView$StackSlider;

    iget-object v9, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    invoke-direct {v0, p0, v9}, Landroid/widget/TYStackView$StackSlider;-><init>(Landroid/widget/TYStackView;Landroid/widget/TYStackView$StackSlider;)V

    .line 872
    .local v0, animationSlider:Landroid/widget/TYStackView$StackSlider;
    const-string v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 873
    .local v8, snapBackY:Landroid/animation/PropertyValuesHolder;
    const-string v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 874
    .local v7, snapBackX:Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 876
    .local v5, pa:Landroid/animation/ObjectAnimator;
    int-to-long v9, v2

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 877
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 878
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 864
    .end local v0           #animationSlider:Landroid/widget/TYStackView$StackSlider;
    .end local v2           #duration:I
    .end local v3           #finalYProgress:F
    .end local v5           #pa:Landroid/animation/ObjectAnimator;
    .end local v7           #snapBackX:Landroid/animation/PropertyValuesHolder;
    .end local v8           #snapBackY:Landroid/animation/PropertyValuesHolder;
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 868
    .restart local v3       #finalYProgress:F
    :cond_9
    iget-object v9, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/TYStackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2       #duration:I
    goto :goto_4

    .line 879
    .end local v2           #duration:I
    .end local v3           #finalYProgress:F
    :cond_a
    iget v9, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 881
    iget v9, p0, Landroid/widget/TYStackView;->mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    const/4 v3, 0x0

    .line 883
    .restart local v3       #finalYProgress:F
    :goto_5
    iget v9, p0, Landroid/widget/TYStackView;->mStackMode:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget-object v9, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    iget v9, v9, Landroid/widget/TYStackView$StackSlider;->mMode:I

    if-eqz v9, :cond_d

    .line 884
    :cond_b
    iget-object v9, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/TYStackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 889
    .restart local v2       #duration:I
    :goto_6
    new-instance v0, Landroid/widget/TYStackView$StackSlider;

    iget-object v9, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    invoke-direct {v0, p0, v9}, Landroid/widget/TYStackView$StackSlider;-><init>(Landroid/widget/TYStackView;Landroid/widget/TYStackView$StackSlider;)V

    .line 890
    .restart local v0       #animationSlider:Landroid/widget/TYStackView$StackSlider;
    const-string v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 892
    .restart local v8       #snapBackY:Landroid/animation/PropertyValuesHolder;
    const-string v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 893
    .restart local v7       #snapBackX:Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 895
    .restart local v5       #pa:Landroid/animation/ObjectAnimator;
    int-to-long v9, v2

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 896
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 881
    .end local v0           #animationSlider:Landroid/widget/TYStackView$StackSlider;
    .end local v2           #duration:I
    .end local v3           #finalYProgress:F
    .end local v5           #pa:Landroid/animation/ObjectAnimator;
    .end local v7           #snapBackX:Landroid/animation/PropertyValuesHolder;
    .end local v8           #snapBackY:Landroid/animation/PropertyValuesHolder;
    :cond_c
    const/high16 v3, 0x3f80

    goto :goto_5

    .line 886
    .restart local v3       #finalYProgress:F
    :cond_d
    iget-object v9, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/TYStackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2       #duration:I
    goto :goto_6
.end method

.method private initStackView()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 176
    invoke-virtual {p0, v8, v6}, Landroid/widget/TYStackView;->configureViewAnimator(II)V

    .line 177
    invoke-virtual {p0, v6}, Landroid/widget/TYStackView;->setStaticTransformationsEnabled(Z)V

    .line 178
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 179
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/TYStackView;->mTouchSlop:I

    .line 180
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/TYStackView;->mMaximumVelocity:I

    .line 181
    iput v5, p0, Landroid/widget/TYStackView;->mActivePointerId:I

    .line 183
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/TYStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    .line 184
    iget-object v2, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/TYStackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/TYStackView$LayoutParams;-><init>(Landroid/widget/TYStackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v2, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/TYStackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/TYStackView$LayoutParams;-><init>(Landroid/widget/TYStackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/TYStackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 187
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/TYStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/TYStackView;->mClickFeedback:Landroid/widget/ImageView;

    .line 188
    iget-object v2, p0, Landroid/widget/TYStackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/TYStackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/TYStackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/TYStackView$LayoutParams;-><init>(Landroid/widget/TYStackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v2, p0, Landroid/widget/TYStackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/TYStackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/TYStackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/TYStackView$LayoutParams;-><init>(Landroid/widget/TYStackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/TYStackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 190
    iget-object v2, p0, Landroid/widget/TYStackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    new-instance v2, Landroid/widget/TYStackView$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/TYStackView$StackSlider;-><init>(Landroid/widget/TYStackView;)V

    iput-object v2, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    .line 194
    sget-object v2, Landroid/widget/TYStackView;->sHolographicHelper:Landroid/widget/TYStackView$HolographicHelper;

    if-nez v2, :cond_0

    .line 195
    new-instance v2, Landroid/widget/TYStackView$HolographicHelper;

    iget-object v3, p0, Landroid/widget/TYStackView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TYStackView$HolographicHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/widget/TYStackView;->sHolographicHelper:Landroid/widget/TYStackView$HolographicHelper;

    .line 197
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/TYStackView;->setClipChildren(Z)V

    .line 198
    invoke-virtual {p0, v7}, Landroid/widget/TYStackView;->setClipToPadding(Z)V

    .line 203
    iput v6, p0, Landroid/widget/TYStackView;->mStackMode:I

    .line 206
    iput v5, p0, Landroid/widget/TYStackView;->mWhichChild:I

    .line 210
    iget-object v2, p0, Landroid/widget/TYStackView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 211
    .local v1, density:F
    const/high16 v2, 0x4080

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/TYStackView;->mFramePadding:I

    .line 212
    return-void
.end method

.method private measureChildren()V
    .locals 13

    .prologue
    .line 1143
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getChildCount()I

    move-result v5

    .line 1145
    .local v5, count:I
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getMeasuredWidth()I

    move-result v10

    .line 1146
    .local v10, measuredWidth:I
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getMeasuredHeight()I

    move-result v9

    .line 1148
    .local v9, measuredHeight:I
    int-to-float v11, v10

    const v12, 0x3f666666

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, Landroid/widget/TYStackView;->mPaddingLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/TYStackView;->mPaddingRight:I

    sub-int v4, v11, v12

    .line 1150
    .local v4, childWidth:I
    int-to-float v11, v9

    const v12, 0x3f666666

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, Landroid/widget/TYStackView;->mPaddingTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/TYStackView;->mPaddingBottom:I

    sub-int v1, v11, v12

    .line 1153
    .local v1, childHeight:I
    const/4 v8, 0x0

    .line 1154
    .local v8, maxWidth:I
    const/4 v7, 0x0

    .line 1156
    .local v7, maxHeight:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 1157
    invoke-virtual {p0, v6}, Landroid/widget/TYStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1158
    .local v0, child:Landroid/view/View;
    const/high16 v11, -0x8000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, -0x8000

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1161
    iget-object v11, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_1

    iget-object v11, p0, Landroid/widget/TYStackView;->mClickFeedback:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_1

    .line 1162
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1163
    .local v3, childMeasuredWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1164
    .local v2, childMeasuredHeight:I
    if-le v3, v8, :cond_0

    .line 1165
    move v8, v3

    .line 1167
    :cond_0
    if-le v2, v7, :cond_1

    .line 1168
    move v7, v2

    .line 1156
    .end local v2           #childMeasuredHeight:I
    .end local v3           #childMeasuredWidth:I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1173
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const v11, 0x3dcccccd

    int-to-float v12, v10

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/TYStackView;->mNewPerspectiveShiftX:F

    .line 1174
    const v11, 0x3dcccccd

    int-to-float v12, v9

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/TYStackView;->mNewPerspectiveShiftY:F

    .line 1177
    if-lez v8, :cond_3

    if-lez v5, :cond_3

    if-ge v8, v4, :cond_3

    .line 1178
    sub-int v11, v10, v8

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/TYStackView;->mNewPerspectiveShiftX:F

    .line 1181
    :cond_3
    if-lez v7, :cond_4

    if-lez v5, :cond_4

    if-ge v7, v1, :cond_4

    .line 1182
    sub-int v11, v9, v7

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/TYStackView;->mNewPerspectiveShiftY:F

    .line 1184
    :cond_4
    return-void
.end method

.method private onLayout()V
    .locals 3

    .prologue
    .line 571
    iget-boolean v1, p0, Landroid/widget/TYStackView;->mFirstLayoutHappened:Z

    if-nez v1, :cond_0

    .line 572
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TYStackView;->mFirstLayoutHappened:Z

    .line 573
    invoke-direct {p0}, Landroid/widget/TYStackView;->updateChildTransforms()V

    .line 576
    :cond_0
    const v1, 0x3f333333

    invoke-virtual {p0}, Landroid/widget/TYStackView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 577
    .local v0, newSlideAmount:I
    iget v1, p0, Landroid/widget/TYStackView;->mSlideAmount:I

    if-eq v1, v0, :cond_1

    .line 578
    iput v0, p0, Landroid/widget/TYStackView;->mSlideAmount:I

    .line 579
    const v1, 0x3e4ccccd

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/TYStackView;->mSwipeThreshold:I

    .line 582
    :cond_1
    iget v1, p0, Landroid/widget/TYStackView;->mPerspectiveShiftY:F

    iget v2, p0, Landroid/widget/TYStackView;->mNewPerspectiveShiftY:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroid/widget/TYStackView;->mPerspectiveShiftX:F

    iget v2, p0, Landroid/widget/TYStackView;->mNewPerspectiveShiftX:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    .line 585
    :cond_2
    iget v1, p0, Landroid/widget/TYStackView;->mNewPerspectiveShiftY:F

    iput v1, p0, Landroid/widget/TYStackView;->mPerspectiveShiftY:F

    .line 586
    iget v1, p0, Landroid/widget/TYStackView;->mNewPerspectiveShiftX:F

    iput v1, p0, Landroid/widget/TYStackView;->mPerspectiveShiftX:F

    .line 587
    invoke-direct {p0}, Landroid/widget/TYStackView;->updateChildTransforms()V

    .line 589
    :cond_3
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "ev"

    .prologue
    .line 775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 776
    .local v0, activePointerIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 777
    .local v5, pointerId:I
    iget v9, p0, Landroid/widget/TYStackView;->mActivePointerId:I

    if-ne v5, v9, :cond_0

    .line 779
    iget v9, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v1, 0x0

    .line 781
    .local v1, activeViewIndex:I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TYStackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 782
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_2

    .line 816
    .end local v1           #activeViewIndex:I
    .end local v6           #v:Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 779
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 788
    .restart local v1       #activeViewIndex:I
    .restart local v6       #v:Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    .local v2, index:I
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 789
    if-eq v2, v0, :cond_3

    .line 791
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 792
    .local v7, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 794
    .local v8, y:F
    iget-object v9, p0, Landroid/widget/TYStackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 795
    iget-object v9, p0, Landroid/widget/TYStackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 796
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 797
    .local v3, oldX:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 800
    .local v4, oldY:F
    iget v9, p0, Landroid/widget/TYStackView;->mInitialY:F

    sub-float v10, v8, v4

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/TYStackView;->mInitialY:F

    .line 801
    iget v9, p0, Landroid/widget/TYStackView;->mInitialX:F

    sub-float v10, v7, v3

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/TYStackView;->mInitialX:F

    .line 803
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/TYStackView;->mActivePointerId:I

    .line 804
    iget-object v9, p0, Landroid/widget/TYStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 805
    iget-object v9, p0, Landroid/widget/TYStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 788
    .end local v3           #oldX:F
    .end local v4           #oldY:F
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 814
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/TYStackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method private pacedScroll(Z)V
    .locals 6
    .parameter "up"

    .prologue
    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/TYStackView;->mLastScrollTime:J

    sub-long v0, v2, v4

    .line 613
    .local v0, timeSinceLastScroll:J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 614
    if-eqz p1, :cond_1

    .line 615
    invoke-virtual {p0}, Landroid/widget/TYStackView;->showPrevious()V

    .line 619
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/TYStackView;->mLastScrollTime:J

    .line 621
    :cond_0
    return-void

    .line 617
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TYStackView;->showNext()V

    goto :goto_0
.end method

.method private setupStackSlider(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "mode"

    .prologue
    .line 362
    iget-object v0, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/TYStackView$StackSlider;->setMode(I)V

    .line 363
    if-eqz p1, :cond_0

    .line 367
    iget-object v0, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 368
    iget-object v0, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 369
    iget-object v0, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 370
    iget-object v0, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 389
    iget-object v0, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    invoke-virtual {v0, p1}, Landroid/widget/TYStackView$StackSlider;->setView(Landroid/view/View;)V

    .line 391
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 393
    :cond_0
    return-void
.end method

.method private transformViewAtIndex(ILandroid/view/View;Z)V
    .locals 20
    .parameter "index"
    .parameter "view"
    .parameter "animate"

    .prologue
    .line 305
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TYStackView;->mPerspectiveShiftY:F

    .line 306
    .local v3, maxPerspectiveShiftY:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TYStackView;->mPerspectiveShiftX:F

    .line 308
    .local v2, maxPerspectiveShiftX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TYStackView;->mStackMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TYStackView;->mMaxNumActiveViews:I

    move/from16 v17, v0

    sub-int v17, v17, p1

    add-int/lit8 p1, v17, -0x1

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TYStackView;->mMaxNumActiveViews:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 316
    :cond_0
    :goto_0
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f80

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TYStackView;->mMaxNumActiveViews:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v7, v17, v18

    .line 318
    .local v7, r:F
    const/high16 v17, 0x3f80

    const/16 v18, 0x0

    const/high16 v19, 0x3f80

    sub-float v19, v19, v7

    mul-float v18, v18, v19

    sub-float v8, v17, v18

    .line 320
    .local v8, scale:F
    mul-float v6, v7, v3

    .line 321
    .local v6, perspectiveTranslationY:F
    const/high16 v17, 0x3f80

    sub-float v17, v8, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TYStackView;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f666666

    mul-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    mul-float v12, v17, v18

    .line 326
    .local v12, scaleShiftCorrectionY:F
    const/high16 v17, 0x3f80

    sub-float v17, v17, v7

    mul-float v5, v17, v2

    .line 327
    .local v5, perspectiveTranslationX:F
    const/high16 v17, 0x3f80

    sub-float v17, v17, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TYStackView;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f666666

    mul-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    mul-float v11, v17, v18

    .line 331
    .local v11, scaleShiftCorrectionX:F
    const/4 v14, 0x0

    .line 332
    .local v14, transY:F
    const/4 v13, 0x0

    .line 336
    .local v13, transX:F
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/TYStackView$StackFrame;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v17, p2

    .line 337
    check-cast v17, Landroid/widget/TYStackView$StackFrame;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TYStackView$StackFrame;->cancelTransformAnimator()Z

    .line 340
    :cond_1
    if-eqz p3, :cond_4

    .line 341
    const-string/jumbo v17, "translationX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v13, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 342
    .local v15, translationX:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v17, "translationY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v14, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 343
    .local v16, translationY:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v17, "scaleX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v8, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 344
    .local v9, scalePropX:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v17, "scaleY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v8, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 346
    .local v10, scalePropY:Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v9, v17, v18

    const/16 v18, 0x1

    aput-object v10, v17, v18

    const/16 v18, 0x2

    aput-object v16, v17, v18

    const/16 v18, 0x3

    aput-object v15, v17, v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 348
    .local v4, oa:Landroid/animation/ObjectAnimator;
    const-wide/16 v17, 0x64

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 349
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/TYStackView$StackFrame;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 350
    check-cast p2, Landroid/widget/TYStackView$StackFrame;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/widget/TYStackView$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    .line 352
    :cond_2
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 359
    .end local v4           #oa:Landroid/animation/ObjectAnimator;
    .end local v9           #scalePropX:Landroid/animation/PropertyValuesHolder;
    .end local v10           #scalePropY:Landroid/animation/PropertyValuesHolder;
    .end local v15           #translationX:Landroid/animation/PropertyValuesHolder;
    .end local v16           #translationY:Landroid/animation/PropertyValuesHolder;
    :goto_1
    return-void

    .line 312
    .end local v5           #perspectiveTranslationX:F
    .end local v6           #perspectiveTranslationY:F
    .end local v7           #r:F
    .end local v8           #scale:F
    .end local v11           #scaleShiftCorrectionX:F
    .end local v12           #scaleShiftCorrectionY:F
    .end local v13           #transX:F
    .end local v14           #transY:F
    .restart local p2
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 313
    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 354
    .restart local v5       #perspectiveTranslationX:F
    .restart local v6       #perspectiveTranslationY:F
    .restart local v7       #r:F
    .restart local v8       #scale:F
    .restart local v11       #scaleShiftCorrectionX:F
    .restart local v12       #scaleShiftCorrectionY:F
    .restart local v13       #transX:F
    .restart local v14       #transY:F
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 355
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 356
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 357
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1
.end method

.method private updateChildTransforms()V
    .locals 3

    .prologue
    .line 479
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getNumActiveViews()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 480
    invoke-virtual {p0, v0}, Landroid/widget/TYStackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 481
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 482
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TYStackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 479
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 7

    .prologue
    .line 1130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/TYStackView;->mLastInteractionTime:J

    sub-long v1, v3, v5

    .line 1132
    .local v1, timeSinceLastInteraction:J
    iget-object v3, p0, Landroid/widget/TYStackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v3, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getCount()I

    move-result v0

    .line 1134
    .local v0, adapterCount:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/TYStackView;->mLoopViews:Z

    if-nez v3, :cond_0

    .line 1136
    :cond_2
    iget v3, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    if-nez v3, :cond_0

    const-wide/16 v3, 0x1388

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 1138
    invoke-virtual {p0}, Landroid/widget/TYStackView;->showNext()V

    goto :goto_0
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .parameter "child"
    .parameter "relativeIndex"

    .prologue
    .line 537
    return-void
.end method

.method bridge synthetic createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/TYStackView;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/TYStackView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/TYStackView$LayoutParams;
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 1097
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1098
    .local v0, currentLp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/TYStackView$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1099
    check-cast v1, Landroid/widget/TYStackView$LayoutParams;

    .line 1100
    .local v1, lp:Landroid/widget/TYStackView$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/TYStackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1101
    invoke-virtual {v1, v3}, Landroid/widget/TYStackView$LayoutParams;->setVerticalOffset(I)V

    .line 1102
    iput v3, v1, Landroid/widget/TYStackView$LayoutParams;->width:I

    .line 1103
    iput v3, v1, Landroid/widget/TYStackView$LayoutParams;->width:I

    .line 1106
    .end local v1           #lp:Landroid/widget/TYStackView$LayoutParams;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/widget/TYStackView$LayoutParams;

    invoke-direct {v1, p0, p1}, Landroid/widget/TYStackView$LayoutParams;-><init>(Landroid/widget/TYStackView;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 541
    const/4 v3, 0x0

    .line 543
    .local v3, expandClipRegion:Z
    iget-object v6, p0, Landroid/widget/TYStackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 544
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getChildCount()I

    move-result v1

    .line 545
    .local v1, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 546
    invoke-virtual {p0, v4}, Landroid/widget/TYStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 547
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/TYStackView$LayoutParams;

    .line 548
    .local v5, lp:Landroid/widget/TYStackView$LayoutParams;
    iget v6, v5, Landroid/widget/TYStackView$LayoutParams;->horizontalOffset:I

    if-nez v6, :cond_0

    iget v6, v5, Landroid/widget/TYStackView$LayoutParams;->verticalOffset:I

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 550
    :cond_1
    invoke-virtual {v5}, Landroid/widget/TYStackView$LayoutParams;->resetInvalidateRect()V

    .line 552
    :cond_2
    invoke-virtual {v5}, Landroid/widget/TYStackView$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 553
    .local v2, childInvalidateRect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 554
    const/4 v3, 0x1

    .line 555
    iget-object v6, p0, Landroid/widget/TYStackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 545
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 560
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childInvalidateRect:Landroid/graphics/Rect;
    .end local v5           #lp:Landroid/widget/TYStackView$LayoutParams;
    :cond_4
    if-eqz v3, :cond_5

    .line 561
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 562
    iget-object v6, p0, Landroid/widget/TYStackView;->stackInvalidateRect:Landroid/graphics/Rect;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 563
    invoke-super {p0, p1}, Landroid/widget/TYAdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 564
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 568
    :goto_1
    return-void

    .line 566
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/TYAdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 5

    .prologue
    .line 528
    new-instance v0, Landroid/widget/TYStackView$StackFrame;

    iget-object v1, p0, Landroid/widget/TYStackView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TYStackView$StackFrame;-><init>(Landroid/content/Context;)V

    .line 529
    .local v0, fl:Landroid/widget/TYStackView$StackFrame;
    iget v1, p0, Landroid/widget/TYStackView;->mFramePadding:I

    iget v2, p0, Landroid/widget/TYStackView;->mFramePadding:I

    iget v3, p0, Landroid/widget/TYStackView;->mFramePadding:I

    iget v4, p0, Landroid/widget/TYStackView;->mFramePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TYStackView$StackFrame;->setPadding(IIII)V

    .line 530
    return-object v0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 474
    iget-object v0, p0, Landroid/widget/TYStackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    invoke-virtual {p0}, Landroid/widget/TYStackView;->invalidate()V

    .line 476
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 607
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TYAdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 596
    :pswitch_0
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 597
    .local v0, vscroll:F
    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    .line 598
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/TYStackView;->pacedScroll(Z)V

    goto :goto_0

    .line 600
    :cond_1
    cmpl-float v2, v0, v3

    if-lez v2, :cond_0

    .line 601
    invoke-direct {p0, v1}, Landroid/widget/TYStackView;->pacedScroll(Z)V

    goto :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1240
    invoke-super {p0, p1}, Landroid/widget/TYAdapterViewAnimator;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1241
    const-class v0, Landroid/widget/StackView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1242
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 1246
    invoke-super {p0, p1}, Landroid/widget/TYAdapterViewAnimator;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1247
    const-class v1, Landroid/widget/StackView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1248
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1249
    invoke-virtual {p0}, Landroid/widget/TYStackView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1250
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TYStackView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1251
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1253
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_1

    .line 1254
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1257
    :cond_1
    return-void

    .line 1248
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 629
    .local v0, action:I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 662
    :cond_0
    :goto_0
    :pswitch_0
    iget v5, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_1
    return v4

    .line 631
    :pswitch_1
    iget v5, p0, Landroid/widget/TYStackView;->mActivePointerId:I

    if-ne v5, v6, :cond_0

    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Landroid/widget/TYStackView;->mInitialX:F

    .line 633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/widget/TYStackView;->mInitialY:F

    .line 634
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/TYStackView;->mActivePointerId:I

    goto :goto_0

    .line 639
    :pswitch_2
    iget v5, p0, Landroid/widget/TYStackView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 640
    .local v3, pointerIndex:I
    if-ne v3, v6, :cond_2

    .line 642
    const-string v5, "StackView"

    const-string v6, "Error: No data for our primary pointer."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 645
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 646
    .local v2, newY:F
    iget v5, p0, Landroid/widget/TYStackView;->mInitialY:F

    sub-float v1, v2, v5

    .line 648
    .local v1, deltaY:F
    invoke-direct {p0, v1}, Landroid/widget/TYStackView;->beginGestureIfNeeded(F)V

    goto :goto_0

    .line 652
    .end local v1           #deltaY:F
    .end local v2           #newY:F
    .end local v3           #pointerIndex:I
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/TYStackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 657
    :pswitch_4
    iput v6, p0, Landroid/widget/TYStackView;->mActivePointerId:I

    .line 658
    iput v4, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    goto :goto_0

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1111
    invoke-virtual {p0}, Landroid/widget/TYStackView;->checkForAndHandleDataChanged()V

    .line 1113
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getChildCount()I

    move-result v2

    .line 1114
    .local v2, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1115
    invoke-virtual {p0, v4}, Landroid/widget/TYStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1117
    .local v0, child:Landroid/view/View;
    iget v6, p0, Landroid/widget/TYStackView;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v6, v7

    .line 1118
    .local v3, childRight:I
    iget v6, p0, Landroid/widget/TYStackView;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v1, v6, v7

    .line 1119
    .local v1, childBottom:I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/TYStackView$LayoutParams;

    .line 1121
    .local v5, lp:Landroid/widget/TYStackView$LayoutParams;
    iget v6, p0, Landroid/widget/TYStackView;->mPaddingLeft:I

    iget v7, v5, Landroid/widget/TYStackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/TYStackView;->mPaddingTop:I

    iget v8, v5, Landroid/widget/TYStackView$LayoutParams;->verticalOffset:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/TYStackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v8, v3

    iget v9, v5, Landroid/widget/TYStackView$LayoutParams;->verticalOffset:I

    add-int/2addr v9, v1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1114
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1125
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childBottom:I
    .end local v3           #childRight:I
    .end local v5           #lp:Landroid/widget/TYStackView$LayoutParams;
    :cond_0
    invoke-direct {p0}, Landroid/widget/TYStackView;->onLayout()V

    .line 1126
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1188
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1189
    .local v8, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1190
    .local v5, heightSpecSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1191
    .local v7, widthSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1193
    .local v4, heightSpecMode:I
    iget v9, p0, Landroid/widget/TYStackView;->mReferenceChildWidth:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Landroid/widget/TYStackView;->mReferenceChildHeight:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    const/4 v2, 0x1

    .line 1197
    .local v2, haveChildRefSize:Z
    :goto_0
    const v1, 0x3f8e38e4

    .line 1198
    .local v1, factorY:F
    if-nez v4, :cond_4

    .line 1199
    if-eqz v2, :cond_3

    iget v9, p0, Landroid/widget/TYStackView;->mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f80

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/TYStackView;->mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/TYStackView;->mPaddingBottom:I

    add-int v5, v9, v10

    .line 1217
    :cond_0
    :goto_1
    const v0, 0x3f8e38e4

    .line 1218
    .local v0, factorX:F
    if-nez v7, :cond_8

    .line 1219
    if-eqz v2, :cond_7

    iget v9, p0, Landroid/widget/TYStackView;->mReferenceChildWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f80

    add-float/2addr v10, v0

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/TYStackView;->mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/TYStackView;->mPaddingRight:I

    add-int v8, v9, v10

    .line 1234
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v5}, Landroid/widget/TYStackView;->setMeasuredDimension(II)V

    .line 1235
    invoke-direct {p0}, Landroid/widget/TYStackView;->measureChildren()V

    .line 1236
    return-void

    .line 1193
    .end local v0           #factorX:F
    .end local v1           #factorY:F
    .end local v2           #haveChildRefSize:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1199
    .restart local v1       #factorY:F
    .restart local v2       #haveChildRefSize:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1202
    :cond_4
    const/high16 v9, -0x8000

    if-ne v4, v9, :cond_0

    .line 1203
    if-eqz v2, :cond_6

    .line 1204
    iget v9, p0, Landroid/widget/TYStackView;->mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f80

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/TYStackView;->mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/TYStackView;->mPaddingBottom:I

    add-int v3, v9, v10

    .line 1206
    .local v3, height:I
    if-gt v3, v5, :cond_5

    .line 1207
    move v5, v3

    goto :goto_1

    .line 1209
    :cond_5
    const/high16 v9, 0x100

    or-int/2addr v5, v9

    goto :goto_1

    .line 1213
    .end local v3           #height:I
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 1219
    .restart local v0       #factorX:F
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 1222
    :cond_8
    const/high16 v9, -0x8000

    if-ne v4, v9, :cond_1

    .line 1223
    if-eqz v2, :cond_a

    .line 1224
    iget v9, p0, Landroid/widget/TYStackView;->mReferenceChildWidth:I

    iget v10, p0, Landroid/widget/TYStackView;->mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/TYStackView;->mPaddingRight:I

    add-int v6, v9, v10

    .line 1225
    .local v6, width:I
    if-gt v6, v8, :cond_9

    .line 1226
    move v8, v6

    goto :goto_2

    .line 1228
    :cond_9
    const/high16 v9, 0x100

    or-int/2addr v8, v9

    goto :goto_2

    .line 1231
    .end local v6           #width:I
    :cond_a
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    const/4 v12, -0x1

    const/4 v9, 0x1

    const/high16 v11, 0x3f80

    .line 718
    invoke-super {p0, p1}, Landroid/widget/TYAdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 721
    .local v0, action:I
    iget v10, p0, Landroid/widget/TYStackView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 722
    .local v5, pointerIndex:I
    if-ne v5, v12, :cond_0

    .line 724
    const-string v9, "StackView"

    const-string v10, "Error: No data for our primary pointer."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :goto_0
    return v8

    .line 728
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 729
    .local v4, newY:F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 730
    .local v3, newX:F
    iget v10, p0, Landroid/widget/TYStackView;->mInitialY:F

    sub-float v2, v4, v10

    .line 731
    .local v2, deltaY:F
    iget v10, p0, Landroid/widget/TYStackView;->mInitialX:F

    sub-float v1, v3, v10

    .line 732
    .local v1, deltaX:F
    iget-object v10, p0, Landroid/widget/TYStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 733
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/TYStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 735
    :cond_1
    iget-object v10, p0, Landroid/widget/TYStackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 737
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v8, v9

    .line 771
    goto :goto_0

    .line 739
    :pswitch_1
    invoke-direct {p0, v2}, Landroid/widget/TYStackView;->beginGestureIfNeeded(F)V

    .line 741
    iget v8, p0, Landroid/widget/TYStackView;->mSlideAmount:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    div-float v7, v1, v8

    .line 742
    .local v7, rx:F
    iget v8, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    .line 743
    iget v8, p0, Landroid/widget/TYStackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    sub-float v8, v2, v8

    iget v10, p0, Landroid/widget/TYStackView;->mSlideAmount:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float v6, v8, v11

    .line 744
    .local v6, r:F
    iget v8, p0, Landroid/widget/TYStackView;->mStackMode:I

    if-ne v8, v9, :cond_3

    sub-float v6, v11, v6

    .line 745
    :cond_3
    iget-object v8, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    sub-float v10, v11, v6

    invoke-virtual {v8, v10}, Landroid/widget/TYStackView$StackSlider;->setYProgress(F)V

    .line 746
    iget-object v8, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/TYStackView$StackSlider;->setXProgress(F)V

    move v8, v9

    .line 747
    goto :goto_0

    .line 748
    .end local v6           #r:F
    :cond_4
    iget v8, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    if-ne v8, v9, :cond_2

    .line 749
    iget v8, p0, Landroid/widget/TYStackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v11

    add-float/2addr v8, v2

    neg-float v8, v8

    iget v10, p0, Landroid/widget/TYStackView;->mSlideAmount:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float v6, v8, v11

    .line 750
    .restart local v6       #r:F
    iget v8, p0, Landroid/widget/TYStackView;->mStackMode:I

    if-ne v8, v9, :cond_5

    sub-float v6, v11, v6

    .line 751
    :cond_5
    iget-object v8, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    invoke-virtual {v8, v6}, Landroid/widget/TYStackView$StackSlider;->setYProgress(F)V

    .line 752
    iget-object v8, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/TYStackView$StackSlider;->setXProgress(F)V

    move v8, v9

    .line 753
    goto :goto_0

    .line 758
    .end local v6           #r:F
    .end local v7           #rx:F
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/TYStackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 762
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/TYStackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 766
    :pswitch_4
    iput v12, p0, Landroid/widget/TYStackView;->mActivePointerId:I

    .line 767
    iput v8, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    goto :goto_1

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1261
    invoke-super {p0, p1, p2}, Landroid/widget/TYAdapterViewAnimator;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1281
    :goto_0
    return v0

    .line 1264
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TYStackView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1265
    goto :goto_0

    .line 1267
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1281
    goto :goto_0

    .line 1269
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getDisplayedChild()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TYStackView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 1270
    invoke-virtual {p0}, Landroid/widget/TYStackView;->showNext()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1273
    goto :goto_0

    .line 1275
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getDisplayedChild()I

    move-result v2

    if-lez v2, :cond_3

    .line 1276
    invoke-virtual {p0}, Landroid/widget/TYStackView;->showPrevious()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1279
    goto :goto_0

    .line 1267
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public showNext()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 401
    iget v1, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    if-eqz v1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TYStackView;->mTransitionIsSetup:Z

    if-nez v1, :cond_1

    .line 403
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TYStackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 404
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 405
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/TYStackView;->setupStackSlider(Landroid/view/View;I)V

    .line 406
    iget-object v1, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/TYStackView$StackSlider;->setYProgress(F)V

    .line 407
    iget-object v1, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/TYStackView$StackSlider;->setXProgress(F)V

    .line 410
    .end local v0           #v:Landroid/view/View;
    :cond_1
    invoke-super {p0}, Landroid/widget/TYAdapterViewAnimator;->showNext()V

    goto :goto_0
.end method

.method showOnly(IZ)V
    .locals 7
    .parameter "childIndex"
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    .line 433
    invoke-super {p0, p1, p2}, Landroid/widget/TYAdapterViewAnimator;->showOnly(IZ)V

    .line 436
    iget v0, p0, Landroid/widget/TYStackView;->mCurrentWindowEnd:I

    .local v0, i:I
    :goto_0
    iget v4, p0, Landroid/widget/TYStackView;->mCurrentWindowStart:I

    if-lt v0, v4, :cond_1

    .line 437
    invoke-virtual {p0}, Landroid/widget/TYStackView;->getWindowSize()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/TYStackView;->modulo(II)I

    move-result v1

    .line 438
    .local v1, index:I
    iget-object v4, p0, Landroid/widget/TYStackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 439
    .local v3, vm:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_0

    .line 440
    iget-object v4, p0, Landroid/widget/TYStackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 441
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 436
    .end local v2           #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 444
    .end local v1           #index:I
    .end local v3           #vm:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_1
    iget-object v4, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 445
    iget-object v4, p0, Landroid/widget/TYStackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->bringToFront()V

    .line 447
    :cond_2
    iput-boolean v6, p0, Landroid/widget/TYStackView;->mTransitionIsSetup:Z

    .line 448
    iput-boolean v6, p0, Landroid/widget/TYStackView;->mClickFeedbackIsValid:Z

    .line 449
    return-void
.end method

.method public showPrevious()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 419
    iget v1, p0, Landroid/widget/TYStackView;->mSwipeGestureType:I

    if-eqz v1, :cond_0

    .line 429
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TYStackView;->mTransitionIsSetup:Z

    if-nez v1, :cond_1

    .line 421
    invoke-virtual {p0, v2}, Landroid/widget/TYStackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 422
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 423
    invoke-direct {p0, v0, v2}, Landroid/widget/TYStackView;->setupStackSlider(Landroid/view/View;I)V

    .line 424
    iget-object v1, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/widget/TYStackView$StackSlider;->setYProgress(F)V

    .line 425
    iget-object v1, p0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TYStackView$StackSlider;->setXProgress(F)V

    .line 428
    .end local v0           #v:Landroid/view/View;
    :cond_1
    invoke-super {p0}, Landroid/widget/TYAdapterViewAnimator;->showPrevious()V

    goto :goto_0
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/widget/TYStackView;->updateClickFeedback()V

    .line 467
    iget-object v0, p0, Landroid/widget/TYStackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Landroid/widget/TYStackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 469
    invoke-virtual {p0}, Landroid/widget/TYStackView;->invalidate()V

    .line 470
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 17
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "view"
    .parameter "animate"

    .prologue
    .line 218
    if-nez p4, :cond_0

    move-object/from16 v13, p3

    .line 219
    check-cast v13, Landroid/widget/TYStackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/TYStackView$StackFrame;->cancelSliderAnimator()Z

    .line 220
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotationX(F)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/TYStackView$LayoutParams;

    .line 222
    .local v6, lp:Landroid/widget/TYStackView$LayoutParams;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TYStackView$LayoutParams;->setVerticalOffset(I)V

    .line 223
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TYStackView$LayoutParams;->setHorizontalOffset(I)V

    .line 226
    .end local v6           #lp:Landroid/widget/TYStackView$LayoutParams;
    :cond_0
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TYStackView;->getNumActiveViews()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_3

    .line 227
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v13}, Landroid/widget/TYStackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 228
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 229
    const/high16 v13, 0x3f80

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 299
    :cond_1
    :goto_0
    const/4 v13, -0x1

    move/from16 v0, p2

    if-eq v0, v13, :cond_2

    .line 300
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TYStackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 302
    :cond_2
    return-void

    .line 230
    :cond_3
    if-nez p1, :cond_5

    const/4 v13, 0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_5

    move-object/from16 v13, p3

    .line 232
    check-cast v13, Landroid/widget/TYStackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/TYStackView$StackFrame;->cancelSliderAnimator()Z

    .line 233
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TYStackView;->mYVelocity:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/TYStackView$StackSlider;->getDurationForNeutralPosition(F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 236
    .local v5, duration:I
    new-instance v4, Landroid/widget/TYStackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/widget/TYStackView$StackSlider;-><init>(Landroid/widget/TYStackView;Landroid/widget/TYStackView$StackSlider;)V

    .line 237
    .local v4, animationSlider:Landroid/widget/TYStackView$StackSlider;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/TYStackView$StackSlider;->setView(Landroid/view/View;)V

    .line 239
    if-eqz p4, :cond_4

    .line 240
    const-string v13, "YProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 241
    .local v9, slideInY:Landroid/animation/PropertyValuesHolder;
    const-string v13, "XProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 242
    .local v8, slideInX:Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v9, v13, v14

    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 244
    .local v7, slideIn:Landroid/animation/ObjectAnimator;
    int-to-long v13, v5

    invoke-virtual {v7, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 245
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v13, p3

    .line 246
    check-cast v13, Landroid/widget/TYStackView$StackFrame;

    invoke-virtual {v13, v7}, Landroid/widget/TYStackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 247
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 249
    .end local v7           #slideIn:Landroid/animation/ObjectAnimator;
    .end local v8           #slideInX:Landroid/animation/PropertyValuesHolder;
    .end local v9           #slideInY:Landroid/animation/PropertyValuesHolder;
    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/TYStackView$StackSlider;->setYProgress(F)V

    .line 250
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/TYStackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_0

    .line 252
    .end local v4           #animationSlider:Landroid/widget/TYStackView$StackSlider;
    .end local v5           #duration:I
    :cond_5
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_7

    if-nez p2, :cond_7

    move-object/from16 v13, p3

    .line 254
    check-cast v13, Landroid/widget/TYStackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/TYStackView$StackFrame;->cancelSliderAnimator()Z

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TYStackView;->mYVelocity:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/widget/TYStackView$StackSlider;->getDurationForOffscreenPosition(F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 257
    .restart local v5       #duration:I
    new-instance v4, Landroid/widget/TYStackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TYStackView;->mStackSlider:Landroid/widget/TYStackView$StackSlider;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/widget/TYStackView$StackSlider;-><init>(Landroid/widget/TYStackView;Landroid/widget/TYStackView$StackSlider;)V

    .line 258
    .restart local v4       #animationSlider:Landroid/widget/TYStackView$StackSlider;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/TYStackView$StackSlider;->setView(Landroid/view/View;)V

    .line 259
    if-eqz p4, :cond_6

    .line 260
    const-string v13, "YProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 261
    .local v12, slideOutY:Landroid/animation/PropertyValuesHolder;
    const-string v13, "XProgress"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 262
    .local v11, slideOutX:Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v12, v13, v14

    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 264
    .local v10, slideOut:Landroid/animation/ObjectAnimator;
    int-to-long v13, v5

    invoke-virtual {v10, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 265
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v13, p3

    .line 266
    check-cast v13, Landroid/widget/TYStackView$StackFrame;

    invoke-virtual {v13, v10}, Landroid/widget/TYStackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 267
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 269
    .end local v10           #slideOut:Landroid/animation/ObjectAnimator;
    .end local v11           #slideOutX:Landroid/animation/PropertyValuesHolder;
    .end local v12           #slideOutY:Landroid/animation/PropertyValuesHolder;
    :cond_6
    const/high16 v13, 0x3f80

    invoke-virtual {v4, v13}, Landroid/widget/TYStackView$StackSlider;->setYProgress(F)V

    .line 270
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/TYStackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_0

    .line 272
    .end local v4           #animationSlider:Landroid/widget/TYStackView$StackSlider;
    .end local v5           #duration:I
    :cond_7
    if-nez p2, :cond_8

    .line 274
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 275
    const/4 v13, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 276
    :cond_8
    if-eqz p1, :cond_9

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_a

    :cond_9
    const/4 v13, 0x1

    move/from16 v0, p2

    if-le v0, v13, :cond_a

    .line 277
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 278
    const/high16 v13, 0x3f80

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 279
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotationX(F)V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/TYStackView$LayoutParams;

    .line 281
    .restart local v6       #lp:Landroid/widget/TYStackView$LayoutParams;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TYStackView$LayoutParams;->setVerticalOffset(I)V

    .line 282
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TYStackView$LayoutParams;->setHorizontalOffset(I)V

    goto/16 :goto_0

    .line 283
    .end local v6           #lp:Landroid/widget/TYStackView$LayoutParams;
    :cond_a
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_b

    .line 284
    const/high16 v13, 0x3f80

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    .line 285
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 286
    :cond_b
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_1

    .line 287
    if-eqz p4, :cond_c

    .line 288
    new-instance v13, Landroid/widget/TYStackView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Landroid/widget/TYStackView$1;-><init>(Landroid/widget/TYStackView;Landroid/view/View;)V

    const-wide/16 v14, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Landroid/widget/TYStackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 294
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method updateClickFeedback()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 452
    iget-boolean v1, p0, Landroid/widget/TYStackView;->mClickFeedbackIsValid:Z

    if-nez v1, :cond_1

    .line 453
    invoke-virtual {p0, v4}, Landroid/widget/TYStackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 454
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 455
    iget-object v1, p0, Landroid/widget/TYStackView;->mClickFeedback:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/TYStackView;->sHolographicHelper:Landroid/widget/TYStackView$HolographicHelper;

    iget v3, p0, Landroid/widget/TYStackView;->mClickColor:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/TYStackView$HolographicHelper;->createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 457
    iget-object v1, p0, Landroid/widget/TYStackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 458
    iget-object v1, p0, Landroid/widget/TYStackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 460
    :cond_0
    iput-boolean v4, p0, Landroid/widget/TYStackView;->mClickFeedbackIsValid:Z

    .line 462
    .end local v0           #v:Landroid/view/View;
    :cond_1
    return-void
.end method
