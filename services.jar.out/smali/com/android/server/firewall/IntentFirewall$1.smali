.class Lcom/android/server/firewall/IntentFirewall$1;
.super Landroid/os/Handler;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/firewall/IntentFirewall;


# direct methods
.method constructor <init>(Lcom/android/server/firewall/IntentFirewall;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$1;->this$0:Lcom/android/server/firewall/IntentFirewall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 430
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 438
    :goto_0
    return-void

    .line 432
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$1;->this$0:Lcom/android/server/firewall/IntentFirewall;

    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesFile()Ljava/io/File;

    move-result-object v1

    #calls: Lcom/android/server/firewall/IntentFirewall;->readRules(Ljava/io/File;)V
    invoke-static {v0, v1}, Lcom/android/server/firewall/IntentFirewall;->access$300(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$1;->this$0:Lcom/android/server/firewall/IntentFirewall;

    #calls: Lcom/android/server/firewall/IntentFirewall;->clearRules()V
    invoke-static {v0}, Lcom/android/server/firewall/IntentFirewall;->access$400(Lcom/android/server/firewall/IntentFirewall;)V

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
