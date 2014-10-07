.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mEnd:I

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mRulesChanged:Z

.field private mStart:I

.field private mTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    const/16 v3, 0x16

    const/4 v2, 0x0

    const/high16 v1, -0x8000

    .line 1341
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1199
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1228
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1232
    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    .line 1233
    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    .line 1235
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1236
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1342
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/high16 v11, -0x8000

    const/16 v12, 0x16

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 1246
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1199
    new-array v7, v12, [I

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1228
    new-array v7, v12, [I

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1232
    iput v11, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    .line 1233
    iput v11, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    .line 1235
    iput-boolean v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1236
    iput-boolean v8, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1248
    sget-object v7, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1251
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1252
    .local v6, targetSdkVersion:I
    const/16 v7, 0x11

    if-lt v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v7, v9

    :goto_0
    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1255
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1257
    .local v5, rules:[I
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1259
    .local v4, initialRules:[I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 1260
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_b

    .line 1261
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 1262
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 1260
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #N:I
    .end local v2           #attr:I
    .end local v3           #i:I
    .end local v4           #initialRules:[I
    .end local v5           #rules:[I
    :cond_1
    move v7, v8

    .line 1252
    goto :goto_0

    .line 1264
    .restart local v0       #N:I
    .restart local v2       #attr:I
    .restart local v3       #i:I
    .restart local v4       #initialRules:[I
    .restart local v5       #rules:[I
    :pswitch_0
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    goto :goto_2

    .line 1267
    :pswitch_1
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v5, v8

    goto :goto_2

    .line 1270
    :pswitch_2
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v5, v9

    goto :goto_2

    .line 1273
    :pswitch_3
    const/4 v7, 0x2

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v5, v7

    goto :goto_2

    .line 1276
    :pswitch_4
    const/4 v7, 0x3

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v5, v7

    goto :goto_2

    .line 1279
    :pswitch_5
    const/4 v7, 0x4

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v5, v7

    goto :goto_2

    .line 1282
    :pswitch_6
    const/4 v7, 0x5

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v5, v7

    goto :goto_2

    .line 1285
    :pswitch_7
    const/4 v7, 0x6

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v5, v7

    goto :goto_2

    .line 1288
    :pswitch_8
    const/4 v7, 0x7

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v5, v7

    goto :goto_2

    .line 1291
    :pswitch_9
    const/16 v7, 0x8

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v5, v7

    goto :goto_2

    .line 1294
    :pswitch_a
    const/16 v11, 0x9

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v10

    :goto_3
    aput v7, v5, v11

    goto :goto_2

    :cond_2
    move v7, v8

    goto :goto_3

    .line 1297
    :pswitch_b
    const/16 v11, 0xa

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v10

    :goto_4
    aput v7, v5, v11

    goto :goto_2

    :cond_3
    move v7, v8

    goto :goto_4

    .line 1300
    :pswitch_c
    const/16 v11, 0xb

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v10

    :goto_5
    aput v7, v5, v11

    goto :goto_2

    :cond_4
    move v7, v8

    goto :goto_5

    .line 1303
    :pswitch_d
    const/16 v11, 0xc

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v10

    :goto_6
    aput v7, v5, v11

    goto/16 :goto_2

    :cond_5
    move v7, v8

    goto :goto_6

    .line 1306
    :pswitch_e
    const/16 v11, 0xd

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v10

    :goto_7
    aput v7, v5, v11

    goto/16 :goto_2

    :cond_6
    move v7, v8

    goto :goto_7

    .line 1309
    :pswitch_f
    const/16 v11, 0xe

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v10

    :goto_8
    aput v7, v5, v11

    goto/16 :goto_2

    :cond_7
    move v7, v8

    goto :goto_8

    .line 1312
    :pswitch_10
    const/16 v11, 0xf

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v10

    :goto_9
    aput v7, v5, v11

    goto/16 :goto_2

    :cond_8
    move v7, v8

    goto :goto_9

    .line 1315
    :pswitch_11
    const/16 v7, 0x10

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v5, v7

    goto/16 :goto_2

    .line 1318
    :pswitch_12
    const/16 v7, 0x11

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v5, v7

    goto/16 :goto_2

    .line 1321
    :pswitch_13
    const/16 v7, 0x12

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v5, v7

    goto/16 :goto_2

    .line 1324
    :pswitch_14
    const/16 v7, 0x13

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v5, v7

    goto/16 :goto_2

    .line 1327
    :pswitch_15
    const/16 v11, 0x14

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v10

    :goto_a
    aput v7, v5, v11

    goto/16 :goto_2

    :cond_9
    move v7, v8

    goto :goto_a

    .line 1330
    :pswitch_16
    const/16 v11, 0x15

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v10

    :goto_b
    aput v7, v5, v11

    goto/16 :goto_2

    :cond_a
    move v7, v8

    goto :goto_b

    .line 1334
    .end local v2           #attr:I
    :cond_b
    iput-boolean v9, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1335
    invoke-static {v5, v8, v4, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1337
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1338
    return-void

    .line 1262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "source"

    .prologue
    const/16 v3, 0x16

    const/4 v2, 0x0

    const/high16 v1, -0x8000

    .line 1348
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1228
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1232
    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    .line 1233
    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    .line 1235
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1236
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1349
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4
    .parameter "source"

    .prologue
    const/16 v3, 0x16

    const/4 v2, 0x0

    const/high16 v1, -0x8000

    .line 1355
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1199
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1228
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1232
    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    .line 1233
    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    .line 1235
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1236
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1356
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1198
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1198
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p1
.end method

.method static synthetic access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1198
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1198
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1198
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1198
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p1
.end method

.method static synthetic access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1198
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1198
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1198
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1198
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p1
.end method

.method static synthetic access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1198
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1198
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1198
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p1
.end method

.method static synthetic access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1198
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1198
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method private hasRelativeRules()Z
    .locals 2

    .prologue
    .line 1418
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x11

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x15

    aget v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resolveRules(I)V
    .locals 10
    .parameter "layoutDirection"

    .prologue
    const/16 v9, 0x11

    const/16 v8, 0x10

    const/16 v4, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1437
    if-ne p1, v1, :cond_c

    move v0, v1

    .line 1440
    .local v0, isLayoutRtl:Z
    :goto_0
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x16

    invoke-static {v3, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1443
    iget-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    if-eqz v3, :cond_d

    .line 1444
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x12

    aget v3, v3, v5

    if-eqz v3, :cond_1

    .line 1445
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v5, 0x5

    aget v3, v3, v5

    if-nez v3, :cond_0

    .line 1448
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v5, 0x5

    iget-object v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v7, 0x12

    aget v6, v6, v7

    aput v6, v3, v5

    .line 1450
    :cond_0
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x12

    aput v2, v3, v5

    .line 1453
    :cond_1
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x13

    aget v3, v3, v5

    if-eqz v3, :cond_3

    .line 1454
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v5, 0x7

    aget v3, v3, v5

    if-nez v3, :cond_2

    .line 1457
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v5, 0x7

    iget-object v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v7, 0x13

    aget v6, v6, v7

    aput v6, v3, v5

    .line 1459
    :cond_2
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x13

    aput v2, v3, v5

    .line 1462
    :cond_3
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_5

    .line 1463
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 1466
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v8

    aput v5, v3, v2

    .line 1468
    :cond_4
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v8

    .line 1471
    :cond_5
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v9

    if-eqz v3, :cond_7

    .line 1472
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v1

    if-nez v3, :cond_6

    .line 1475
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v9

    aput v5, v3, v1

    .line 1477
    :cond_6
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v9

    .line 1480
    :cond_7
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-eqz v1, :cond_9

    .line 1481
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    aget v1, v1, v3

    if-nez v1, :cond_8

    .line 1484
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x14

    aget v5, v5, v6

    aput v5, v1, v3

    .line 1486
    :cond_8
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aput v2, v1, v3

    .line 1489
    :cond_9
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v4

    if-nez v1, :cond_b

    .line 1490
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v4

    if-nez v1, :cond_a

    .line 1493
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x15

    aget v3, v3, v5

    aput v3, v1, v4

    .line 1495
    :cond_a
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aput v2, v1, v3

    .line 1550
    :cond_b
    :goto_1
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1551
    return-void

    .end local v0           #isLayoutRtl:Z
    :cond_c
    move v0, v2

    .line 1437
    goto/16 :goto_0

    .line 1499
    .restart local v0       #isLayoutRtl:Z
    :cond_d
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x12

    aget v3, v3, v5

    if-nez v3, :cond_e

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x13

    aget v3, v3, v5

    if-eqz v3, :cond_10

    :cond_e
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v5, 0x5

    aget v3, v3, v5

    if-nez v3, :cond_f

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v5, 0x7

    aget v3, v3, v5

    if-eqz v3, :cond_10

    .line 1502
    :cond_f
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v5, 0x5

    aput v2, v3, v5

    .line 1503
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v5, 0x7

    aput v2, v3, v5

    .line 1505
    :cond_10
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x12

    aget v3, v3, v5

    if-eqz v3, :cond_11

    .line 1507
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1e

    const/4 v3, 0x7

    :goto_2
    iget-object v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v7, 0x12

    aget v6, v6, v7

    aput v6, v5, v3

    .line 1508
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x12

    aput v2, v3, v5

    .line 1510
    :cond_11
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x13

    aget v3, v3, v5

    if-eqz v3, :cond_12

    .line 1512
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1f

    const/4 v3, 0x5

    :goto_3
    iget-object v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v7, 0x13

    aget v6, v6, v7

    aput v6, v5, v3

    .line 1513
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x13

    aput v2, v3, v5

    .line 1516
    :cond_12
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-nez v3, :cond_13

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v9

    if-eqz v3, :cond_15

    :cond_13
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v2

    if-nez v3, :cond_14

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v1

    if-eqz v3, :cond_15

    .line 1519
    :cond_14
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v2

    .line 1520
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v1

    .line 1522
    :cond_15
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_16

    .line 1524
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_20

    move v3, v1

    :goto_4
    iget-object v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v8

    aput v6, v5, v3

    .line 1525
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v8

    .line 1527
    :cond_16
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v9

    if-eqz v3, :cond_18

    .line 1529
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_17

    move v1, v2

    :cond_17
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v9

    aput v5, v3, v1

    .line 1530
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v9

    .line 1533
    :cond_18
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-nez v1, :cond_19

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_1b

    :cond_19
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    aget v1, v1, v3

    if-nez v1, :cond_1a

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v4

    if-eqz v1, :cond_1b

    .line 1536
    :cond_1a
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    aput v2, v1, v3

    .line 1537
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v4

    .line 1539
    :cond_1b
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-eqz v1, :cond_1c

    .line 1541
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_21

    move v1, v4

    :goto_5
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x14

    aget v5, v5, v6

    aput v5, v3, v1

    .line 1542
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aput v2, v1, v3

    .line 1544
    :cond_1c
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_b

    .line 1546
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1d

    const/16 v4, 0x9

    :cond_1d
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x15

    aget v3, v3, v5

    aput v3, v1, v4

    .line 1547
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aput v2, v1, v3

    goto/16 :goto_1

    .line 1507
    :cond_1e
    const/4 v3, 0x5

    goto/16 :goto_2

    .line 1512
    :cond_1f
    const/4 v3, 0x7

    goto/16 :goto_3

    :cond_20
    move v3, v2

    .line 1524
    goto/16 :goto_4

    .line 1541
    :cond_21
    const/16 v1, 0x9

    goto :goto_5
.end method


# virtual methods
.method public addRule(I)V
    .locals 2
    .parameter "verb"

    .prologue
    const/4 v1, -0x1

    .line 1377
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v0, p1

    .line 1378
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput v1, v0, p1

    .line 1379
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1380
    return-void
.end method

.method public addRule(II)V
    .locals 1
    .parameter "verb"
    .parameter "anchor"

    .prologue
    .line 1397
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 1398
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    .line 1399
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1400
    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "output"

    .prologue
    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRules()[I
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public getRules(I)[I
    .locals 1
    .parameter "layoutDirection"

    .prologue
    .line 1568
    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1570
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1571
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1572
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setLayoutDirection(I)V

    .line 1575
    :cond_1
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public removeRule(I)V
    .locals 2
    .parameter "verb"

    .prologue
    const/4 v1, 0x0

    .line 1412
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v0, p1

    .line 1413
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput v1, v0, p1

    .line 1414
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1415
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 3
    .parameter "layoutDirection"

    .prologue
    const/high16 v2, -0x8000

    .line 1592
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->isLayoutRtl()Z

    move-result v0

    .line 1593
    .local v0, isLayoutRtl:Z
    if-eqz v0, :cond_3

    .line 1594
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    .line 1595
    :cond_0
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    .line 1601
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v1

    if-eq p1, v1, :cond_2

    .line 1602
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1605
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1606
    return-void

    .line 1597
    :cond_3
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mStart:I

    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    .line 1598
    :cond_4
    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mEnd:I

    iput v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    goto :goto_0
.end method
