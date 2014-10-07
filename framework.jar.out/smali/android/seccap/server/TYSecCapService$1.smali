.class Landroid/seccap/server/TYSecCapService$1;
.super Landroid/content/BroadcastReceiver;
.source "TYSecCapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/seccap/server/TYSecCapService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/seccap/server/TYSecCapService;


# direct methods
.method constructor <init>(Landroid/seccap/server/TYSecCapService;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Landroid/seccap/server/TYSecCapService$1;->this$0:Landroid/seccap/server/TYSecCapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, what:I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    const v3, 0x80002

    .line 131
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v4, "pakNam"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Landroid/seccap/server/TYSecCapService$1;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mAsyncServiceHandler:Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;
    invoke-static {v4}, Landroid/seccap/server/TYSecCapService;->access$000(Landroid/seccap/server/TYSecCapService;)Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 134
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 136
    return-void

    .line 126
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    const v3, 0x80003

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    const v3, 0x80001

    goto :goto_0
.end method
