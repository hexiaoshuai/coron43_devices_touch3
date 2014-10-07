.class Lcom/android/server/QcConnectivityService$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 2200
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$3;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$3;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/QcConnectivityService;->updateLockdownVpn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2206
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$3;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2208
    :cond_0
    return-void
.end method
