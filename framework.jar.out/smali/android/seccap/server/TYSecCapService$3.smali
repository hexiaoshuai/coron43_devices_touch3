.class Landroid/seccap/server/TYSecCapService$3;
.super Ljava/lang/Object;
.source "TYSecCapService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$check:Landroid/widget/CheckBox;

.field final synthetic val$secCapInfo:Landroid/seccap/SecCapInfo;


# direct methods
.method constructor <init>(Landroid/seccap/server/TYSecCapService;Landroid/widget/CheckBox;Landroid/seccap/SecCapInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Landroid/seccap/server/TYSecCapService$3;->this$0:Landroid/seccap/server/TYSecCapService;

    iput-object p2, p0, Landroid/seccap/server/TYSecCapService$3;->val$check:Landroid/widget/CheckBox;

    iput-object p3, p0, Landroid/seccap/server/TYSecCapService$3;->val$secCapInfo:Landroid/seccap/SecCapInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 838
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 839
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService$3;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService$3;->val$secCapInfo:Landroid/seccap/SecCapInfo;

    iput v2, v0, Landroid/seccap/SecCapInfo;->waycode:I

    .line 841
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService$3;->this$0:Landroid/seccap/server/TYSecCapService;

    iget-object v1, p0, Landroid/seccap/server/TYSecCapService$3;->val$secCapInfo:Landroid/seccap/SecCapInfo;

    invoke-virtual {v0, v1}, Landroid/seccap/server/TYSecCapService;->update2SecCapInfo(Landroid/seccap/SecCapInfo;)Z

    .line 843
    :cond_0
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService$3;->this$0:Landroid/seccap/server/TYSecCapService;

    iget-object v1, p0, Landroid/seccap/server/TYSecCapService$3;->val$secCapInfo:Landroid/seccap/SecCapInfo;

    #calls: Landroid/seccap/server/TYSecCapService;->notifyInquireResult(Landroid/seccap/SecCapInfo;Z)V
    invoke-static {v0, v1, v3}, Landroid/seccap/server/TYSecCapService;->access$1100(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapInfo;Z)V

    .line 851
    :goto_0
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService$3;->this$0:Landroid/seccap/server/TYSecCapService;

    #calls: Landroid/seccap/server/TYSecCapService;->cancelTime()V
    invoke-static {v0}, Landroid/seccap/server/TYSecCapService;->access$1000(Landroid/seccap/server/TYSecCapService;)V

    .line 852
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 853
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService$3;->this$0:Landroid/seccap/server/TYSecCapService;

    const/4 v1, 0x0

    #setter for: Landroid/seccap/server/TYSecCapService;->mDataAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Landroid/seccap/server/TYSecCapService;->access$802(Landroid/seccap/server/TYSecCapService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 854
    return-void

    .line 845
    :cond_1
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService$3;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService$3;->val$secCapInfo:Landroid/seccap/SecCapInfo;

    iput v3, v0, Landroid/seccap/SecCapInfo;->waycode:I

    .line 847
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService$3;->this$0:Landroid/seccap/server/TYSecCapService;

    iget-object v1, p0, Landroid/seccap/server/TYSecCapService$3;->val$secCapInfo:Landroid/seccap/SecCapInfo;

    invoke-virtual {v0, v1}, Landroid/seccap/server/TYSecCapService;->update2SecCapInfo(Landroid/seccap/SecCapInfo;)Z

    .line 849
    :cond_2
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService$3;->this$0:Landroid/seccap/server/TYSecCapService;

    iget-object v1, p0, Landroid/seccap/server/TYSecCapService$3;->val$secCapInfo:Landroid/seccap/SecCapInfo;

    #calls: Landroid/seccap/server/TYSecCapService;->notifyInquireResult(Landroid/seccap/SecCapInfo;Z)V
    invoke-static {v0, v1, v2}, Landroid/seccap/server/TYSecCapService;->access$1100(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapInfo;Z)V

    goto :goto_0
.end method
