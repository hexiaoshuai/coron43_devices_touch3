.class Landroid/widget/TYStackView$HolographicHelper;
.super Ljava/lang/Object;
.source "TYStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TYStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HolographicHelper"
.end annotation


# static fields
.field private static final CLICK_FEEDBACK:I = 0x1

.field private static final RES_OUT:I


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mDensity:F

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;

.field private final mIdentityMatrix:Landroid/graphics/Matrix;

.field private mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mMaskCanvas:Landroid/graphics/Canvas;

.field private mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mTmpXY:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 1399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1386
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 1387
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 1388
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 1394
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    .line 1395
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 1396
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mTmpXY:[I

    .line 1397
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mIdentityMatrix:Landroid/graphics/Matrix;

    .line 1400
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mDensity:F

    .line 1402
    iget-object v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1403
    iget-object v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1404
    iget-object v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1405
    iget-object v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1407
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x4000

    iget v2, p0, Landroid/widget/TYStackView$HolographicHelper;->mDensity:F

    mul-float/2addr v1, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 1408
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x4080

    iget v2, p0, Landroid/widget/TYStackView$HolographicHelper;->mDensity:F

    mul-float/2addr v1, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Landroid/widget/TYStackView$HolographicHelper;->mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 1409
    return-void
.end method


# virtual methods
.method createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "v"
    .parameter "color"

    .prologue
    .line 1412
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/TYStackView$HolographicHelper;->createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "v"
    .parameter "type"
    .parameter "color"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 1420
    iget-object v6, p0, Landroid/widget/TYStackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1421
    if-nez p2, :cond_2

    .line 1422
    iget-object v6, p0, Landroid/widget/TYStackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/TYStackView$HolographicHelper;->mSmallBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1427
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    move-object v0, v5

    .line 1451
    :goto_1
    return-object v0

    .line 1423
    :cond_2
    const/4 v6, 0x1

    if-ne p2, v6, :cond_0

    .line 1424
    iget-object v6, p0, Landroid/widget/TYStackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/TYStackView$HolographicHelper;->mLargeBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 1431
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1433
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v6, p0, Landroid/widget/TYStackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1435
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v2

    .line 1436
    .local v2, rotationX:F
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    .line 1437
    .local v1, rotation:F
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 1438
    .local v4, translationY:F
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 1439
    .local v3, translationX:F
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    .line 1440
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1441
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1442
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1443
    iget-object v6, p0, Landroid/widget/TYStackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1444
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationX(F)V

    .line 1445
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1446
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1447
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1449
    iget-object v6, p0, Landroid/widget/TYStackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v6, v0}, Landroid/widget/TYStackView$HolographicHelper;->drawOutline(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 1450
    iget-object v6, p0, Landroid/widget/TYStackView$HolographicHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "v"
    .parameter "color"

    .prologue
    .line 1416
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/TYStackView$HolographicHelper;->createOutline(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method drawOutline(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "dest"
    .parameter "src"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1455
    iget-object v1, p0, Landroid/widget/TYStackView$HolographicHelper;->mTmpXY:[I

    .line 1456
    .local v1, xy:[I
    iget-object v2, p0, Landroid/widget/TYStackView$HolographicHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1457
    .local v0, mask:Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/widget/TYStackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1458
    iget-object v2, p0, Landroid/widget/TYStackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    aget v3, v1, v6

    neg-int v3, v3

    int-to-float v3, v3

    aget v4, v1, v7

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/TYStackView$HolographicHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1459
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1460
    iget-object v2, p0, Landroid/widget/TYStackView$HolographicHelper;->mIdentityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1461
    aget v2, v1, v6

    int-to-float v2, v2

    aget v3, v1, v7

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/TYStackView$HolographicHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1462
    iget-object v2, p0, Landroid/widget/TYStackView$HolographicHelper;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1463
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1464
    return-void
.end method
