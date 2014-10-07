.class public Lcom/android/internal/telephony/ExtCallManager;
.super Lcom/android/internal/telephony/CallManager;
.source "ExtCallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ExtCallManager$1;,
        Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;,
        Lcom/android/internal/telephony/ExtCallManager$LchState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_LOCAL_CALL_HOLD:I = 0xca

.field private static final EVENT_VOICE_SYSTEM_ID:I = 0xc9

.field private static final LOCAL_MODEM:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ExtCallManager"

.field private static final PROPERTY_VOICE_MODEM_INDEX:Ljava/lang/String; = "persist.radio.voice.modem.index"

.field private static final REMOTE_MODEM:I = 0x1

.field private static final VDBG:Z

.field private static mActiveSub:I


# instance fields
.field private final mActiveSubChangeRegistrants:Landroid/os/RegistrantList;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mLchStatus:[Lcom/android/internal/telephony/ExtCallManager$LchState;

.field private vsidVoice:[J

.field private vsidVoiceDef:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;-><init>()V

    .line 82
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoiceDef:[J

    .line 84
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    .line 91
    new-array v0, v1, [Lcom/android/internal/telephony/ExtCallManager$LchState;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/ExtCallManager$LchState;->INACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/telephony/ExtCallManager$LchState;->INACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/internal/telephony/ExtCallManager$LchState;->INACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mLchStatus:[Lcom/android/internal/telephony/ExtCallManager$LchState;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    .line 95
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSubChangeRegistrants:Landroid/os/RegistrantList;

    .line 1109
    return-void

    .line 82
    :array_0
    .array-data 0x8
        0x0t 0x10t 0xc0t 0x10t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x10t 0xdct 0x10t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x10t 0xdct 0x10t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 84
    :array_1
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ExtCallManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/ExtCallManager;->hasMoreThanOneRingingCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ExtCallManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/ExtCallManager;->isRingingDuplicateCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ExtCallManager;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->handleEventVoiceSysId(Landroid/os/Message;)V

    return-void
.end method

.method private getAudioCallState(Lcom/android/internal/telephony/Call;)I
    .locals 3
    .parameter "call"

    .prologue
    .line 370
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 371
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v1

    .line 372
    .local v1, sub:I
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/ExtCallManager;->getAudioStateFromCallState(ILcom/android/internal/telephony/Call$State;)I

    move-result v2

    return v2
.end method

.method private getAudioStateFromCallState(ILcom/android/internal/telephony/Call$State;)I
    .locals 3
    .parameter "sub"
    .parameter "state"

    .prologue
    .line 349
    const/4 v0, 0x1

    .line 350
    .local v0, callState:I
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_2

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ExtCallManager;->mLchStatus:[Lcom/android/internal/telephony/ExtCallManager$LchState;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/internal/telephony/ExtCallManager$LchState;->INACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

    if-ne v1, v2, :cond_1

    .line 353
    const/4 v0, 0x2

    .line 366
    :goto_0
    return v0

    .line 355
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 357
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_4

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/ExtCallManager;->mLchStatus:[Lcom/android/internal/telephony/ExtCallManager$LchState;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/internal/telephony/ExtCallManager$LchState;->INACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

    if-ne v1, v2, :cond_3

    .line 359
    const/4 v0, 0x3

    goto :goto_0

    .line 361
    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    .line 364
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 1030
    .local p1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 1031
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    if-eq v2, p2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    .line 1036
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter
    .parameter "state"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            "I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 1044
    .local p1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 1045
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-eq v2, p2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    if-eq v2, p3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    .line 1051
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;
    .locals 5
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 861
    .local p1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    .line 862
    .local v2, result:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 863
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-eq v3, p2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v3, :cond_0

    .line 865
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 872
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_1
    return-object v0

    .line 867
    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 868
    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_3
    move-object v0, v2

    .line 872
    goto :goto_1
.end method

.method public static getInstance()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/internal/telephony/ExtCallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/internal/telephony/ExtCallManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/ExtCallManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ExtCallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    .line 106
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ExtCallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, p:Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 123
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 124
    move-object v1, v2

    .line 128
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-object v1
.end method

.method private getVsid(Lcom/android/internal/telephony/Phone;I)J
    .locals 7
    .parameter "offHookPhone"
    .parameter "sub"

    .prologue
    .line 376
    const-wide/16 v1, 0x0

    .line 378
    .local v1, vsid:J
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 389
    const/4 v0, 0x0

    .line 391
    .local v0, voiceModemIndex:I
    sget-object v3, Lcom/android/internal/telephony/ExtCallManager;->sBaseband:Ljava/lang/String;

    const-string v4, "sglte"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/ExtCallManager;->sBaseband:Ljava/lang/String;

    const-string v4, "sglte2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    :cond_0
    const-string v3, "persist.radio.voice.modem.index"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 396
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    aget-wide v3, v3, p2

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 397
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoiceDef:[J

    aget-wide v4, v4, v0

    aput-wide v4, v3, p2

    .line 399
    :cond_2
    const-string v3, "ExtCallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVsid modem index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vsid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    aget-wide v5, v5, p2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    aget-wide v1, v3, p2

    .line 404
    .end local v0           #voiceModemIndex:I
    :goto_0
    return-wide v1

    .line 382
    :pswitch_0
    const-string v3, "ExtCallManager"

    const-string v4, "getVsid for SIP"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :pswitch_1
    const-wide/32 v1, 0x10c02000

    .line 386
    const-string v3, "ExtCallManager"

    const-string v4, "getVsid for IMS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleEventVoiceSysId(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 744
    const/4 v3, -0x1

    .line 746
    .local v3, sub:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 747
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 748
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 749
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    aget-wide v1, v4, v3

    .line 751
    .local v1, oldVsid:J
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v3

    .line 753
    const-string v4, "ExtCallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice System ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    aget-wide v6, v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldvsid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    aget-wide v4, v4, v3

    cmp-long v4, v4, v1

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ExtCallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->setAudioMode()V

    .line 762
    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v4}, Lcom/android/internal/telephony/ExtCallManager;->setAudioStateParam(JI)V

    .line 765
    .end local v1           #oldVsid:J
    :cond_0
    return-void
.end method

.method private hasMoreThanOneHoldingCall(I)Z
    .locals 6
    .parameter "subscription"

    .prologue
    const/4 v3, 0x1

    .line 1083
    const/4 v1, 0x0

    .line 1084
    .local v1, count:I
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 1085
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    if-eq v4, p1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    instance-of v4, v4, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v4, :cond_0

    .line 1088
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_0

    .line 1091
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hasMoreThanOneRingingCall()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1062
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v3

    .line 1063
    .local v3, subscription:I
    const/4 v1, 0x0

    .line 1065
    .local v1, count:I
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 1066
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    if-eq v5, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    instance-of v5, v5, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v5, :cond_0

    .line 1069
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-le v1, v4, :cond_0

    .line 1072
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isRingingDuplicateCall()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1105
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private setAudioParameters(I)V
    .locals 9
    .parameter "sub"

    .prologue
    .line 408
    const-wide/16 v4, 0x0

    .line 409
    .local v4, vsid:J
    const/4 v2, 0x1

    .line 411
    .local v2, newCallState:I
    iget-object v6, p0, Lcom/android/internal/telephony/ExtCallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 412
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v6

    if-ne v6, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    instance-of v6, v6, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v6, :cond_0

    .line 413
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 415
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 418
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 421
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getAudioCallState(Lcom/android/internal/telephony/Call;)I

    move-result v2

    .line 422
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/ExtCallManager;->getVsid(Lcom/android/internal/telephony/Phone;I)J

    move-result-wide v4

    .line 424
    const-string v6, "ExtCallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAudioParams callstate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vsid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0, v4, v5, v2}, Lcom/android/internal/telephony/ExtCallManager;->setAudioStateParam(JI)V

    goto :goto_0

    .line 428
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    return-void
.end method

.method private setAudioStateParam(JI)V
    .locals 4
    .parameter "vsid"
    .parameter "state"

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 337
    const-string v1, "ExtCallManager"

    const-string v2, " Audio Service is null!! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_0
    return-void

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vsid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "call_state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, keyValPairs:Ljava/lang/String;
    const-string v1, "ExtCallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting audio state to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLchStatus(I)V
    .locals 1
    .parameter "sub"

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ExtCallManager;->updateLchStatus(IZ)V

    .line 327
    return-void
.end method

.method private updateLchStatus(IZ)V
    .locals 8
    .parameter "sub"
    .parameter "reserveLchState"

    .prologue
    const/4 v4, 0x1

    .line 286
    sget-object v1, Lcom/android/internal/telephony/ExtCallManager$LchState;->INACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

    .line 287
    .local v1, lchStatus:Lcom/android/internal/telephony/ExtCallManager$LchState;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 288
    .local v2, offHookPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 290
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_0

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getBgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 294
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 296
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 298
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v5, :cond_1

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v5, :cond_1

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v5, :cond_2

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v5

    if-eq p1, v5, :cond_5

    .line 303
    sget-object v1, Lcom/android/internal/telephony/ExtCallManager$LchState;->ACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

    .line 311
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mLchStatus:[Lcom/android/internal/telephony/ExtCallManager$LchState;

    aget-object v5, v5, p1

    if-eq v1, v5, :cond_4

    .line 312
    const-string v5, "ExtCallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " setLocal Call Hold to  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v5

    if-eq v5, p1, :cond_3

    .line 315
    const-string v5, "ExtCallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set parameters for Lch sub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->setAudioParameters(I)V

    .line 318
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/ExtCallManager$LchState;->ACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

    if-ne v1, v5, :cond_6

    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mHandler:Lcom/android/internal/telephony/CallManager$CmHandler;

    const/16 v6, 0xca

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/CallManager$CmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/Phone;->setLocalCallHold(ILandroid/os/Message;)V

    .line 320
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->mLchStatus:[Lcom/android/internal/telephony/ExtCallManager$LchState;

    aput-object v1, v4, p1

    .line 322
    :cond_4
    return-void

    .line 304
    :cond_5
    if-ne p2, v4, :cond_2

    .line 306
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mLchStatus:[Lcom/android/internal/telephony/ExtCallManager$LchState;

    aget-object v1, v5, p1

    goto :goto_0

    .line 318
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public canConference(Lcom/android/internal/telephony/Call;I)Z
    .locals 4
    .parameter "heldCall"
    .parameter "subscription"

    .prologue
    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 659
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveFgCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 663
    :cond_0
    if-eqz p1, :cond_1

    .line 664
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 667
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method protected canDial(Lcom/android/internal/telephony/Phone;)Z
    .locals 8
    .parameter "phone"

    .prologue
    .line 555
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 556
    .local v3, serviceState:I
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    .line 557
    .local v4, subscription:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveRingingCallOnAnySub()Z

    move-result v1

    .line 558
    .local v1, hasRingingCall:Z
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 560
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    if-nez v1, :cond_2

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 566
    .local v2, result:Z
    :goto_0
    if-nez v2, :cond_1

    .line 567
    const-string v5, "ExtCallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canDial serviceState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hasRingingCall="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fgCallState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_1
    return v2

    .line 560
    .end local v2           #result:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;I)Z
    .locals 3
    .parameter "heldCall"
    .parameter "subscription"

    .prologue
    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 731
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveFgCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 732
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 735
    :cond_0
    if-eqz p1, :cond_1

    .line 736
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 739
    :cond_1
    if-ne v1, v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->clearDisconnected(I)V

    .line 707
    return-void
.end method

.method public clearDisconnected(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    .line 715
    iget-object v2, p0, Lcom/android/internal/telephony/ExtCallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 716
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 717
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_0

    .line 720
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v1

    .line 688
    .local v1, subscription:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ExtCallManager;->getFgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 689
    .local v0, fgPhone:Lcom/android/internal/telephony/Phone;
    instance-of v2, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    .line 690
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v0           #fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->conference(Lcom/android/internal/telephony/Call;)V

    .line 702
    :goto_0
    return-void

    .line 691
    .restart local v0       #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0

    .line 694
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "Can\'t conference foreground and selected background call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deactivateLchState(I)V
    .locals 3
    .parameter "sub"

    .prologue
    .line 331
    const-string v0, "ExtCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deactivating Sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s Lch state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ExtCallManager;->updateLchStatus(IZ)V

    .line 333
    return-void
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 10
    .parameter "phone"
    .parameter "dialString"
    .parameter "callType"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 505
    invoke-static {p1}, Lcom/android/internal/telephony/ExtCallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 506
    .local v1, basePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    .line 515
    .local v4, subscription:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->canDial(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 516
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    const-string v6, "cannot dial in current state"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 519
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveFgCall(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 520
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 521
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    .line 524
    .local v2, hasBgCall:Z
    :goto_0
    const-string v7, "ExtCallManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasBgCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sameChannel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne v0, v1, :cond_3

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    if-eq v0, v1, :cond_1

    .line 529
    if-eqz v2, :cond_4

    .line 530
    const-string v5, "ExtCallManager"

    const-string v6, "Hangup"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 539
    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #hasBgCall:Z
    :cond_1
    :goto_2
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 540
    invoke-interface {v1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 550
    .local v3, result:Lcom/android/internal/telephony/Connection;
    :goto_3
    return-object v3

    .end local v3           #result:Lcom/android/internal/telephony/Connection;
    .restart local v0       #activePhone:Lcom/android/internal/telephony/Phone;
    :cond_2
    move v2, v6

    .line 521
    goto :goto_0

    .restart local v2       #hasBgCall:Z
    :cond_3
    move v5, v6

    .line 524
    goto :goto_1

    .line 533
    :cond_4
    const-string v5, "ExtCallManager"

    const-string v6, "Switch"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_2

    .line 542
    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #hasBgCall:Z
    :cond_5
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .restart local v3       #result:Lcom/android/internal/telephony/Connection;
    goto :goto_3
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFgCall(I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter "subscription"

    .prologue
    .line 848
    iget-object v2, p0, Lcom/android/internal/telephony/ExtCallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 849
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 850
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 851
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 855
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-object v0

    .line 851
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 964
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 966
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 970
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method public getActiveSubscription()I
    .locals 1

    .prologue
    .line 263
    sget v0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    return v0
.end method

.method public getBgCallConnections(I)Ljava/util/List;
    .locals 2
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 990
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 991
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 994
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ExtCallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getBgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFgCallConnections(I)Ljava/util/List;
    .locals 2
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 978
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 979
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 982
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ExtCallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFgCallLatestConnection(I)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 1003
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1004
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 1005
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1007
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter "subscription"

    .prologue
    .line 909
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 910
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->hasMoreThanOneHoldingCall(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 911
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 919
    :cond_0
    :goto_0
    return-object v0

    .line 913
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ExtCallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 914
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 915
    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter "subscription"

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 944
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/ExtCallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 945
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 946
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 950
    :cond_0
    :goto_0
    return-object v0

    .line 946
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalCallHoldStatus(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 270
    .local v0, status:Z
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ExtCallManager;->mLchStatus:[Lcom/android/internal/telephony/ExtCallManager$LchState;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/internal/telephony/ExtCallManager$LchState;->INACTIVE:Lcom/android/internal/telephony/ExtCallManager$LchState;

    if-eq v1, v2, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 274
    :cond_0
    return v0
.end method

.method public getOtherActiveSub(I)I
    .locals 6
    .parameter "subscription"

    .prologue
    .line 622
    const/4 v2, -0x1

    .line 623
    .local v2, otherSub:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    .line 625
    .local v0, count:I
    const-string v3, "ExtCallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is other sub active = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 627
    const-string v3, "ExtCallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count ** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    if-eq v1, p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ExtCallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_1

    .line 629
    const-string v3, "ExtCallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got other active sub  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    move v2, v1

    .line 634
    :cond_0
    return v2

    .line 626
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPhoneInCall(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method public getRingingPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState(I)I
    .locals 7
    .parameter "subscription"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 169
    const/4 v2, 0x1

    .line 171
    .local v2, resultState:I
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 172
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 173
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 174
    .local v3, serviceState:I
    if-nez v3, :cond_2

    .line 176
    move v2, v3

    .line 192
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v3           #serviceState:I
    :cond_1
    return v2

    .line 178
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v3       #serviceState:I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 181
    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_0

    .line 183
    :cond_3
    move v2, v3

    goto :goto_0

    .line 185
    :cond_4
    if-ne v3, v5, :cond_0

    .line 186
    if-ne v2, v6, :cond_0

    .line 187
    move v2, v3

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 5
    .parameter "subscription"

    .prologue
    .line 150
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 152
    .local v2, s:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 153
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 154
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    .line 155
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    .line 157
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 161
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v2
.end method

.method public hasActiveBgCall()Z
    .locals 1

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveBgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveBgCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveFgCall()Z
    .locals 1

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveFgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveFgCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveFgCallAnyPhone()Z
    .locals 1

    .prologue
    .line 790
    invoke-super {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    return v0
.end method

.method public hasActiveRingingCall()Z
    .locals 1

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveRingingCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveRingingCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveRingingCallOnAnySub()Z
    .locals 1

    .prologue
    .line 579
    invoke-super {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    return v0
.end method

.method public hasDisconnectedBgCall(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedFgCall(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initHandler()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mHandler:Lcom/android/internal/telephony/CallManager$CmHandler;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;-><init>(Lcom/android/internal/telephony/ExtCallManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mHandler:Lcom/android/internal/telephony/CallManager$CmHandler;

    .line 114
    :cond_0
    return-void
.end method

.method protected registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 603
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mHandler:Lcom/android/internal/telephony/CallManager$CmHandler;

    const/16 v1, 0xc9

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForUnsolVoiceSystemId(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 607
    return-void
.end method

.method public registerForSubscriptionChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSubChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1097
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .parameter "phone"

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    .line 204
    .local v1, retVal:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 205
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_0

    .line 206
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    .line 209
    :cond_0
    return v1
.end method

.method public setActiveSubscription(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v3, 0x0

    .line 255
    const-string v0, "ExtCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveSubscription existing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sput p1, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSubChangeRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    sget v2, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 258
    return-void
.end method

.method public setAudioMode()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 433
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v5, :cond_0

    .line 434
    const-string v5, "ExtCallManager"

    const-string v6, "setAudioMode: Audio Service is null!! "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :goto_0
    return-void

    .line 438
    :cond_0
    const/4 v1, 0x0

    .line 439
    .local v1, mode:I
    sget-object v5, Lcom/android/internal/telephony/ExtCallManager$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 498
    :cond_1
    :goto_1
    const-string v5, "ExtCallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioMode State = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    if-eq v5, v9, :cond_1

    .line 444
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    if-lez v5, :cond_2

    .line 445
    const-string v5, "ExtCallManager"

    const-string v6, "requestAudioFocus on STREAM_RING"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v7, v7}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 449
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v9}, Landroid/media/AudioManager;->setMode(I)V

    .line 450
    const-string v5, "ExtCallManager"

    const-string v6, "setAudioMode RINGING"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 454
    :pswitch_1
    const/4 v4, 0x0

    .local v4, sub:I
    :goto_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 456
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ExtCallManager;->updateLchStatus(I)V

    .line 454
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 458
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ExtCallManager;->setAudioParameters(I)V

    .line 460
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 461
    .local v3, offHookPhone:Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x2

    .line 464
    .local v2, newAudioMode:I
    instance-of v5, v3, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v5, :cond_4

    .line 466
    const-string v5, "ExtCallManager"

    const-string v6, "setAudioMode Set audio mode for SIP call!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v2, 0x3

    .line 472
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 473
    .local v0, currMode:I
    if-eq v0, v2, :cond_1

    .line 475
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v8, v7}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 477
    const-string v5, "ExtCallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioMode Setting audio mode from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_1

    .line 484
    .end local v0           #currMode:I
    .end local v2           #newAudioMode:I
    .end local v3           #offHookPhone:Lcom/android/internal/telephony/Phone;
    .end local v4           #sub:I
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    if-eqz v5, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ExtCallManager;->setAudioParameters(I)V

    .line 486
    const/4 v4, 0x0

    .restart local v4       #sub:I
    :goto_3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 488
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ExtCallManager;->updateLchStatus(I)V

    .line 487
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 491
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v8}, Landroid/media/AudioManager;->setMode(I)V

    .line 492
    const-string v5, "ExtCallManager"

    const-string v6, "abandonAudioFocus"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v5, p0, Lcom/android/internal/telephony/ExtCallManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    goto/16 :goto_1

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCallAudioDrivers(ILcom/android/internal/telephony/Call$State;)V
    .locals 7
    .parameter "phoneType"
    .parameter "state"

    .prologue
    .line 587
    const-string v4, "ExtCallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallAudioDrivers for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    if-nez p1, :cond_0

    .line 589
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p1

    .line 591
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 592
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 593
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/ExtCallManager;->getVsid(Lcom/android/internal/telephony/Phone;I)J

    move-result-wide v2

    .line 594
    .local v2, vsid:J
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/ExtCallManager;->getAudioStateFromCallState(ILcom/android/internal/telephony/Call$State;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/ExtCallManager;->setAudioStateParam(JI)V

    .line 599
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v2           #vsid:J
    :cond_2
    return-void
.end method

.method public switchToLocalHold(IZ)V
    .locals 4
    .parameter "subscription"
    .parameter "switchTo"

    .prologue
    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 642
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    const-string v2, "ExtCallManager"

    const-string v3, " switchToLocalHold update audio state"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->setAudioMode()V

    .line 646
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1149
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v5, "ExtCallManager {"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nSUB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nstate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1154
    .local v1, call:Lcom/android/internal/telephony/Call;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Foreground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    const-string v5, "\n  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getFgCallConnections(I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Background: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    const-string v5, "\n  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getBgCallConnections(I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Ringing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1166
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getAllPhones()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 1167
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_1

    .line 1168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nPhone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1171
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    const-string v5, "\n- Foreground: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1173
    const-string v5, " Background: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1175
    const-string v5, " Ringing: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1178
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    const-string v5, "\n}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 611
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mHandler:Lcom/android/internal/telephony/CallManager$CmHandler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForUnsolVoiceSystemId(Landroid/os/Handler;)V

    .line 614
    return-void
.end method

.method public unregisterForSubscriptionChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSubChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1102
    return-void
.end method
