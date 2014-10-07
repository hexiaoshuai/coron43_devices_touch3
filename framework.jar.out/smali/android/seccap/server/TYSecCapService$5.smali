.class Landroid/seccap/server/TYSecCapService$5;
.super Ljava/util/TimerTask;
.source "TYSecCapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/seccap/server/TYSecCapService;->startTime(Landroid/seccap/SecCapSettings;Landroid/seccap/SecCapInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/seccap/server/TYSecCapService;

.field final synthetic val$secCapInfo:Landroid/seccap/SecCapInfo;

.field final synthetic val$secCapSettings:Landroid/seccap/SecCapSettings;


# direct methods
.method constructor <init>(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapSettings;Landroid/seccap/SecCapInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 892
    iput-object p1, p0, Landroid/seccap/server/TYSecCapService$5;->this$0:Landroid/seccap/server/TYSecCapService;

    iput-object p2, p0, Landroid/seccap/server/TYSecCapService$5;->val$secCapSettings:Landroid/seccap/SecCapSettings;

    iput-object p3, p0, Landroid/seccap/server/TYSecCapService$5;->val$secCapInfo:Landroid/seccap/SecCapInfo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 894
    iget-object v1, p0, Landroid/seccap/server/TYSecCapService$5;->this$0:Landroid/seccap/server/TYSecCapService;

    #getter for: Landroid/seccap/server/TYSecCapService;->mAsyncServiceHandler:Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;
    invoke-static {v1}, Landroid/seccap/server/TYSecCapService;->access$000(Landroid/seccap/server/TYSecCapService;)Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;

    move-result-object v1

    const v2, 0x80006

    iget-object v3, p0, Landroid/seccap/server/TYSecCapService$5;->this$0:Landroid/seccap/server/TYSecCapService;

    invoke-static {v3}, Landroid/seccap/server/TYSecCapService;->access$1410(Landroid/seccap/server/TYSecCapService;)I

    move-result v3

    iget-object v4, p0, Landroid/seccap/server/TYSecCapService$5;->val$secCapSettings:Landroid/seccap/SecCapSettings;

    iget v4, v4, Landroid/seccap/SecCapSettings;->overtimeway:I

    iget-object v5, p0, Landroid/seccap/server/TYSecCapService$5;->val$secCapInfo:Landroid/seccap/SecCapInfo;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 896
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 897
    return-void
.end method
