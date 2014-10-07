.class public abstract Landroid/widget/TYAdapterViewAnimator;
.super Landroid/widget/AdapterViewAnimator;
.source "TYAdapterViewAnimator.java"

# interfaces
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/Advanceable;


# static fields
.field public static ROTATION_ITEM:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "TYRemoteViewAnimator"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/high16 v0, 0x40c0

    sput v0, Landroid/widget/TYAdapterViewAnimator;->ROTATION_ITEM:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method private addChild(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 187
    invoke-virtual {p0, p1}, Landroid/widget/TYAdapterViewAnimator;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Landroid/widget/TYAdapterViewAnimator;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 192
    iget v1, p0, Landroid/widget/TYAdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/TYAdapterViewAnimator;->mReferenceChildHeight:I

    if-ne v1, v2, :cond_1

    .line 193
    :cond_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 194
    .local v0, measureSpec:I
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/TYAdapterViewAnimator;->mReferenceChildWidth:I

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/TYAdapterViewAnimator;->mReferenceChildHeight:I

    .line 198
    .end local v0           #measureSpec:I
    :cond_1
    return-void
.end method


# virtual methods
.method showOnly(IZ)V
    .locals 34
    .parameter "childIndex"
    .parameter "animate"

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v4, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TYAdapterViewAnimator;->getCount()I

    move-result v11

    .line 56
    .local v11, adapterCount:I
    if-eqz v11, :cond_0

    .line 58
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_3

    .line 59
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TYAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v30, v0

    .line 60
    .local v30, viewToRemove:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TYAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->clearAnimation()V

    .line 62
    move-object/from16 v0, v30

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object/from16 v28, v30

    .line 63
    check-cast v28, Landroid/view/ViewGroup;

    .line 64
    .local v28, vg:Landroid/view/ViewGroup;
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 68
    .end local v28           #vg:Landroid/view/ViewGroup;
    :cond_2
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Landroid/widget/TYAdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TYAdapterViewAnimator;->removeViewInLayout(Landroid/view/View;)V

    .line 58
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 72
    .end local v30           #viewToRemove:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 73
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TYAdapterViewAnimator;->mActiveOffset:I

    sub-int v22, p1, v4

    .line 74
    .local v22, newWindowStartUnbounded:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TYAdapterViewAnimator;->getNumActiveViews()I

    move-result v4

    add-int v4, v4, v22

    add-int/lit8 v20, v4, -0x1

    .line 75
    .local v20, newWindowEndUnbounded:I
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 76
    .local v21, newWindowStart:I
    add-int/lit8 v4, v11, -0x1

    move/from16 v0, v20

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 78
    .local v19, newWindowEnd:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TYAdapterViewAnimator;->mLoopViews:Z

    if-eqz v4, :cond_4

    .line 79
    move/from16 v21, v22

    .line 80
    move/from16 v19, v20

    .line 82
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TYAdapterViewAnimator;->getWindowSize()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/widget/TYAdapterViewAnimator;->modulo(II)I

    move-result v26

    .line 83
    .local v26, rangeStart:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TYAdapterViewAnimator;->getWindowSize()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/widget/TYAdapterViewAnimator;->modulo(II)I

    move-result v25

    .line 85
    .local v25, rangeEnd:I
    const/16 v31, 0x0

    .line 86
    .local v31, wrap:Z
    move/from16 v0, v26

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    .line 87
    const/16 v31, 0x1

    .line 94
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 95
    .local v17, index:Ljava/lang/Integer;
    const/16 v27, 0x0

    .line 96
    .local v27, remove:Z
    if-nez v31, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v26

    if-lt v4, v0, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v25

    if-le v4, v0, :cond_9

    .line 97
    :cond_7
    const/16 v27, 0x1

    .line 102
    :cond_8
    :goto_3
    if-eqz v27, :cond_6

    .line 103
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v24, v0

    .line 104
    .local v24, previousView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v23, v0

    .line 106
    .local v23, oldRelativeIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, p2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TYAdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_2

    .line 98
    .end local v23           #oldRelativeIndex:I
    .end local v24           #previousView:Landroid/view/View;
    :cond_9
    if-eqz v31, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v25

    if-le v4, v0, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v26

    if-ge v4, v0, :cond_8

    .line 99
    const/16 v27, 0x1

    goto :goto_3

    .line 112
    .end local v17           #index:Ljava/lang/Integer;
    .end local v27           #remove:Z
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TYAdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v0, v21

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TYAdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v0, v19

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TYAdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    move/from16 v0, v22

    if-eq v0, v4, :cond_11

    .line 115
    :cond_b
    move/from16 v14, v21

    :goto_4
    move/from16 v0, v19

    if-gt v14, v0, :cond_10

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TYAdapterViewAnimator;->getWindowSize()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Landroid/widget/TYAdapterViewAnimator;->modulo(II)I

    move-result v17

    .line 119
    .local v17, index:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v23, v0

    .line 124
    .restart local v23       #oldRelativeIndex:I
    :goto_5
    sub-int v7, v14, v22

    .line 129
    .local v7, newRelativeIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/16 v16, 0x1

    .line 131
    .local v16, inOldRange:Z
    :goto_6
    if-eqz v16, :cond_e

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v29, v0

    .line 133
    .local v29, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iput v7, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Landroid/widget/TYAdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 135
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v29

    move/from16 v3, p2

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/widget/TYAdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    .line 171
    .end local v29           #view:Landroid/view/View;
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v4, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 115
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 122
    .end local v7           #newRelativeIndex:I
    .end local v16           #inOldRange:Z
    .end local v23           #oldRelativeIndex:I
    :cond_c
    const/16 v23, -0x1

    .restart local v23       #oldRelativeIndex:I
    goto :goto_5

    .line 129
    .restart local v7       #newRelativeIndex:I
    :cond_d
    const/16 v16, 0x0

    goto :goto_6

    .line 140
    .restart local v16       #inOldRange:Z
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Landroid/widget/TYAdapterViewAnimator;->modulo(II)I

    move-result v8

    .line 141
    .local v8, adapterPosition:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-interface {v4, v8, v5, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 142
    .local v18, newView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4, v8}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v9

    .line 146
    .local v9, itemId:J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TYAdapterViewAnimator;->getFrameForChild()Landroid/widget/FrameLayout;

    move-result-object v6

    .line 149
    .local v6, fl:Landroid/widget/FrameLayout;
    if-eqz v18, :cond_f

    .line 150
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 153
    :cond_f
    rem-int/lit8 v4, v8, 0x3

    packed-switch v4, :pswitch_data_0

    .line 161
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 165
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TYAdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    new-instance v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/TYAdapterViewAnimator;->addChild(Landroid/view/View;)V

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/widget/TYAdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    .line 169
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v7, v6, v1}, Landroid/widget/TYAdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_7

    .line 155
    :pswitch_0
    sget v4, Landroid/widget/TYAdapterViewAnimator;->ROTATION_ITEM:F

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_8

    .line 158
    :pswitch_1
    const/high16 v4, 0x43b4

    sget v5, Landroid/widget/TYAdapterViewAnimator;->ROTATION_ITEM:F

    sub-float/2addr v4, v5

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_8

    .line 173
    .end local v6           #fl:Landroid/widget/FrameLayout;
    .end local v7           #newRelativeIndex:I
    .end local v8           #adapterPosition:I
    .end local v9           #itemId:J
    .end local v16           #inOldRange:Z
    .end local v17           #index:I
    .end local v18           #newView:Landroid/view/View;
    .end local v23           #oldRelativeIndex:I
    :cond_10
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TYAdapterViewAnimator;->mCurrentWindowStart:I

    .line 174
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TYAdapterViewAnimator;->mCurrentWindowEnd:I

    .line 175
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TYAdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v4, :cond_11

    .line 177
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TYAdapterViewAnimator;->mCurrentWindowStart:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Landroid/widget/TYAdapterViewAnimator;->modulo(II)I

    move-result v13

    .line 178
    .local v13, adapterStart:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TYAdapterViewAnimator;->mCurrentWindowEnd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Landroid/widget/TYAdapterViewAnimator;->modulo(II)I

    move-result v12

    .line 179
    .local v12, adapterEnd:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TYAdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v4, v13, v12}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 182
    .end local v12           #adapterEnd:I
    .end local v13           #adapterStart:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TYAdapterViewAnimator;->requestLayout()V

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TYAdapterViewAnimator;->invalidate()V

    goto/16 :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
