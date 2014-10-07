.class Landroid/seccap/server/TYSecCapService$2;
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
    .line 142
    iput-object p1, p0, Landroid/seccap/server/TYSecCapService$2;->this$0:Landroid/seccap/server/TYSecCapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService$2;->this$0:Landroid/seccap/server/TYSecCapService;

    const/4 v1, 0x1

    #setter for: Landroid/seccap/server/TYSecCapService;->mIsboot:Z
    invoke-static {v0, v1}, Landroid/seccap/server/TYSecCapService;->access$102(Landroid/seccap/server/TYSecCapService;Z)Z

    .line 148
    :cond_0
    return-void
.end method
