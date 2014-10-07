.class public Lcom/android/internal/telephony/gsm/SmsMessage$DeliveryPdu;
.super Lcom/android/internal/telephony/SmsMessageBase$DeliveryPduBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeliveryPdu"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase$DeliveryPduBase;-><init>()V

    return-void
.end method
