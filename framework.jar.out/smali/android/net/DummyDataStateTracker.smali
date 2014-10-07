.class public Landroid/net/DummyDataStateTracker;
.super Ljava/lang/Object;
.source "DummyDataStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "DummyDataStateTracker"

.field private static final VDBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultRouteSet:Z

.field private mIsDefaultOrHipri:Z

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Z

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "netType"
    .parameter "tag"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mTeardownRequested:Z

    .line 44
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 45
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mDefaultRouteSet:Z

    .line 49
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mIsDefaultOrHipri:Z

    .line 57
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(I)V

    iput-object v0, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 58
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 229
    const-string v0, "DummyDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 233
    const-string v0, "DummyDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDetailed state, old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/DummyDataStateTracker;->log(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Landroid/net/DummyDataStateTracker;->mTarget:Landroid/os/Handler;

    const/high16 v2, 0x7

    iget-object v3, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 149
    return-void
.end method


# virtual methods
.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .parameter "link"

    .prologue
    .line 215
    iget-object v0, p0, Landroid/net/DummyDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)V

    .line 216
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 0
    .parameter "isCaptivePortal"

    .prologue
    .line 131
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 88
    iput-boolean p1, p0, Landroid/net/DummyDataStateTracker;->mDefaultRouteSet:Z

    .line 89
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/DummyDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/DummyDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string/jumbo v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 76
    iput-boolean p1, p0, Landroid/net/DummyDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 77
    return-void
.end method

.method public reconnect()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "enabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "enabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/DummyDataStateTracker;->setTeardownRequested(Z)V

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .parameter "link"

    .prologue
    .line 220
    iget-object v0, p0, Landroid/net/DummyDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)V

    .line 221
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
    .line 211
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 187
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 0
    .parameter "isRequested"

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/net/DummyDataStateTracker;->mTeardownRequested:Z

    .line 153
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 182
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "target"

    .prologue
    .line 67
    iput-object p2, p0, Landroid/net/DummyDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Landroid/net/DummyDataStateTracker;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 0
    .parameter "messenger"

    .prologue
    .line 226
    return-void
.end method

.method public teardown()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "disabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "disabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Dummy data state: none, dummy!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
