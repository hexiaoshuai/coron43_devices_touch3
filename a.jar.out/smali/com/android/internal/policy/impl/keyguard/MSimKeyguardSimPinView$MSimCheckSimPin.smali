.class abstract Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;
.super Ljava/lang/Thread;
.source "MSimKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MSimCheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "pin"
    .parameter "sub"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->mPin:Ljava/lang/String;

    .line 165
    #setter for: Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I
    invoke-static {p1, p3}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->access$102(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;I)I

    .line 166
    return-void
.end method


# virtual methods
.method abstract onSimCheckResponse(Z)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 175
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->mPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->access$100(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->supplyPin(Ljava/lang/String;I)Z

    move-result v1

    .line 177
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;Z)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1           #result:Z
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$2;-><init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
