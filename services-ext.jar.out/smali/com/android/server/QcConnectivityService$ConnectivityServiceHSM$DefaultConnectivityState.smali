.class final Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;
.super Lcom/android/internal/util/State;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultConnectivityState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;


# direct methods
.method public constructor <init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V
    .locals 0
    .parameter

    .prologue
    .line 3057
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 3058
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 3062
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3063
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 3067
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3068
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 25
    .parameter "msg"

    .prologue
    .line 3072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Actual State: DefaultConnectivityState, Current State: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".processMessage what="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3076
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    .line 3329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$5500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ignoring unhandled message"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$5600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3333
    :cond_0
    :goto_0
    const/16 v20, 0x1

    return v20

    .line 3079
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    .line 3080
    .local v8, info:Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v18

    .line 3081
    .local v18, type:I
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v16

    .line 3085
    .local v16, state:Landroid/net/NetworkInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ConnectivityChange for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/QcConnectivityService;->mFirstProvisioningCheckStarted:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "device_provisioned"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_1

    sget-object v20, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 3096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    const-string v21, "check provisioning after booting"

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/QcConnectivityService;->mFirstProvisioningCheckStarted:Z

    .line 3098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const v22, 0xea60

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/QcConnectivityService;->checkMobileProvisioning(ZILandroid/os/ResultReceiver;)I

    .line 3101
    :cond_1
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v21

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v22

    invoke-static/range {v20 .. v22}, Lcom/android/server/EventLogTags;->writeConnectivityStateChanged(III)V

    .line 3104
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 3106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    const/16 v21, 0x138d

    move-object/from16 v0, v20

    move/from16 v1, v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v8}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    .line 3124
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$2500(Lcom/android/server/QcConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 3125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$2500(Lcom/android/server/QcConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/server/net/LockdownVpnTracker;->onNetworkInfoChanged(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3107
    :cond_3
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 3109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    const/16 v21, 0x1392

    move-object/from16 v0, v20

    move/from16 v1, v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v8}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    goto :goto_1

    .line 3110
    :cond_4
    sget-object v20, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 3111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    const/16 v21, 0x138a

    move-object/from16 v0, v20

    move/from16 v1, v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v8}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    goto :goto_1

    .line 3112
    :cond_5
    sget-object v20, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 3120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    const/16 v21, 0x138a

    move-object/from16 v0, v20

    move/from16 v1, v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v8}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    goto :goto_1

    .line 3121
    :cond_6
    sget-object v20, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 3122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    const/16 v21, 0x1389

    move-object/from16 v0, v20

    move/from16 v1, v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v8}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 3131
    .end local v8           #info:Landroid/net/NetworkInfo;
    .end local v16           #state:Landroid/net/NetworkInfo$State;
    .end local v18           #type:I
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    .line 3135
    .restart local v8       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v21, v0

    const/16 v22, 0x138b

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3142
    .end local v8           #info:Landroid/net/NetworkInfo;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    .line 3143
    .restart local v8       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v21, v0

    const/16 v22, 0x1394

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3150
    .end local v8           #info:Landroid/net/NetworkInfo;
    :sswitch_3
    const/4 v3, 0x0

    .line 3151
    .local v3, causedBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 3152
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService;->access$2800(Lcom/android/server/QcConnectivityService;)I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$2900(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 3154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$2900(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$3000(Lcom/android/server/QcConnectivityService;)Ljava/lang/String;

    move-result-object v3

    .line 3157
    :cond_7
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3158
    if-eqz v3, :cond_0

    .line 3159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "NetTransition Wakelock for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " released by timeout"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$3100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3157
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 3165
    .end local v3           #causedBy:Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/QcConnectivityService$FeatureUser;

    .line 3166
    .local v19, u:Lcom/android/server/QcConnectivityService$FeatureUser;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/QcConnectivityService$FeatureUser;->expire()V

    goto/16 :goto_0

    .line 3171
    .end local v19           #u:Lcom/android/server/QcConnectivityService$FeatureUser;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v21, v0

    const/16 v22, 0x138e

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$3200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3177
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v21, v0

    const/16 v22, 0x138f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$3300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3183
    :sswitch_7
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 3184
    .local v14, preference:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/QcConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v0, v14}, Lcom/android/server/QcConnectivityService;->access$3400(Lcom/android/server/QcConnectivityService;I)V

    goto/16 :goto_0

    .line 3189
    .end local v14           #preference:I
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/4 v6, 0x1

    .line 3190
    .local v6, enabled:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/QcConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v0, v6}, Lcom/android/server/QcConnectivityService;->access$3500(Lcom/android/server/QcConnectivityService;Z)V

    goto/16 :goto_0

    .line 3189
    .end local v6           #enabled:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 3195
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #calls: Lcom/android/server/QcConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$3600(Lcom/android/server/QcConnectivityService;)V

    goto/16 :goto_0

    .line 3200
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    const/4 v10, 0x1

    .line 3201
    .local v10, met:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    #calls: Lcom/android/server/QcConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v0, v1, v10}, Lcom/android/server/QcConnectivityService;->access$3700(Lcom/android/server/QcConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3200
    .end local v10           #met:Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 3206
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    const/16 v21, 0x1391

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(I)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$3800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)V

    goto/16 :goto_0

    .line 3211
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/Intent;

    .line 3212
    .local v9, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v9}, Lcom/android/server/QcConnectivityService;->access$3900(Lcom/android/server/QcConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3217
    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_d
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 3218
    .local v13, networkType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/4 v6, 0x1

    .line 3219
    .restart local v6       #enabled:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/QcConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v0, v13, v6}, Lcom/android/server/QcConnectivityService;->access$4000(Lcom/android/server/QcConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3218
    .end local v6           #enabled:Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_4

    .line 3224
    .end local v13           #networkType:I
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$2500(Lcom/android/server/QcConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 3225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$2500(Lcom/android/server/QcConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/net/NetworkInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3230
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$4100(Lcom/android/server/QcConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    .line 3231
    .local v17, tag:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 3232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v11, v20, v21

    check-cast v11, Landroid/net/MobileDataStateTracker;

    .line 3234
    .local v11, mobileDst:Landroid/net/MobileDataStateTracker;
    if-eqz v11, :cond_b

    .line 3235
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    .line 3244
    .end local v11           #mobileDst:Landroid/net/MobileDataStateTracker;
    .end local v17           #tag:I
    :cond_b
    :goto_5
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    #calls: Lcom/android/server/QcConnectivityService;->handleUpdateBlockedUids(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/QcConnectivityService;->access$4300(Lcom/android/server/QcConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3238
    .restart local v17       #tag:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "EVENT_ENABLE_FAIL_FAST_MOBILE_DATA: stale arg1:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " != tag:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$4200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_5

    .line 3244
    .end local v17           #tag:I
    :cond_d
    const/16 v20, 0x0

    goto :goto_6

    .line 3254
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    .line 3255
    .restart local v8       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/QcConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v8}, Lcom/android/server/QcConnectivityService;->access$4400(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3258
    .end local v8           #info:Landroid/net/NetworkInfo;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    .line 3259
    .restart local v8       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/QcConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v8}, Lcom/android/server/QcConnectivityService;->access$4500(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3263
    .end local v8           #info:Landroid/net/NetworkInfo;
    :sswitch_13
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 3264
    .restart local v18       #type:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    const/4 v5, 0x1

    .line 3265
    .local v5, doReset:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    #calls: Lcom/android/server/QcConnectivityService;->handleConnectivityChange(IZ)V
    invoke-static {v0, v1, v5}, Lcom/android/server/QcConnectivityService;->access$4600(Lcom/android/server/QcConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3264
    .end local v5           #doReset:Z
    :cond_e
    const/4 v5, 0x0

    goto :goto_7

    .line 3269
    .end local v18           #type:I
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    #calls: Lcom/android/server/QcConnectivityService;->handleDnsConfigurationChange(I)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService;->access$4700(Lcom/android/server/QcConnectivityService;I)V

    goto/16 :goto_0

    .line 3272
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    .line 3273
    .restart local v8       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/QcConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v8}, Lcom/android/server/QcConnectivityService;->access$4800(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3276
    .end local v8           #info:Landroid/net/NetworkInfo;
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    .line 3277
    .restart local v8       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/QcConnectivityService;->handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v8}, Lcom/android/server/QcConnectivityService;->access$4900(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V

    .line 3280
    .end local v8           #info:Landroid/net/NetworkInfo;
    :sswitch_17
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 3281
    .local v12, netType:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 3282
    .local v4, condition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/QcConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v0, v12, v4}, Lcom/android/server/QcConnectivityService;->access$5000(Lcom/android/server/QcConnectivityService;II)V

    goto/16 :goto_0

    .line 3287
    .end local v4           #condition:I
    .end local v12           #netType:I
    :sswitch_18
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 3288
    .restart local v12       #netType:I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 3289
    .local v15, sequence:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/QcConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v0, v12, v15}, Lcom/android/server/QcConnectivityService;->access$5100(Lcom/android/server/QcConnectivityService;II)V

    goto/16 :goto_0

    .line 3294
    .end local v12           #netType:I
    .end local v15           #sequence:I
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 3300
    .local v7, forWhom:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$2900(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v20

    if-nez v20, :cond_0

    .line 3302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$2808(Lcom/android/server/QcConnectivityService;)I

    .line 3303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$2900(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #setter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/android/server/QcConnectivityService;->access$3002(Lcom/android/server/QcConnectivityService;Ljava/lang/String;)Ljava/lang/String;

    .line 3306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v21, v0

    const/16 v22, 0x6c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$2800(Lcom/android/server/QcConnectivityService;)I

    move-result v23

    const/16 v24, -0x1

    invoke-virtual/range {v21 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockTimeout:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService;->access$5200(Lcom/android/server/QcConnectivityService;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 3313
    .end local v7           #forWhom:Ljava/lang/String;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #calls: Lcom/android/server/QcConnectivityService;->enforcePreference()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$5300(Lcom/android/server/QcConnectivityService;)V

    goto/16 :goto_0

    .line 3317
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 3318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v21

    #calls: Lcom/android/server/QcConnectivityService;->handleDnsConfigurationChange(I)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService;->access$4700(Lcom/android/server/QcConnectivityService;I)V

    goto/16 :goto_0

    .line 3324
    :sswitch_1c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 3325
    .restart local v18       #type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v21 .. v21}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v21

    aget-object v21, v21, v18

    #calls: Lcom/android/server/QcConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/QcConnectivityService;->access$5400(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)V

    goto/16 :goto_0

    .line 3076
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_4
        0x67 -> :sswitch_7
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6b -> :sswitch_8
        0x6c -> :sswitch_3
        0x6d -> :sswitch_9
        0x6e -> :sswitch_a
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0x73 -> :sswitch_f
        0x1f5 -> :sswitch_10
        0x1389 -> :sswitch_11
        0x138a -> :sswitch_12
        0x138b -> :sswitch_13
        0x138c -> :sswitch_14
        0x138d -> :sswitch_15
        0x138e -> :sswitch_17
        0x138f -> :sswitch_18
        0x1390 -> :sswitch_1a
        0x1391 -> :sswitch_1b
        0x1392 -> :sswitch_16
        0x1393 -> :sswitch_19
        0x1394 -> :sswitch_1c
        0x70000 -> :sswitch_0
        0x70001 -> :sswitch_1
        0x70003 -> :sswitch_2
    .end sparse-switch
.end method
