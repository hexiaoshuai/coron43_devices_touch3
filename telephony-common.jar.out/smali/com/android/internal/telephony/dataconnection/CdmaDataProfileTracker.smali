.class public final Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;
.super Landroid/os/Handler;
.source "CdmaDataProfileTracker.java"


# static fields
.field private static final EVENT_GET_DATA_CALL_PROFILE_DONE:I = 0x1

.field private static final EVENT_LOAD_PROFILES:I = 0x2

.field private static final EVENT_READ_MODEM_PROFILES:I = 0x0

.field public static final PROPERTY_OMH_ENABLED:Ljava/lang/String; = "persist.omh.enabled"

.field private static final SUPPORTED_APN_TYPES:[Ljava/lang/String;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected mActiveDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

.field private mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOmhEnabled:Z

.field private mModemDataProfileRegistrants:Landroid/os/RegistrantList;

.field mOmhDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mOmhReadProfileContext:I

.field private mOmhReadProfileCount:I

.field mOmhServicePriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field mTempOmhDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "supl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dun"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hipri"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fota"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ims"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cbs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->SUPPORTED_APN_TYPES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 61
    const-string v0, "CDMA"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->LOG_TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    .line 92
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    .line 97
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 99
    const-string v0, "persist.omh.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v3, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    .line 127
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUPPORT_OMH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private addServiceTypeToUnSpecified()V
    .locals 8

    .prologue
    .line 367
    sget-object v1, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->SUPPORTED_APN_TYPES:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 368
    .local v0, apntype:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 373
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4           #i$:I
    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .local v2, dp:Lcom/android/internal/telephony/dataconnection/DataProfile;
    move-object v6, v2

    .line 374
    check-cast v6, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getDataProfileTypeModem()Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    if-ne v6, v7, :cond_0

    .line 376
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    .end local v2           #dp:Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: Service Type added to UNSPECIFIED is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 367
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 385
    .end local v0           #apntype:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private getDuplicateProfile(Lcom/android/internal/telephony/dataconnection/DataProfile;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh;
    .locals 4
    .parameter "dp"

    .prologue
    .line 319
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .local v0, dataProfile:Lcom/android/internal/telephony/dataconnection/DataProfile;
    move-object v2, p1

    .line 320
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getProfileId()I

    move-result v3

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getProfileId()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 322
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    .line 325
    .end local v0           #dataProfile:Lcom/android/internal/telephony/dataconnection/DataProfile;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private omhListGetArbitratedPriority(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter "serviceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    const/4 v2, 0x0

    .line 396
    .local v2, profile:Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .local v0, dp:Lcom/android/internal/telephony/dataconnection/DataProfile;
    move-object v3, v0

    .line 397
    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isValidPriority()Z

    move-result v3

    if-nez v3, :cond_0

    .line 398
    const-string v3, "[OMH] Invalid priority... skipping"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_0
    if-nez v2, :cond_1

    .line 403
    move-object v2, v0

    goto :goto_0

    .line 405
    :cond_1
    const-string v3, "supl"

    if-ne p2, v3, :cond_3

    move-object v3, v0

    .line 407
    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isPriorityLower(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    :cond_2
    goto :goto_0

    :cond_3
    move-object v3, v0

    .line 411
    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isPriorityHigher(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v2, v0

    :cond_4
    goto :goto_0

    .line 416
    .end local v0           #dp:Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_5
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    .end local v2           #profile:Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getPriority()I

    move-result v3

    return v3
.end method

.method private onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V
    .locals 8
    .parameter "ar"
    .parameter "context"

    .prologue
    .line 243
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    if-eq p2, v6, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: Exception in onGetDataCallProfileDone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 250
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    goto :goto_0

    .line 256
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v0, dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0           #dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 259
    .restart local v0       #dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    .line 261
    .local v3, modemProfile:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 263
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 267
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataServiceType()Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, serviceType:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: # profiles returned from modem:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 272
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->omhListGetArbitratedPriority(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .local v1, dp:Lcom/android/internal/telephony/dataconnection/DataProfile;
    move-object v6, v1

    .line 278
    check-cast v6, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->setDataProfileTypeModem(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V

    .line 284
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->getDuplicateProfile(Lcom/android/internal/telephony/dataconnection/DataProfile;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    move-result-object v4

    .line 285
    .local v4, omhDuplicatedp:Lcom/android/internal/telephony/dataconnection/DataProfileOmh;
    if-nez v4, :cond_3

    .line 286
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    .end local v1           #dp:Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V

    goto :goto_1

    .line 296
    .restart local v1       #dp:Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: Duplicate Profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 297
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V

    goto :goto_1

    .line 304
    .end local v1           #dp:Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #omhDuplicatedp:Lcom/android/internal/telephony/dataconnection/DataProfileOmh;
    .end local v5           #serviceType:Ljava/lang/String;
    :cond_4
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    if-nez v6, :cond_0

    .line 305
    const-string v6, "OMH: Modem omh profile read complete."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->addServiceTypeToUnSpecified()V

    .line 307
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 308
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0
.end method

.method private onReadDataProfilesFromModem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 216
    const-string v4, "OMH: onReadDataProfilesFromModem()"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 217
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    .line 219
    iput v8, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 221
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 222
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 223
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 226
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->values()[Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 227
    .local v3, p:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMH: Reading profiles for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 228
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 229
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v5

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    invoke-virtual {p0, v6, v7, v8, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallProfile(ILandroid/os/Message;)V

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v3           #p:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    :cond_0
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 152
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 156
    :goto_0
    return-object v0

    .line 154
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private readDataProfilesFromModem()V
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string v0, "OMH is disabled, ignoring request!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearActiveDataProfile()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 421
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "CDMA"

    const-string v1, "CdmaDataProfileTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method protected getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->getServiceTypes()[Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, result:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 445
    .end local v0           #result:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 446
    .restart local v0       #result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getDataProfile(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfile;
    .locals 5
    .parameter "serviceType"

    .prologue
    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataProfile: serviceType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 330
    const/4 v2, 0x0

    .line 333
    .local v2, profile:Lcom/android/internal/telephony/dataconnection/DataProfile;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 334
    .local v0, dp:Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;->PROFILE_TYPE_OMH:Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;

    if-ne v3, v4, :cond_0

    .line 340
    :cond_1
    move-object v2, v0

    .line 345
    .end local v0           #dp:Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_2
    if-nez v2, :cond_5

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataProfile: OMH profile not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 348
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 349
    .restart local v0       #dp:Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    move-object v2, v0

    .line 355
    .end local v0           #dp:Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataProfile: using hardcoded profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 359
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataProfile: return profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 360
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_0

    .line 178
    const-string v0, "CDMA"

    const-string v1, "Ignore CDMA msgs since CDMA phone is inactive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    return-void

    .line 182
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 196
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 184
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->loadProfiles()V

    goto :goto_0

    .line 187
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->onReadDataProfilesFromModem()V

    goto :goto_0

    .line 191
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 432
    sget-object v0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->SUPPORTED_APN_TYPES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 433
    .local v3, s:Ljava/lang/String;
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    const/4 v4, 0x1

    .line 437
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 432
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isOmhEnabled()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    return v0
.end method

.method loadProfiles()V
    .locals 1

    .prologue
    .line 136
    const-string v0, "loadProfiles..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 139
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->readDataProfilesFromModem()V

    .line 140
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 452
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDataProfileTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 456
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDataProfileTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void
.end method

.method public registerForModemProfileReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 167
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 168
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 169
    return-void
.end method

.method public unregisterForModemProfileReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 173
    return-void
.end method
