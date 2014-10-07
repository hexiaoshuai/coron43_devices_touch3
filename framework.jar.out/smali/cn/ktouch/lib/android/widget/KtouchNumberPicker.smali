.class public Lcn/ktouch/lib/android/widget/KtouchNumberPicker;
.super Landroid/widget/LinearLayout;
.source "KtouchNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;,
        Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;,
        Lcn/ktouch/lib/android/widget/KtouchNumberPicker$CustomEditText;,
        Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;,
        Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;,
        Lcn/ktouch/lib/android/widget/KtouchNumberPicker$InputTextFilter;,
        Lcn/ktouch/lib/android/widget/KtouchNumberPicker$Formatter;,
        Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnScrollListener;,
        Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnValueChangeListener;,
        Lcn/ktouch/lib/android/widget/KtouchNumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x109008e

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C = null

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMiddleSelectorElementHeight:I

.field private final mMiddleTextSize:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnValueChangeListener;

.field private final mPressedStateHelper:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSecondSelectorElementHeight:I

.field private final mSecondTextSize:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private final mSelectorMiddlePaint:Landroid/graphics/Paint;

.field private final mSelectorSecondWheelPaint:Landroid/graphics/Paint;

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->sTwoDigitFormatter:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$TwoDigitFormatter;

    .line 1969
    const/16 v0, 0x1e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x60t 0x6t
        0x61t 0x6t
        0x62t 0x6t
        0x63t 0x6t
        0x64t 0x6t
        0x65t 0x6t
        0x66t 0x6t
        0x67t 0x6t
        0x68t 0x6t
        0x69t 0x6t
        0xf0t 0x6t
        0xf1t 0x6t
        0xf2t 0x6t
        0xf3t 0x6t
        0xf4t 0x6t
        0xf5t 0x6t
        0xf6t 0x6t
        0xf7t 0x6t
        0xf8t 0x6t
        0xf9t 0x6t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 552
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 553
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 562
    const v0, 0x10103ec

    invoke-direct {p0, p1, p2, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 563
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 573
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 302
    const-wide/16 v17, 0x12c

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLongPressUpdateInterval:J

    .line 307
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 312
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorIndices:[I

    .line 336
    const/high16 v17, -0x8000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInitialScrollOffset:I

    .line 437
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollState:I

    .line 575
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setFocusableInTouchMode(Z)V

    .line 578
    sget-object v17, Lcom/android/internal/R$styleable;->NumberPicker:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 580
    .local v5, attributesArray:Landroid/content/res/TypedArray;
    const/16 v17, 0x1

    const v18, 0x109008e

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 583
    .local v10, layoutResId:I
    const v17, 0x109008e

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    .line 585
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSolidColor:I

    .line 587
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 589
    const/16 v17, 0x1

    const/high16 v18, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v8, v0

    .line 592
    .local v8, defSelectionDividerHeight:I
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectionDividerHeight:I

    .line 595
    const/16 v17, 0x1

    const/high16 v18, 0x4240

    invoke-virtual/range {p0 .. p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    .line 598
    .local v7, defSelectionDividerDistance:I
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectionDividersDistance:I

    .line 601
    const/16 v17, 0x5

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinHeight:I

    .line 604
    const/16 v17, 0x6

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxHeight:I

    .line 606
    move-object/from16 v0, p0

    iget v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinHeight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxHeight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 608
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "minHeight > maxHeight"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 583
    .end local v7           #defSelectionDividerDistance:I
    .end local v8           #defSelectionDividerHeight:I
    :cond_0
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 611
    .restart local v7       #defSelectionDividerDistance:I
    .restart local v8       #defSelectionDividerHeight:I
    :cond_1
    const/16 v17, 0x7

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinWidth:I

    .line 614
    const/16 v17, 0x8

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxWidth:I

    .line 616
    move-object/from16 v0, p0

    iget v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinWidth:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxWidth:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 618
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "minWidth > maxWidth"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 621
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxWidth:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mComputeMaxWidth:Z

    .line 627
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 629
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 631
    new-instance v17, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;-><init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPressedStateHelper:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;

    .line 638
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setWillNotDraw(Z)V

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 642
    .local v9, inflater:Landroid/view/LayoutInflater;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v9, v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 644
    new-instance v13, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$1;-><init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V

    .line 656
    .local v13, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v14, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$2;-><init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V

    .line 670
    .local v14, onLongClickListener:Landroid/view/View$OnLongClickListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 671
    const v17, 0x1020327

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 679
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 680
    const v17, 0x1020329

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 688
    :goto_4
    const v17, 0x1020328

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1060070

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setTextColor(I)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    new-instance v18, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$3;-><init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$InputTextFilter;

    invoke-direct/range {v20 .. v21}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$InputTextFilter;-><init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V

    aput-object v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 708
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 709
    .local v6, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTouchSlop:I

    .line 710
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinimumFlingVelocity:I

    .line 711
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v17

    div-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaximumFlingVelocity:I

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1050089

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTextSize:I

    .line 715
    invoke-virtual/range {p0 .. p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x105008a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSecondTextSize:I

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x105008b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMiddleTextSize:I

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/high16 v18, 0x41a8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setTextSize(F)V

    .line 720
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 721
    .local v15, paint:Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 722
    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 723
    move-object/from16 v0, p0

    iget v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTextSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 729
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 730
    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 732
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 733
    .local v16, secPaint:Landroid/graphics/Paint;
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 734
    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 735
    move-object/from16 v0, p0

    iget v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSecondTextSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 737
    const/16 v17, -0x1

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setColor(I)V

    .line 738
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorSecondWheelPaint:Landroid/graphics/Paint;

    .line 740
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 741
    .local v12, midPaint:Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 742
    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 743
    move-object/from16 v0, p0

    iget v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMiddleTextSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1060070

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 746
    .local v11, midColor:I
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 747
    move-object/from16 v0, p0

    iput-object v12, v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorMiddlePaint:Landroid/graphics/Paint;

    .line 750
    new-instance v17, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v17 .. v20}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 751
    new-instance v17, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v18

    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v20, 0x4020

    invoke-direct/range {v19 .. v20}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v17 .. v19}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 753
    invoke-direct/range {p0 .. p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->updateInputTextView()Z

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getImportantForAccessibility()I

    move-result v17

    if-nez v17, :cond_3

    .line 757
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setImportantForAccessibility(I)V

    .line 759
    :cond_3
    return-void

    .line 621
    .end local v6           #configuration:Landroid/view/ViewConfiguration;
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    .end local v11           #midColor:I
    .end local v12           #midPaint:Landroid/graphics/Paint;
    .end local v13           #onClickListener:Landroid/view/View$OnClickListener;
    .end local v14           #onLongClickListener:Landroid/view/View$OnLongClickListener;
    .end local v15           #paint:Landroid/graphics/Paint;
    .end local v16           #secPaint:Landroid/graphics/Paint;
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 638
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 675
    .restart local v9       #inflater:Landroid/view/LayoutInflater;
    .restart local v13       #onClickListener:Landroid/view/View$OnClickListener;
    .restart local v14       #onLongClickListener:Landroid/view/View$OnLongClickListener;
    :cond_6
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_3

    .line 684
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1200(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1300(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1302(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1380(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1400(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1500(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$1600(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$1700(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1702(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1780(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1800(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$1900(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$200(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2100(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$2200(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2300(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2400(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$2500(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2600(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->showSoftInput()V

    return-void
.end method

.method static synthetic access$2802(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$2900(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$300(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$3000(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$3100(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$3200(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$3300(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$3400(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$3500(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$3600(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTop:I

    return v0
.end method

.method static synthetic access$3700(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$3800(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$3900(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4000(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$4100(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$4200(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$4300(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4400(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4500(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$4600(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$4700(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$4800(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$4900(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTop:I

    return v0
.end method

.method static synthetic access$5000(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5100(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$5200(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5300(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$5400(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5500(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5600(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5800(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5900(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    return v0
.end method

.method static synthetic access$6400(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$6500(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    return v0
.end method

.method static synthetic access$6700(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()[C
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$900(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .parameter "increment"

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1645
    iget-boolean v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1646
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1647
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1650
    :cond_0
    iput v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPreviousScrollerY:I

    .line 1651
    if-eqz p1, :cond_1

    .line 1652
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1656
    :goto_0
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate()V

    .line 1664
    :goto_1
    return-void

    .line 1654
    :cond_1
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1658
    :cond_2
    if-eqz p1, :cond_3

    .line 1659
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1661
    :cond_3
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setValueInternal(IZ)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1772
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1773
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1772
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1775
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1776
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1777
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    .line 1779
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1780
    invoke-direct {p0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1781
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1788
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1789
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1790
    .local v2, scrollSelectorValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1804
    :goto_0
    return-void

    .line 1793
    :cond_0
    iget v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1794
    :cond_1
    const-string v2, ""

    .line 1803
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1796
    :cond_2
    iget-object v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1797
    iget v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1798
    .local v1, displayedValueIndex:I
    iget-object v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1799
    goto :goto_1

    .line 1800
    .end local v1           #displayedValueIndex:I
    :cond_3
    invoke-direct {p0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2052
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2053
    .local v4, deltaY:I
    if-eqz v4, :cond_1

    .line 2054
    iput v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPreviousScrollerY:I

    .line 2055
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 2056
    if-lez v4, :cond_2

    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2058
    :cond_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2059
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate()V

    .line 2060
    const/4 v1, 0x1

    .line 2062
    :cond_1
    return v1

    .line 2056
    :cond_2
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .parameter "velocityY"

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1728
    iput v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPreviousScrollerY:I

    .line 1730
    if-lez p1, :cond_0

    .line 1731
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1736
    :goto_0
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate()V

    .line 1737
    return-void

    .line 1733
    :cond_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1807
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFormatter:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFormatter:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .parameter "value"

    .prologue
    .line 2627
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1922
    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1924
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1948
    :goto_0
    return v1

    .line 1929
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1931
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1932
    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1933
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1929
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1942
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1925
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 1948
    :goto_2
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    goto :goto_0

    .line 1943
    .restart local v0       #i:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static final getTwoDigitFormatter()Lcn/ktouch/lib/android/widget/KtouchNumberPicker$Formatter;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->sTwoDigitFormatter:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1743
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1744
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    iget v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1748
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1745
    .restart local p1
    :cond_1
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1746
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    iget v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1206
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1207
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1208
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1209
    iget-boolean v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1210
    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1213
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1756
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1757
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1756
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1759
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1760
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1761
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    .line 1763
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1764
    invoke-direct {p0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1765
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1691
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1692
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottom:I

    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setFadingEdgeLength(I)V

    .line 1693
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 8

    .prologue
    .line 1667
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->initializeSelectorWheelIndices()V

    .line 1668
    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorIndices:[I

    .line 1669
    .local v1, selectorIndices:[I
    array-length v5, v1

    iget v6, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTextSize:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTextSize:I

    iget v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSecondTextSize:I

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMiddleTextSize:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1671
    .local v4, totalTextHeight:I
    iget v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottom:I

    iget v6, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1672
    .local v3, totalTextGapHeight:F
    array-length v5, v1

    int-to-float v2, v5

    .line 1673
    .local v2, textGapCount:F
    div-float v5, v3, v2

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorTextGapHeight:I

    .line 1674
    iget v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTextSize:I

    iget v6, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    .line 1675
    iget v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSecondTextSize:I

    iget v6, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSecondSelectorElementHeight:I

    .line 1676
    iget v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMiddleTextSize:I

    iget v6, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMiddleSelectorElementHeight:I

    .line 1679
    iget-object v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1684
    .local v0, editTextTextPosition:I
    iget v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMiddleSelectorElementHeight:I

    iget v6, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSecondSelectorElementHeight:I

    add-int/2addr v5, v6

    sub-int v5, v0, v5

    iput v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInitialScrollOffset:I

    .line 1686
    iget v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    .line 1687
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->updateInputTextView()Z

    .line 1688
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1597
    iget-object v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1598
    iget-object v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorIndices:[I

    .line 1599
    .local v3, selectorIndices:[I
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getValue()I

    move-result v0

    .line 1600
    .local v0, current:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1601
    add-int/lit8 v4, v1, -0x2

    add-int v2, v0, v4

    .line 1602
    .local v2, selectorIndex:I
    iget-boolean v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1603
    invoke-direct {p0, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1605
    :cond_0
    aput v2, v3, v1

    .line 1606
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1608
    .end local v2           #selectorIndex:I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .parameter "measureSpec"
    .parameter "maxSize"

    .prologue
    const/high16 v3, 0x4000

    .line 1555
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1566
    .end local p1
    :goto_0
    :sswitch_0
    return p1

    .line 1558
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1559
    .local v1, size:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1560
    .local v0, mode:I
    sparse-switch v0, :sswitch_data_0

    .line 1568
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1564
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1566
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1560
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .parameter "scroller"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 817
    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 818
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 819
    .local v0, amountToScroll:I
    iget v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 820
    .local v1, futureScrollOffset:I
    iget v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 821
    .local v2, overshootAdjustment:I
    if-eqz v2, :cond_2

    .line 822
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 823
    if-lez v2, :cond_1

    .line 824
    iget v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 829
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 830
    invoke-virtual {p0, v4, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->scrollBy(II)V

    .line 833
    :goto_1
    return v3

    .line 826
    :cond_1
    iget v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 833
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 1851
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mOnValueChangeListener:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mOnValueChangeListener:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnValueChangeListener;

    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnValueChangeListener;->onValueChange(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;II)V

    .line 1854
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 1715
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1722
    :cond_0
    :goto_0
    return-void

    .line 1718
    :cond_1
    iput p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollState:I

    .line 1719
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mOnScrollListener:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mOnScrollListener:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnScrollListener;->onScrollStateChange(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .parameter "scroller"

    .prologue
    .line 1699
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 1700
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1701
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->updateInputTextView()Z

    .line 1703
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->onScrollStateChange(I)V

    .line 1709
    :cond_1
    :goto_0
    return-void

    .line 1705
    :cond_2
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1706
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .prologue
    .line 1885
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1886
    new-instance v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V

    iput-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;

    .line 1890
    :goto_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1891
    return-void

    .line 1888
    :cond_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1
    .parameter "increment"
    .parameter "delayMillis"

    .prologue
    .line 1862
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1863
    new-instance v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V

    iput-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1867
    :goto_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #calls: Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$500(Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1868
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1869
    return-void

    .line 1865
    :cond_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .parameter "selectionStart"
    .parameter "selectionEnd"

    .prologue
    .line 1956
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSetSelectionCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 1957
    new-instance v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;-><init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V

    iput-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSetSelectionCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;

    .line 1961
    :goto_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSetSelectionCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;

    #setter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;->access$602(Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;I)I

    .line 1962
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSetSelectionCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;

    #setter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;->access$702(Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;I)I

    .line 1963
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSetSelectionCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1964
    return-void

    .line 1959
    :cond_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSetSelectionCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1907
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1909
    :cond_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSetSelectionCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 1910
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSetSelectionCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1912
    :cond_1
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 1913
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1915
    :cond_2
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPressedStateHelper:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->cancel()V

    .line 1916
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 1897
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1898
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1900
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 1875
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1878
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .parameter "minSize"
    .parameter "measuredSize"
    .parameter "measureSpec"

    .prologue
    .line 1584
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1585
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1586
    .local v0, desiredWidth:I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1588
    .end local v0           #desiredWidth:I
    .end local p2
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .parameter "current"
    .parameter "notifyChange"

    .prologue
    .line 1617
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1635
    :goto_0
    return-void

    .line 1621
    :cond_0
    iget-boolean v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1622
    invoke-direct {p0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1627
    :goto_1
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    .line 1628
    .local v0, previous:I
    iput p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    .line 1629
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->updateInputTextView()Z

    .line 1630
    if-eqz p2, :cond_1

    .line 1631
    invoke-direct {p0, v0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->notifyChange(II)V

    .line 1633
    :cond_1
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->initializeSelectorWheelIndices()V

    .line 1634
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate()V

    goto :goto_0

    .line 1624
    .end local v0           #previous:I
    :cond_2
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1625
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1192
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1193
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1194
    iget-boolean v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1195
    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1197
    :cond_0
    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1198
    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1200
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1219
    iget-boolean v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1222
    :cond_1
    const/4 v4, 0x0

    .line 1223
    .local v4, maxTextWidth:I
    iget-object v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1224
    const/4 v3, 0x0

    .line 1225
    .local v3, maxDigitWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1226
    iget-object v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1227
    .local v1, digitWidth:F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1228
    move v3, v1

    .line 1225
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1231
    .end local v1           #digitWidth:F
    :cond_3
    const/4 v5, 0x0

    .line 1232
    .local v5, numberOfDigits:I
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    .line 1233
    .local v0, current:I
    :goto_2
    if-lez v0, :cond_4

    .line 1234
    add-int/lit8 v5, v5, 0x1

    .line 1235
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1237
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1247
    .end local v0           #current:I
    .end local v3           #maxDigitWidth:F
    .end local v5           #numberOfDigits:I
    :cond_5
    iget-object v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1248
    iget v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1249
    iget v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1250
    iput v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxWidth:I

    .line 1254
    :goto_3
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate()V

    goto :goto_0

    .line 1239
    .end local v2           #i:I
    :cond_6
    iget-object v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1240
    .local v7, valueCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1241
    iget-object v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1242
    .local v6, textWidth:F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1243
    float-to-int v4, v6

    .line 1240
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1252
    .end local v6           #textWidth:F
    .end local v7           #valueCount:I
    :cond_8
    iget v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinWidth:I

    iput v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 1836
    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1838
    .local v0, text:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1839
    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1840
    const/4 v1, 0x1

    .line 1843
    :goto_1
    return v1

    .line 1836
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    iget v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 1843
    .restart local v0       #text:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1811
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1812
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1814
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->updateInputTextView()Z

    .line 1820
    :goto_0
    return-void

    .line 1817
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1818
    .local v0, current:I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1048
    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1049
    .local v1, scroller:Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1050
    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1051
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1055
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1056
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1057
    .local v0, currentScrollerY:I
    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1058
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPreviousScrollerY:I

    .line 1060
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->scrollBy(II)V

    .line 1061
    iput v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPreviousScrollerY:I

    .line 1062
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1063
    invoke-direct {p0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1065
    :cond_2
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 999
    iget-boolean v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 1000
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1043
    :goto_0
    return v4

    .line 1002
    :cond_0
    iget-object v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1003
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1005
    .local v1, eventY:I
    iget v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_2

    .line 1006
    const/4 v2, 0x3

    .line 1012
    .local v2, hoveredVirtualViewId:I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1013
    .local v0, action:I
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;

    .line 1015
    .local v3, provider:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    .line 1043
    .end local v0           #action:I
    .end local v1           #eventY:I
    .end local v2           #hoveredVirtualViewId:I
    .end local v3           #provider:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1007
    .restart local v1       #eventY:I
    :cond_2
    iget v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_3

    .line 1008
    const/4 v2, 0x1

    .restart local v2       #hoveredVirtualViewId:I
    goto :goto_1

    .line 1010
    .end local v2           #hoveredVirtualViewId:I
    :cond_3
    const/4 v2, 0x2

    .restart local v2       #hoveredVirtualViewId:I
    goto :goto_1

    .line 1017
    .restart local v0       #action:I
    .restart local v3       #provider:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v7}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1019
    iput v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1020
    invoke-virtual {v3, v2, v6, v9}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1024
    :pswitch_2
    iget v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    iget v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_1

    .line 1026
    iget v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v8}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1029
    invoke-virtual {v3, v2, v7}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1031
    iput v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1032
    invoke-virtual {v3, v2, v6, v9}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1037
    :pswitch_3
    invoke-virtual {v3, v2, v8}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1039
    iput v5, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_2

    .line 1015
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 975
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 976
    .local v0, keyCode:I
    sparse-switch v0, :sswitch_data_0

    .line 982
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 979
    :sswitch_0
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 976
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 963
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 964
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 970
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 967
    :pswitch_1
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 964
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 987
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 988
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 994
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 991
    :pswitch_1
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 988
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1538
    iget-boolean v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1539
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1544
    :goto_0
    return-object v0

    .line 1541
    :cond_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mAccessibilityNodeProvider:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1542
    new-instance v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V

    iput-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mAccessibilityNodeProvider:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;

    .line 1544
    :cond_1
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mAccessibilityNodeProvider:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$AccessibilityNodeProviderImpl;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1435
    const v0, 0x3f666666

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1361
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1323
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1115
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1430
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1314
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1267
    iget-boolean v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1440
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeAllCallbacks()V

    .line 1441
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 1445
    iget-boolean v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    if-nez v7, :cond_1

    .line 1446
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1525
    :cond_0
    return-void

    .line 1449
    :cond_1
    iget v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    iget v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLeft:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v5, v7

    .line 1450
    .local v5, x:F
    iget v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    int-to-float v6, v7

    .line 1453
    .local v6, y:F
    iget-object v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    iget v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollState:I

    if-nez v7, :cond_3

    .line 1455
    iget-boolean v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v7, :cond_2

    .line 1456
    iget-object v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v8, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1457
    iget-object v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    iget v9, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v7, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1458
    iget-object v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1460
    :cond_2
    iget-boolean v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v7, :cond_3

    .line 1461
    iget-object v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v8, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1462
    iget-object v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottomSelectionDividerBottom:I

    iget v9, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I

    iget v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottom:I

    invoke-virtual {v7, v11, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1464
    iget-object v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1469
    :cond_3
    iget-object v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorIndices:[I

    .line 1470
    .local v4, selectorIndices:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_0

    .line 1471
    aget v3, v4, v0

    .line 1472
    .local v3, selectorIndex:I
    iget-object v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1478
    .local v2, scrollSelectorValue:Ljava/lang/String;
    if-eq v0, v12, :cond_4

    .line 1479
    const/4 v7, 0x1

    add-int/lit8 v8, v0, -0x2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v7, v8, :cond_6

    .line 1480
    iget-object v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorSecondWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1487
    :cond_4
    :goto_1
    if-ne v12, v0, :cond_5

    iget-object v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1488
    iget-object v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorMiddlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1492
    :cond_5
    add-int/lit8 v1, v0, -0x2

    .line 1493
    .local v1, relative:I
    packed-switch v1, :pswitch_data_0

    .line 1504
    iget v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 1470
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1483
    .end local v1           #relative:I
    :cond_6
    iget-object v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1496
    .restart local v1       #relative:I
    :pswitch_0
    iget v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSecondSelectorElementHeight:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 1497
    goto :goto_2

    .line 1499
    :pswitch_1
    iget v7, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMiddleSelectorElementHeight:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 1500
    goto :goto_2

    .line 1493
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1529
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1530
    const-class v0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1531
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1532
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1533
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1534
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 838
    iget-boolean v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 886
    :goto_0
    return v1

    .line 841
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 842
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 886
    goto :goto_0

    .line 844
    :pswitch_0
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeAllCallbacks()V

    .line 845
    iget-object v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastDownEventY:F

    iput v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastDownOrMoveEventY:F

    .line 847
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastDownEventTime:J

    .line 848
    iput-boolean v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIngonreMoveEvents:Z

    .line 849
    iput-boolean v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mShowSoftInputOnTap:Z

    .line 851
    iget v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 852
    iget v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 853
    iget-object v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPressedStateHelper:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 863
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 864
    iget-object v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 865
    iget-object v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 866
    iget-object v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 867
    invoke-direct {p0, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 856
    :cond_3
    iget v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 857
    iget v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 858
    iget-object v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPressedStateHelper:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;

    invoke-virtual {v3, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 868
    :cond_4
    iget-object v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 869
    iget-object v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 870
    iget-object v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 871
    :cond_5
    iget v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 872
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->hideSoftInput()V

    .line 873
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 875
    :cond_6
    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastDownEventY:F

    iget v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 876
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->hideSoftInput()V

    .line 877
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 880
    :cond_7
    iput-boolean v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mShowSoftInputOnTap:Z

    .line 881
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_0

    .line 842
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .line 763
    iget-boolean v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    if-nez v8, :cond_1

    .line 764
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 768
    .local v7, msrdWdth:I
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 771
    .local v6, msrdHght:I
    iget-object v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 772
    .local v3, inptTxtMsrdWdth:I
    iget-object v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 773
    .local v2, inptTxtMsrdHght:I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 774
    .local v1, inptTxtLeft:I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 775
    .local v5, inptTxtTop:I
    add-int v4, v1, v3

    .line 776
    .local v4, inptTxtRight:I
    add-int v0, v5, v2

    .line 777
    .local v0, inptTxtBottom:I
    iget-object v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 779
    if-eqz p1, :cond_0

    .line 781
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->initializeSelectorWheel()V

    .line 782
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->initializeFadingEdges()V

    .line 783
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTopSelectionDividerTop:I

    .line 785
    iget v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottomSelectionDividerBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 792
    iget-boolean v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 793
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 806
    :goto_0
    return-void

    .line 797
    :cond_0
    iget v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 798
    .local v2, newWidthMeasureSpec:I
    iget v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 799
    .local v1, newHeightMeasureSpec:I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 801
    iget v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 803
    .local v3, widthSize:I
    iget v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 805
    .local v0, heightSize:I
    invoke-virtual {p0, v3, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 891
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    if-nez v10, :cond_1

    .line 892
    :cond_0
    const/4 v10, 0x0

    .line 958
    :goto_0
    return v10

    .line 894
    :cond_1
    iget-object v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 895
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 897
    :cond_2
    iget-object v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 898
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 899
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 958
    :cond_3
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 901
    :pswitch_0
    iget-boolean v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIngonreMoveEvents:Z

    if-nez v10, :cond_3

    .line 904
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 905
    .local v1, currentMoveY:F
    iget v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 906
    iget v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 907
    .local v2, deltaDownY:I
    iget v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_4

    .line 908
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeAllCallbacks()V

    .line 909
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->onScrollStateChange(I)V

    .line 916
    .end local v2           #deltaDownY:I
    :cond_4
    :goto_2
    iput v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 912
    :cond_5
    iget v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 913
    .local v3, deltaMoveY:I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->scrollBy(II)V

    .line 914
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate()V

    goto :goto_2

    .line 919
    .end local v1           #currentMoveY:F
    .end local v3           #deltaMoveY:I
    :pswitch_1
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeBeginSoftInputCommand()V

    .line 920
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 921
    iget-object v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPressedStateHelper:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;

    invoke-virtual {v10}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->cancel()V

    .line 922
    iget-object v9, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 923
    .local v9, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 924
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 925
    .local v7, initialVelocity:I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_6

    .line 926
    invoke-direct {p0, v7}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->fling(I)V

    .line 927
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->onScrollStateChange(I)V

    .line 954
    :goto_3
    iget-object v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 955
    const/4 v10, 0x0

    iput-object v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 929
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 930
    .local v6, eventY:I
    int-to-float v10, v6

    iget v11, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 931
    .restart local v3       #deltaMoveY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 932
    .local v4, deltaTime:J
    iget v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTouchSlop:I

    if-gt v3, v10, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_a

    .line 933
    iget-boolean v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mShowSoftInputOnTap:Z

    if-eqz v10, :cond_8

    .line 934
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mShowSoftInputOnTap:Z

    .line 935
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->showSoftInput()V

    .line 952
    :cond_7
    :goto_4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 937
    :cond_8
    iget v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x2

    .line 939
    .local v8, selectorIndexOffset:I
    if-lez v8, :cond_9

    .line 940
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->changeValueByOne(Z)V

    .line 941
    iget-object v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPressedStateHelper:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 943
    :cond_9
    if-gez v8, :cond_7

    .line 944
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->changeValueByOne(Z)V

    .line 945
    iget-object v10, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mPressedStateHelper:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 950
    .end local v8           #selectorIndexOffset:I
    :cond_a
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 899
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 1083
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorIndices:[I

    .line 1084
    .local v0, selectorIndices:[I
    iget-boolean v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_1

    .line 1086
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    iget-boolean v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_2

    .line 1091
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1094
    :cond_2
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    .line 1095
    :cond_3
    :goto_1
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_4

    .line 1096
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    .line 1097
    invoke-direct {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->decrementSelectorIndices([I)V

    .line 1098
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setValueInternal(IZ)V

    .line 1099
    iget-boolean v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 1100
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1103
    :cond_4
    :goto_2
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1104
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    .line 1105
    invoke-direct {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->incrementSelectorIndices([I)V

    .line 1106
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setValueInternal(IZ)V

    .line 1107
    iget-boolean v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_4

    .line 1108
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .parameter "displayedValues"

    .prologue
    .line 1412
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1426
    :goto_0
    return-void

    .line 1415
    :cond_0
    iput-object p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1416
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1418
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1423
    :goto_1
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->updateInputTextView()Z

    .line 1424
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->initializeSelectorWheelIndices()V

    .line 1425
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1421
    :cond_1
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1071
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1072
    iget-boolean v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1075
    :cond_0
    iget-boolean v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1078
    :cond_1
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1079
    return-void
.end method

.method public setFormatter(Lcn/ktouch/lib/android/widget/KtouchNumberPicker$Formatter;)V
    .locals 1
    .parameter "formatter"

    .prologue
    .line 1148
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFormatter:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1151
    :cond_0
    iput-object p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mFormatter:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$Formatter;

    .line 1152
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->initializeSelectorWheelIndices()V

    .line 1153
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .parameter "maxValue"

    .prologue
    .line 1375
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1391
    :goto_0
    return-void

    .line 1378
    :cond_0
    if-gez p1, :cond_1

    .line 1379
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1381
    :cond_1
    iput p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    .line 1382
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1383
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    iput v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    .line 1385
    :cond_2
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1386
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1387
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->initializeSelectorWheelIndices()V

    .line 1388
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->updateInputTextView()Z

    .line 1389
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->tryComputeMaxWidth()V

    .line 1390
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate()V

    goto :goto_0

    .line 1385
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .parameter "minValue"

    .prologue
    .line 1337
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1353
    :goto_0
    return-void

    .line 1340
    :cond_0
    if-gez p1, :cond_1

    .line 1341
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1343
    :cond_1
    iput p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    .line 1344
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1345
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    iput v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mValue:I

    .line 1347
    :cond_2
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1348
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1349
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->initializeSelectorWheelIndices()V

    .line 1350
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->updateInputTextView()Z

    .line 1351
    invoke-direct {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->tryComputeMaxWidth()V

    .line 1352
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate()V

    goto :goto_0

    .line 1347
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .parameter "intervalMillis"

    .prologue
    .line 1305
    iput-wide p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLongPressUpdateInterval:J

    .line 1306
    return-void
.end method

.method public setOnScrollListener(Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 1133
    iput-object p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mOnScrollListener:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnScrollListener;

    .line 1134
    return-void
.end method

.method public setOnValueChangedListener(Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnValueChangeListener;)V
    .locals 0
    .parameter "onValueChangedListener"

    .prologue
    .line 1124
    iput-object p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mOnValueChangeListener:Lcn/ktouch/lib/android/widget/KtouchNumberPicker$OnValueChangeListener;

    .line 1125
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->setValueInternal(IZ)V

    .line 1186
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .parameter "wrapSelectorWheel"

    .prologue
    .line 1288
    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMaxValue:I

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1289
    .local v0, wrappingAllowed:Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1290
    iput-boolean p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mWrapSelectorWheel:Z

    .line 1292
    :cond_1
    return-void

    .line 1288
    .end local v0           #wrappingAllowed:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
