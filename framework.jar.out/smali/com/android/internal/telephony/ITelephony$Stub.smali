.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableApnType:I = 0x1b

.field static final TRANSACTION_disableDataConnectivity:I = 0x1d

.field static final TRANSACTION_disableLocationUpdates:I = 0x19

.field static final TRANSACTION_enableApnType:I = 0x1a

.field static final TRANSACTION_enableDataConnectivity:I = 0x1c

.field static final TRANSACTION_enableLocationUpdates:I = 0x18

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_getActivePhoneType:I = 0x25

.field static final TRANSACTION_getAllCellInfo:I = 0x31

.field static final TRANSACTION_getCallState:I = 0x21

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x27

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x28

.field static final TRANSACTION_getCdmaEriText:I = 0x29

.field static final TRANSACTION_getCellLocation:I = 0x1f

.field static final TRANSACTION_getDataActivity:I = 0x22

.field static final TRANSACTION_getDataNetworkType:I = 0x2d

.field static final TRANSACTION_getDataState:I = 0x23

.field static final TRANSACTION_getDataStateEx:I = 0x24

.field static final TRANSACTION_getIccPin1RetryCount:I = 0x11

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x30

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x20

.field static final TRANSACTION_getNetworkType:I = 0x2c

.field static final TRANSACTION_getVoiceMessageCount:I = 0x2b

.field static final TRANSACTION_getVoiceNetworkType:I = 0x2e

.field static final TRANSACTION_handlePinMmi:I = 0x13

.field static final TRANSACTION_hasIccCard:I = 0x2f

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1e

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x2a

.field static final TRANSACTION_sendOemRilRequestRaw:I = 0x26

.field static final TRANSACTION_setCellInfoListRate:I = 0x32

.field static final TRANSACTION_setRadio:I = 0x15

.field static final TRANSACTION_setRadioPower:I = 0x16

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPinReportResult:I = 0xf

.field static final TRANSACTION_supplyPuk:I = 0x12

.field static final TRANSACTION_supplyPukReportResult:I = 0x10

.field static final TRANSACTION_toggleRadioOnOff:I = 0x14

.field static final TRANSACTION_updateServiceLocation:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 496
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 49
    :sswitch_0
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_3
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v3

    .line 76
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v3, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v3           #_result:Z
    :sswitch_4
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v0, v7

    .line 85
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v3

    .line 86
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v3, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_2
    move v0, v6

    .line 84
    goto :goto_1

    .line 92
    :sswitch_5
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v3

    .line 94
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v3, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v3           #_result:Z
    :sswitch_6
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    :sswitch_7
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 114
    :sswitch_8
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v3

    .line 116
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v3, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v3           #_result:Z
    :sswitch_9
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v3

    .line 124
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v3, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v3           #_result:Z
    :sswitch_a
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v3

    .line 132
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v3, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v3           #_result:Z
    :sswitch_b
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v3

    .line 140
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v3, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v3           #_result:Z
    :sswitch_c
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v3

    .line 148
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v3, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v3           #_result:Z
    :sswitch_d
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 161
    :sswitch_e
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v3

    .line 165
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v3, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 171
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_f
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)I

    move-result v3

    .line 175
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_10
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 187
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 193
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_11
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccPin1RetryCount()I

    move-result v3

    .line 195
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v3           #_result:I
    :sswitch_12
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 207
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v3, :cond_a

    move v6, v7

    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 213
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_13
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v3

    .line 217
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v3, :cond_b

    move v6, v7

    :cond_b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_14
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 230
    :sswitch_15
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    move v0, v7

    .line 233
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v3

    .line 234
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v3, :cond_c

    move v6, v7

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_d
    move v0, v6

    .line 232
    goto :goto_2

    .line 240
    :sswitch_16
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_f

    move v0, v7

    .line 243
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v3

    .line 244
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v3, :cond_e

    move v6, v7

    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_f
    move v0, v6

    .line 242
    goto :goto_3

    .line 250
    :sswitch_17
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 257
    :sswitch_18
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 264
    :sswitch_19
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 271
    :sswitch_1a
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v3

    .line 275
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 281
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_1b
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v3

    .line 285
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 291
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_1c
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v3

    .line 293
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v3, :cond_10

    move v6, v7

    :cond_10
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 299
    .end local v3           #_result:Z
    :sswitch_1d
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v3

    .line 301
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v3, :cond_11

    move v6, v7

    :cond_11
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 307
    .end local v3           #_result:Z
    :sswitch_1e
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v3

    .line 309
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v3, :cond_12

    move v6, v7

    :cond_12
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 315
    .end local v3           #_result:Z
    :sswitch_1f
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v3

    .line 317
    .local v3, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v3, :cond_13

    .line 319
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    invoke-virtual {v3, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 323
    :cond_13
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 329
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_20
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 333
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 339
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_21
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v3

    .line 341
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 347
    .end local v3           #_result:I
    :sswitch_22
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v3

    .line 349
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 355
    .end local v3           #_result:I
    :sswitch_23
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v3

    .line 357
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 363
    .end local v3           #_result:I
    :sswitch_24
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 366
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateEx(Ljava/lang/String;)I

    move-result v3

    .line 367
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 373
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_25
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v3

    .line 375
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 381
    .end local v3           #_result:I
    :sswitch_26
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 385
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    .local v2, _arg1_length:I
    if-gez v2, :cond_14

    .line 387
    const/4 v1, 0x0

    .line 392
    .local v1, _arg1:[B
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendOemRilRequestRaw([B[B)I

    move-result v3

    .line 393
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 390
    .end local v1           #_arg1:[B
    .end local v3           #_result:I
    :cond_14
    new-array v1, v2, [B

    .restart local v1       #_arg1:[B
    goto :goto_4

    .line 400
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:[B
    .end local v2           #_arg1_length:I
    :sswitch_27
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v3

    .line 402
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 408
    .end local v3           #_result:I
    :sswitch_28
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v3

    .line 410
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 416
    .end local v3           #_result:I
    :sswitch_29
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_2a
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v3

    .line 426
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v3, :cond_15

    move v6, v7

    :cond_15
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 432
    .end local v3           #_result:Z
    :sswitch_2b
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v3

    .line 434
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 440
    .end local v3           #_result:I
    :sswitch_2c
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v3

    .line 442
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 448
    .end local v3           #_result:I
    :sswitch_2d
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType()I

    move-result v3

    .line 450
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 456
    .end local v3           #_result:I
    :sswitch_2e
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkType()I

    move-result v3

    .line 458
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 464
    .end local v3           #_result:I
    :sswitch_2f
    const-string v8, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v3

    .line 466
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    if-eqz v3, :cond_16

    move v6, v7

    :cond_16
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 472
    .end local v3           #_result:Z
    :sswitch_30
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v3

    .line 474
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 480
    .end local v3           #_result:I
    :sswitch_31
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v4

    .line 482
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 488
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_32
    const-string v6, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 491
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
