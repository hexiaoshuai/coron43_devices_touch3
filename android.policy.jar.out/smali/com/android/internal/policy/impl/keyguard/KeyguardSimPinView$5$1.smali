.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->onSimCheckResponse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 227
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;->val$result:I

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    .line 242
    return-void

    .line 231
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;->val$result:I

    if-ne v0, v2, :cond_2

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x1040577

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 238
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x104030a

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_1
.end method
