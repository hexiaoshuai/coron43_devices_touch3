.class Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;
.super Landroid/view/HardwareRenderer$GraphDataProvider;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer$GlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawPerformanceDataProvider"
.end annotation


# instance fields
.field private final mGraphType:I

.field private mHorizontalMargin:I

.field private mHorizontalUnit:I

.field private mThresholdStroke:I

.field private mVerticalUnit:I

.field final synthetic this$0:Landroid/view/HardwareRenderer$GlRenderer;


# direct methods
.method constructor <init>(Landroid/view/HardwareRenderer$GlRenderer;I)V
    .locals 0
    .parameter
    .parameter "graphType"

    .prologue
    .line 1618
    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    invoke-direct {p0, p1}, Landroid/view/HardwareRenderer$GraphDataProvider;-><init>(Landroid/view/HardwareRenderer;)V

    .line 1619
    iput p2, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mGraphType:I

    .line 1620
    return-void
.end method


# virtual methods
.method getCurrentFrame()I
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method getData()[F
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    return-object v0
.end method

.method getElementCount()I
    .locals 1

    .prologue
    .line 1669
    const/4 v0, 0x3

    return v0
.end method

.method getFrameCount()I
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method getGraphType()I
    .locals 1

    .prologue
    .line 1634
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mGraphType:I

    return v0
.end method

.method getHorizontaUnitMargin()I
    .locals 1

    .prologue
    .line 1649
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mHorizontalMargin:I

    return v0
.end method

.method getHorizontalUnitSize()I
    .locals 1

    .prologue
    .line 1644
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mHorizontalUnit:I

    return v0
.end method

.method getThreshold()F
    .locals 1

    .prologue
    .line 1659
    const/high16 v0, 0x4180

    return v0
.end method

.method getVerticalUnitSize()I
    .locals 1

    .prologue
    .line 1639
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mVerticalUnit:I

    return v0
.end method

.method prepare(Landroid/util/DisplayMetrics;)V
    .locals 2
    .parameter "metrics"

    .prologue
    .line 1624
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 1626
    .local v0, density:F
    const/4 v1, 0x7

    #calls: Landroid/view/HardwareRenderer$GlRenderer;->dpToPx(IF)I
    invoke-static {v1, v0}, Landroid/view/HardwareRenderer$GlRenderer;->access$300(IF)I

    move-result v1

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mVerticalUnit:I

    .line 1627
    const/4 v1, 0x3

    #calls: Landroid/view/HardwareRenderer$GlRenderer;->dpToPx(IF)I
    invoke-static {v1, v0}, Landroid/view/HardwareRenderer$GlRenderer;->access$300(IF)I

    move-result v1

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mHorizontalUnit:I

    .line 1628
    const/4 v1, 0x0

    #calls: Landroid/view/HardwareRenderer$GlRenderer;->dpToPx(IF)I
    invoke-static {v1, v0}, Landroid/view/HardwareRenderer$GlRenderer;->access$300(IF)I

    move-result v1

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mHorizontalMargin:I

    .line 1629
    const/4 v1, 0x2

    #calls: Landroid/view/HardwareRenderer$GlRenderer;->dpToPx(IF)I
    invoke-static {v1, v0}, Landroid/view/HardwareRenderer$GlRenderer;->access$300(IF)I

    move-result v1

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mThresholdStroke:I

    .line 1630
    return-void
.end method

.method setupCurrentFramePaint(Landroid/graphics/Paint;)V
    .locals 2
    .parameter "paint"

    .prologue
    .line 1691
    const v0, -0x30a055b3

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1692
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mGraphType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mThresholdStroke:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1693
    :cond_0
    return-void
.end method

.method setupGraphPaint(Landroid/graphics/Paint;I)V
    .locals 2
    .parameter "paint"
    .parameter "elementIndex"

    .prologue
    .line 1679
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->access$400()[I

    move-result-object v0

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1680
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mGraphType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mThresholdStroke:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1681
    :cond_0
    return-void
.end method

.method setupThresholdPaint(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "paint"

    .prologue
    .line 1685
    const v0, -0xa055b3

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1686
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mThresholdStroke:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1687
    return-void
.end method
