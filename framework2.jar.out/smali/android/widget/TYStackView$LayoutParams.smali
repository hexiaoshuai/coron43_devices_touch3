.class Landroid/widget/TYStackView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "TYStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TYStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutParams"
.end annotation


# instance fields
.field private final globalInvalidateRect:Landroid/graphics/Rect;

.field horizontalOffset:I

.field private final invalidateRect:Landroid/graphics/Rect;

.field private final invalidateRectf:Landroid/graphics/RectF;

.field mView:Landroid/view/View;

.field private final parentRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/TYStackView;

.field verticalOffset:I


# direct methods
.method constructor <init>(Landroid/widget/TYStackView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 1302
    iput-object p1, p0, Landroid/widget/TYStackView$LayoutParams;->this$0:Landroid/widget/TYStackView;

    .line 1303
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1288
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1290
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1291
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1304
    iput v1, p0, Landroid/widget/TYStackView$LayoutParams;->horizontalOffset:I

    .line 1305
    iput v1, p0, Landroid/widget/TYStackView$LayoutParams;->verticalOffset:I

    .line 1306
    iput v1, p0, Landroid/widget/TYStackView$LayoutParams;->width:I

    .line 1307
    iput v1, p0, Landroid/widget/TYStackView$LayoutParams;->height:I

    .line 1308
    return-void
.end method

.method constructor <init>(Landroid/widget/TYStackView;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 1293
    iput-object p1, p0, Landroid/widget/TYStackView$LayoutParams;->this$0:Landroid/widget/TYStackView;

    .line 1294
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1288
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1290
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1291
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1295
    iput v1, p0, Landroid/widget/TYStackView$LayoutParams;->width:I

    .line 1296
    iput v1, p0, Landroid/widget/TYStackView$LayoutParams;->height:I

    .line 1297
    iput v1, p0, Landroid/widget/TYStackView$LayoutParams;->horizontalOffset:I

    .line 1298
    iput v1, p0, Landroid/widget/TYStackView$LayoutParams;->verticalOffset:I

    .line 1299
    iput-object p2, p0, Landroid/widget/TYStackView$LayoutParams;->mView:Landroid/view/View;

    .line 1300
    return-void
.end method


# virtual methods
.method getInvalidateRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8
    .parameter "v"
    .parameter "r"

    .prologue
    const/4 v5, 0x0

    .line 1312
    iget-object v2, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1313
    iget-object v2, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/TYStackView$LayoutParams;->this$0:Landroid/widget/TYStackView;

    invoke-virtual {v3}, Landroid/widget/TYStackView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/TYStackView$LayoutParams;->this$0:Landroid/widget/TYStackView;

    invoke-virtual {v4}, Landroid/widget/TYStackView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1314
    move-object v1, p1

    .line 1315
    .local v1, p:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    const/4 v0, 0x1

    .line 1318
    .local v0, firstPass:Z
    iget-object v2, p0, Landroid/widget/TYStackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1320
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TYStackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1321
    if-nez v0, :cond_2

    .line 1322
    iget-object v2, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1325
    :cond_2
    const/4 v0, 0x0

    .line 1326
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #p:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 1327
    .restart local v1       #p:Landroid/view/View;
    iget-object v2, p0, Landroid/widget/TYStackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1329
    iget-object v2, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_1

    .line 1333
    :cond_3
    iget-object v2, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/TYStackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0
.end method

.method resetInvalidateRect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1342
    iget-object v0, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1343
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .parameter "newHorizontalOffset"

    .prologue
    .line 1351
    iget v0, p0, Landroid/widget/TYStackView$LayoutParams;->verticalOffset:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/TYStackView$LayoutParams;->setOffsets(II)V

    .line 1352
    return-void
.end method

.method public setOffsets(II)V
    .locals 15
    .parameter "newHorizontalOffset"
    .parameter "newVerticalOffset"

    .prologue
    .line 1355
    iget v9, p0, Landroid/widget/TYStackView$LayoutParams;->horizontalOffset:I

    sub-int v2, p1, v9

    .line 1356
    .local v2, horizontalOffsetDelta:I
    move/from16 v0, p1

    iput v0, p0, Landroid/widget/TYStackView$LayoutParams;->horizontalOffset:I

    .line 1357
    iget v9, p0, Landroid/widget/TYStackView$LayoutParams;->verticalOffset:I

    sub-int v6, p2, v9

    .line 1358
    .local v6, verticalOffsetDelta:I
    move/from16 v0, p2

    iput v0, p0, Landroid/widget/TYStackView$LayoutParams;->verticalOffset:I

    .line 1360
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->mView:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 1361
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 1362
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/2addr v9, v2

    iget-object v10, p0, Landroid/widget/TYStackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1363
    .local v3, left:I
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    add-int/2addr v9, v2

    iget-object v10, p0, Landroid/widget/TYStackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1364
    .local v4, right:I
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Landroid/widget/TYStackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1365
    .local v5, top:I
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Landroid/widget/TYStackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1367
    .local v1, bottom:I
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    int-to-float v10, v3

    int-to-float v11, v5

    int-to-float v12, v4

    int-to-float v13, v1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1369
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    neg-float v7, v9

    .line 1370
    .local v7, xoffset:F
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    neg-float v8, v9

    .line 1371
    .local v8, yoffset:F
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 1372
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1373
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    neg-float v10, v7

    neg-float v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 1375
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    iget-object v11, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    iget-object v12, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    iget-object v13, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1380
    iget-object v9, p0, Landroid/widget/TYStackView$LayoutParams;->mView:Landroid/view/View;

    iget-object v10, p0, Landroid/widget/TYStackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9, v10}, Landroid/widget/TYStackView$LayoutParams;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1382
    .end local v1           #bottom:I
    .end local v3           #left:I
    .end local v4           #right:I
    .end local v5           #top:I
    .end local v7           #xoffset:F
    .end local v8           #yoffset:F
    :cond_0
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .parameter "newVerticalOffset"

    .prologue
    .line 1347
    iget v0, p0, Landroid/widget/TYStackView$LayoutParams;->horizontalOffset:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/TYStackView$LayoutParams;->setOffsets(II)V

    .line 1348
    return-void
.end method
