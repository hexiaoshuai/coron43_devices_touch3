.class Lcom/android/internal/telephony/ImsSMSDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    const-string v2, "qualcomm.intent.action.LONG_SMS_OVERTIME"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "messageRef"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 60
    .local v1, msgRef:I
    const-string v2, "address"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, address:Ljava/lang/String;
    const-string v2, "RIL_ImsSms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LONG_SMS_OVERTIME_ACTION onReceive messageRef = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    #calls: Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z
    invoke-static {v2}, Lcom/android/internal/telephony/ImsSMSDispatcher;->access$000(Lcom/android/internal/telephony/ImsSMSDispatcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->deleteSpecLongSmsOnRaw(ILjava/lang/String;)I

    .line 70
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #msgRef:I
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #msgRef:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->deleteSpecLongSmsOnRaw(ILjava/lang/String;)I

    goto :goto_0
.end method
