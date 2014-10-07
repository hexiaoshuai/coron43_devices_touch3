.class final Lcom/android/server/QcConnectivityService$RouteAttributes;
.super Ljava/lang/Object;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAttributes"
.end annotation


# instance fields
.field private metric:I

.field private tableId:I

.field final synthetic this$0:Lcom/android/server/QcConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/QcConnectivityService;)V
    .locals 1
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    invoke-static {p1}, Lcom/android/server/QcConnectivityService;->access$004(Lcom/android/server/QcConnectivityService;)I

    move-result v0

    iput v0, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->tableId:I

    .line 461
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->metric:I

    .line 462
    return-void
.end method


# virtual methods
.method public getMetric()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->metric:I

    return v0
.end method

.method public getTableId()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->tableId:I

    return v0
.end method

.method public setMetric(I)V
    .locals 0
    .parameter "m"

    .prologue
    .line 473
    iput p1, p0, Lcom/android/server/QcConnectivityService$RouteAttributes;->metric:I

    .line 474
    return-void
.end method
