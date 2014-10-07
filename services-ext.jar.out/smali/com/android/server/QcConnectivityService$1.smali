.class Lcom/android/server/QcConnectivityService$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/QcConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/QcConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$1;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceClassDataActivityChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter "label"
    .parameter "active"

    .prologue
    .line 1173
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1174
    .local v0, deviceType:I
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$1;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->sendDataActivityBroadcast(IZ)V
    invoke-static {v1, v0, p2}, Lcom/android/server/QcConnectivityService;->access$200(Lcom/android/server/QcConnectivityService;IZ)V

    .line 1175
    return-void
.end method
