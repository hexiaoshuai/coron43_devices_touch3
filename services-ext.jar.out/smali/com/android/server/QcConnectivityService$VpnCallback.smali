.class public Lcom/android/server/QcConnectivityService$VpnCallback;
.super Lcom/android/server/ConnectivityService$VpnCallback;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VpnCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/QcConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/QcConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 5131
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 5134
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$20500(Lcom/android/server/QcConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x72

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5135
    return-void
.end method

.method public override(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5138
    .local p1, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, searchDomains:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 5139
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$VpnCallback;->restore()V

    .line 5182
    :goto_0
    return-void

    .line 5144
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5145
    .local v1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5148
    .local v0, address:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5149
    :catch_0
    move-exception v6

    goto :goto_1

    .line 5153
    .end local v0           #address:Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5154
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$VpnCallback;->restore()V

    goto :goto_0

    .line 5159
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5160
    .local v2, buffer:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3

    .line 5161
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5162
    .local v3, domain:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5165
    .end local v3           #domain:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 5168
    .local v4, domains:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/QcConnectivityService;->access$13500(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 5169
    :try_start_1
    iget-object v6, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const-string v8, "VPN"

    const-string v9, "VPN"

    #calls: Lcom/android/server/QcConnectivityService;->updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    invoke-static {v6, v8, v9, v1, v4}, Lcom/android/server/QcConnectivityService;->access$20600(Lcom/android/server/QcConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    .line 5170
    iget-object v6, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const/4 v8, 0x1

    #setter for: Lcom/android/server/QcConnectivityService;->mDnsOverridden:Z
    invoke-static {v6, v8}, Lcom/android/server/QcConnectivityService;->access$13602(Lcom/android/server/QcConnectivityService;Z)Z

    .line 5171
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5174
    iget-object v6, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mProxyLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/QcConnectivityService;->access$20700(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 5175
    :try_start_2
    iget-object v6, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const/4 v8, 0x1

    #setter for: Lcom/android/server/QcConnectivityService;->mDefaultProxyDisabled:Z
    invoke-static {v6, v8}, Lcom/android/server/QcConnectivityService;->access$20802(Lcom/android/server/QcConnectivityService;Z)Z

    .line 5176
    iget-object v6, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;
    invoke-static {v6}, Lcom/android/server/QcConnectivityService;->access$20900(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v6}, Lcom/android/server/QcConnectivityService;->access$21000(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 5177
    iget-object v6, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const/4 v8, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    invoke-static {v6, v8}, Lcom/android/server/QcConnectivityService;->access$21100(Lcom/android/server/QcConnectivityService;Landroid/net/ProxyProperties;)V

    .line 5179
    :cond_4
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 5171
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 5185
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13500(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5186
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDnsOverridden:Z
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13600(Lcom/android/server/QcConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5187
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/QcConnectivityService;->mDnsOverridden:Z
    invoke-static {v0, v2}, Lcom/android/server/QcConnectivityService;->access$13602(Lcom/android/server/QcConnectivityService;Z)Z

    .line 5188
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$20500(Lcom/android/server/QcConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x6f

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5190
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5191
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mProxyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$20700(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5192
    :try_start_1
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/QcConnectivityService;->mDefaultProxyDisabled:Z
    invoke-static {v0, v2}, Lcom/android/server/QcConnectivityService;->access$20802(Lcom/android/server/QcConnectivityService;Z)Z

    .line 5193
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$20900(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$21000(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5194
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$21000(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    invoke-static {v0, v2}, Lcom/android/server/QcConnectivityService;->access$21100(Lcom/android/server/QcConnectivityService;Landroid/net/ProxyProperties;)V

    .line 5196
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5197
    return-void

    .line 5190
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5196
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
