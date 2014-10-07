.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 12
    .parameter "intent"

    .prologue
    .line 851
    const-string v9, "pdus"

    invoke-virtual {p0, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v3, v9

    check-cast v3, [Ljava/lang/Object;

    .line 852
    .local v3, messages:[Ljava/lang/Object;
    const-string v9, "format"

    invoke-virtual {p0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, format:Ljava/lang/String;
    const-string v9, "index_on_icc"

    const/4 v10, -0x1

    invoke-virtual {p0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 854
    .local v2, indexOnIcc:I
    array-length v9, v3

    new-array v6, v9, [[B

    .line 855
    .local v6, pduObjs:[[B
    const-string v9, "subscription"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 857
    .local v8, subId:I
    const-string v9, "Telephony"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " getMessagesFromIntent sub_id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v9, v3

    if-ge v1, v9, :cond_0

    .line 860
    aget-object v9, v3, v1

    check-cast v9, [B

    check-cast v9, [B

    aput-object v9, v6, v1

    .line 859
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 862
    :cond_0
    array-length v9, v6

    new-array v7, v9, [[B

    .line 863
    .local v7, pdus:[[B
    array-length v5, v7

    .line 864
    .local v5, pduCount:I
    new-array v4, v5, [Landroid/telephony/SmsMessage;

    .line 865
    .local v4, msgs:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    .line 866
    aget-object v9, v6, v1

    aput-object v9, v7, v1

    .line 867
    aget-object v9, v7, v1

    invoke-static {v9, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v9

    aput-object v9, v4, v1

    .line 868
    aget-object v9, v4, v1

    invoke-virtual {v9, v8}, Landroid/telephony/SmsMessage;->setSubId(I)V

    .line 869
    aget-object v9, v4, v1

    invoke-virtual {v9, v2}, Landroid/telephony/SmsMessage;->setIndexOnIcc(I)V

    .line 865
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 871
    :cond_1
    return-object v4
.end method
