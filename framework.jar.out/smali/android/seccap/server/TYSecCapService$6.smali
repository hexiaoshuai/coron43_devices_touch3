.class Landroid/seccap/server/TYSecCapService$6;
.super Ljava/util/TimerTask;
.source "TYSecCapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/seccap/server/TYSecCapService;->startClrStusTime()V
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
    .line 913
    iput-object p1, p0, Landroid/seccap/server/TYSecCapService$6;->this$0:Landroid/seccap/server/TYSecCapService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 915
    iget-object v1, p0, Landroid/seccap/server/TYSecCapService$6;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mAsyncServiceHandler:Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;
    invoke-static {v1}, Landroid/seccap/server/TYSecCapService;->access$000(Landroid/seccap/server/TYSecCapService;)Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;

    move-result-object v1

    const v2, 0x80009

    iget-object v3, p0, Landroid/seccap/server/TYSecCapService$6;->this$0:Landroid/seccap/server/TYSecCapService;

    invoke-static {v3}, Landroid/seccap/server/TYSecCapService;->access$1506(Landroid/seccap/server/TYSecCapService;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 917
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 918
    iget-object v1, p0, Landroid/seccap/server/TYSecCapService$6;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mClrStusTimerTime:I
    invoke-static {v1}, Landroid/seccap/server/TYSecCapService;->access$1500(Landroid/seccap/server/TYSecCapService;)I

    move-result v1

    if-gez v1, :cond_0

    .line 919
    iget-object v1, p0, Landroid/seccap/server/TYSecCapService$6;->this$0:Landroid/seccap/server/TYSecCapService;

    #calls: Landroid/seccap/server/TYSecCapService;->cancelClrStusTime()V
    invoke-static {v1}, Landroid/seccap/server/TYSecCapService;->access$1600(Landroid/seccap/server/TYSecCapService;)V

    .line 921
    :cond_0
    return-void
.end method
