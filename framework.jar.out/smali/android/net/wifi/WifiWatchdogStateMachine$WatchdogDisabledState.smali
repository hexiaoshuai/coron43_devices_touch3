.class Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchdogDisabledState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 499
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 500
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 504
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 524
    :goto_0
    const/4 v2, 0x0

    :cond_0
    :goto_1
    return v2

    .line 506
    :pswitch_0
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 510
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 511
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 514
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    sget-object v3, Landroid/net/wifi/WifiWatchdogStateMachine$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 516
    :pswitch_2
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v4, "Watchdog disabled, verify link"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 517
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v3, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1400(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x21001
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 514
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
