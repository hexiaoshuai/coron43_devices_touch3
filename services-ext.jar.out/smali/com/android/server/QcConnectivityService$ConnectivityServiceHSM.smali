.class final Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;
.super Lcom/android/internal/util/StateMachine;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectivityServiceHSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;,
        Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$WifiDefaultState;,
        Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$MobileDefaultState;,
        Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;,
        Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;,
        Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    }
.end annotation


# static fields
.field static final HSM_EVENT_ENFORCE_PREFERENCE:I = 0x1390

.field static final HSM_EVENT_RESTORE_DNS:I = 0x1391

.field static final HSM_HANDLE_CAPTIVE_PORTAL_CHECK:I = 0x1392

.field static final HSM_HANDLE_CONNECT:I = 0x1389

.field static final HSM_HANDLE_CONNECTION_FAILURE:I = 0x138d

.field static final HSM_HANDLE_CONNECTIVITY_CHANGE:I = 0x138b

.field static final HSM_HANDLE_DISCONNECT:I = 0x138a

.field static final HSM_HANDLE_DNS_CONFIGURATION_CHANGE:I = 0x138c

.field static final HSM_HANDLE_INET_CONDITION_CHANGE:I = 0x138e

.field static final HSM_HANDLE_INET_CONDITION_HOLD_END:I = 0x138f

.field static final HSM_HANDLE_REQUEST_NET_TRANSITION_WAKELOCK:I = 0x1393

.field static final HSM_HANDLE_SUBTYPE_CHANGED:I = 0x1394

.field static final HSM_MSG_MIN:I = 0x1388


# instance fields
.field private mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

.field private mDefaultConnectivityState:Lcom/android/internal/util/State;

.field private mMobileDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

.field private mSmartConnectivityState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

.field private mWifiDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

.field private myDefaultDnsNet:I

.field private myInitialState:Lcom/android/internal/util/State;

.field private otherDefaultDnsNet:I

.field final synthetic this$0:Lcom/android/server/QcConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/QcConnectivityService;Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "looper"

    .prologue
    .line 3031
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    .line 3032
    invoke-direct {p0, p3, p4}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 3034
    new-instance v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    invoke-direct {v0, p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;-><init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V

    iput-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    .line 3036
    new-instance v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;

    invoke-direct {v0, p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;-><init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V

    iput-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mDefaultConnectivityState:Lcom/android/internal/util/State;

    .line 3037
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mDefaultConnectivityState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->addState(Lcom/android/internal/util/State;)V

    .line 3039
    #getter for: Lcom/android/server/QcConnectivityService;->wqeEnabled:Z
    invoke-static {p1}, Lcom/android/server/QcConnectivityService;->access$1100(Lcom/android/server/QcConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3041
    new-instance v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    invoke-direct {v0, p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;-><init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V

    iput-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    .line 3042
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mDefaultConnectivityState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 3043
    new-instance v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$WifiDefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$WifiDefaultState;-><init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V

    iput-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mWifiDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    .line 3044
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mWifiDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 3045
    new-instance v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$MobileDefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$MobileDefaultState;-><init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V

    iput-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mMobileDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    .line 3046
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mMobileDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 3047
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    iput-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myInitialState:Lcom/android/internal/util/State;

    .line 3053
    :goto_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 3054
    return-void

    .line 3050
    :cond_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mDefaultConnectivityState:Lcom/android/internal/util/State;

    iput-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myInitialState:Lcom/android/internal/util/State;

    goto :goto_0
.end method

.method static synthetic access$10000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendConnectivityUpBroadcast(I)V

    return-void
.end method

.method static synthetic access$15600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2907
    invoke-virtual {p0, p1, p2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$20000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2907
    invoke-virtual {p0, p1, p2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2907
    invoke-virtual {p0, p1, p2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2907
    invoke-virtual {p0, p1, p2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2907
    invoke-virtual {p0, p1, p2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    iget v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I

    return v0
.end method

.method static synthetic access$6002(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    iput p1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    iget v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I

    return v0
.end method

.method static synthetic access$6102(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    iput p1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I

    return p1
.end method

.method static synthetic access$6200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mWifiDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mMobileDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2907
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendConnectivityUpBroadcast(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 2948
    new-instance v0, Landroid/content/Intent;

    const-string v2, "CONNECTIVITY_AVAILABLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2949
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "netType"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2951
    :try_start_0
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2955
    :goto_0
    return-void

    .line 2952
    :catch_0
    move-exception v1

    .line 2953
    .local v1, se:Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPrefChangedBroadcast() SecurityException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public sendMessageImmediate(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 2944
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    .line 2945
    return-void
.end method
