.class Landroid/seccap/server/TYSecCapService$4;
.super Ljava/lang/Object;
.source "TYSecCapService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/seccap/server/TYSecCapService;->showInquireDialog(Landroid/seccap/SecCapInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/seccap/server/TYSecCapService;

.field final synthetic val$secCapInfo:Landroid/seccap/SecCapInfo;


# direct methods
.method constructor <init>(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Landroid/seccap/server/TYSecCapService$4;->this$0:Landroid/seccap/server/TYSecCapService;

    iput-object p2, p0, Landroid/seccap/server/TYSecCapService$4;->val$secCapInfo:Landroid/seccap/SecCapInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 865
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 866
    iget-object v2, p0, Landroid/seccap/server/TYSecCapService$4;->this$0:Landroid/seccap/server/TYSecCapService;

    invoke-virtual {v2}, Landroid/seccap/server/TYSecCapService;->getSecCapSettings()Landroid/seccap/SecCapSettings;

    move-result-object v2

    iget v2, v2, Landroid/seccap/SecCapSettings;->overtimeway:I

    if-nez v2, :cond_0

    .line 867
    iget-object v1, p0, Landroid/seccap/server/TYSecCapService$4;->this$0:Landroid/seccap/server/TYSecCapService;

    iget-object v2, p0, Landroid/seccap/server/TYSecCapService$4;->val$secCapInfo:Landroid/seccap/SecCapInfo;

    #calls: Landroid/seccap/server/TYSecCapService;->notifyInquireResult(Landroid/seccap/SecCapInfo;Z)V
    invoke-static {v1, v2, v0}, Landroid/seccap/server/TYSecCapService;->access$1100(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapInfo;Z)V

    .line 871
    :goto_0
    iget-object v1, p0, Landroid/seccap/server/TYSecCapService$4;->this$0:Landroid/seccap/server/TYSecCapService;

    #calls: Landroid/seccap/server/TYSecCapService;->cancelTime()V
    invoke-static {v1}, Landroid/seccap/server/TYSecCapService;->access$1000(Landroid/seccap/server/TYSecCapService;)V

    .line 872
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 873
    iget-object v1, p0, Landroid/seccap/server/TYSecCapService$4;->this$0:Landroid/seccap/server/TYSecCapService;

    const/4 v2, 0x0

    #setter for: Landroid/seccap/server/TYSecCapService;->mDataAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Landroid/seccap/server/TYSecCapService;->access$802(Landroid/seccap/server/TYSecCapService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 876
    :goto_1
    return v0

    .line 869
    :cond_0
    iget-object v2, p0, Landroid/seccap/server/TYSecCapService$4;->this$0:Landroid/seccap/server/TYSecCapService;

    iget-object v3, p0, Landroid/seccap/server/TYSecCapService$4;->val$secCapInfo:Landroid/seccap/SecCapInfo;

    #calls: Landroid/seccap/server/TYSecCapService;->notifyInquireResult(Landroid/seccap/SecCapInfo;Z)V
    invoke-static {v2, v3, v1}, Landroid/seccap/server/TYSecCapService;->access$1100(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapInfo;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 876
    goto :goto_1
.end method
