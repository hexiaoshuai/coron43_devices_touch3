.class Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
.super Ljava/lang/Object;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedDefaultNetworkSet"
.end annotation


# instance fields
.field private final MAX_SIMULTANEOUS_DEFAULTS:I

.field private mDefaultNetworks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;


# direct methods
.method public constructor <init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 2968
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2964
    iput v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->MAX_SIMULTANEOUS_DEFAULTS:I

    .line 2969
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->mDefaultNetworks:Ljava/util/Collection;

    .line 2970
    return-void
.end method


# virtual methods
.method public add(I)Z
    .locals 5
    .parameter "i"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2977
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 2979
    .local v0, j:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->mDefaultNetworks:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 2983
    :cond_0
    :goto_0
    return v1

    .line 2981
    :cond_1
    if-eq p1, v2, :cond_2

    if-nez p1, :cond_0

    .line 2982
    :cond_2
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->mDefaultNetworks:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    .line 2983
    :cond_3
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->mDefaultNetworks:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 3008
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->mDefaultNetworks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 3009
    return-void
.end method

.method public contains(I)Z
    .locals 2
    .parameter "i"

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->mDefaultNetworks:Ljava/util/Collection;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getActiveDefaults()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3004
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->mDefaultNetworks:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isHigherPriorityNetwork(I)Z
    .locals 8
    .parameter "i"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2995
    const/4 v1, 0x0

    .line 2996
    .local v1, res:I
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->mDefaultNetworks:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3000
    :goto_0
    return v4

    .line 2997
    :cond_0
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->mDefaultNetworks:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2998
    .local v2, type:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/net/NetworkConfig;->priority:I

    iget-object v6, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v6, v6, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v6, v6, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    iget v6, v6, Landroid/net/NetworkConfig;->priority:I

    if-le v3, v6, :cond_1

    move v3, v4

    :goto_2
    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_2

    .line 3000
    .end local v2           #type:Ljava/lang/Integer;
    :cond_2
    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->mDefaultNetworks:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v1, v3, :cond_3

    move v5, v4

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public remove(I)Z
    .locals 2
    .parameter "i"

    .prologue
    .line 2987
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->mDefaultNetworks:Ljava/util/Collection;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->mDefaultNetworks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
