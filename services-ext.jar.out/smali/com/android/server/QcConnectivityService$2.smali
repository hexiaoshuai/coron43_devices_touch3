.class Lcom/android/server/QcConnectivityService$2;
.super Landroid/net/INetworkPolicyListener$Stub;
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
    .line 1734
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$2;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 6
    .parameter "meteredIfaces"

    .prologue
    .line 1760
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$2;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$500(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1761
    :try_start_0
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$2;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$700(Lcom/android/server/QcConnectivityService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1762
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1763
    .local v2, iface:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$2;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$700(Lcom/android/server/QcConnectivityService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1762
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1765
    .end local v2           #iface:Ljava/lang/String;
    :cond_0
    monitor-exit v5

    .line 1766
    return-void

    .line 1765
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 4
    .parameter "restrictBackground"

    .prologue
    .line 1777
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$2;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v1

    .line 1778
    .local v1, networkType:I
    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1779
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$2;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    aget-object v2, v3, v1

    .line 1780
    .local v2, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v2, :cond_0

    .line 1781
    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1782
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1783
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$2;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-virtual {v3, v0}, Lcom/android/server/QcConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 1787
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v2           #tracker:Landroid/net/NetworkStateTracker;
    :cond_0
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 4
    .parameter "uid"
    .parameter "uidRules"

    .prologue
    .line 1742
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$2;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$500(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1744
    :try_start_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$2;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mUidRules:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$600(Lcom/android/server/QcConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1745
    .local v0, oldRules:I
    if-ne v0, p2, :cond_0

    monitor-exit v2

    .line 1751
    :goto_0
    return-void

    .line 1747
    :cond_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$2;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mUidRules:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$600(Lcom/android/server/QcConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1748
    monitor-exit v2

    goto :goto_0

    .end local v0           #oldRules:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
