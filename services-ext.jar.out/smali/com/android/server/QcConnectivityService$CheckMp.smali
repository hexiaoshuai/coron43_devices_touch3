.class Lcom/android/server/QcConnectivityService$CheckMp;
.super Landroid/os/AsyncTask;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckMp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/QcConnectivityService$CheckMp$CallBack;,
        Lcom/android/server/QcConnectivityService$CheckMp$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/QcConnectivityService$CheckMp$Params;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHECKMP_TAG:Ljava/lang/String; = "CheckMp"

.field public static final MAX_TIMEOUT_MS:I = 0xea60

.field private static final SOCKET_TIMEOUT_MS:I = 0x1388


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCs:Lcom/android/server/QcConnectivityService;

.field private mParams:Lcom/android/server/QcConnectivityService$CheckMp$Params;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/QcConnectivityService;)V
    .locals 2
    .parameter "context"
    .parameter "cs"

    .prologue
    .line 5450
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5451
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    .line 5452
    iput-object p2, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    .line 5455
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    .line 5457
    return-void
.end method

.method private inetAddressesToString([Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 7
    .parameter "addresses"

    .prologue
    .line 5653
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 5654
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 5655
    .local v2, firstTime:Z
    move-object v1, p1

    .local v1, arr$:[Ljava/net/InetAddress;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 5656
    .local v0, addr:Ljava/net/InetAddress;
    if-eqz v2, :cond_0

    .line 5657
    const/4 v2, 0x0

    .line 5661
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 5655
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5659
    :cond_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 5663
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private declared-synchronized isMobileOk(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Ljava/lang/Integer;
    .locals 28
    .parameter "params"

    .prologue
    .line 5478
    monitor-enter p0

    const/16 v24, 0x0

    :try_start_0
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 5479
    .local v18, result:Ljava/lang/Integer;
    #getter for: Lcom/android/server/QcConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/QcConnectivityService$CheckMp$Params;->access$21400(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 5480
    .local v15, orgUri:Landroid/net/Uri;
    new-instance v16, Ljava/util/Random;

    invoke-direct/range {v16 .. v16}, Ljava/util/Random;-><init>()V

    .line 5481
    .local v16, rand:Ljava/util/Random;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/QcConnectivityService$CheckMp;->mParams:Lcom/android/server/QcConnectivityService$CheckMp$Params;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5484
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/QcConnectivityService;->isNetworkSupported(I)Z

    move-result v24

    if-nez v24, :cond_0

    .line 5485
    const-string v24, "isMobileOk: not mobile capable"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5486
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    .line 5630
    :try_start_2
    const-string v24, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/QcConnectivityService;->access$21500(Lcom/android/server/QcConnectivityService;I)V

    .line 5632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "enableHIPRI"

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 5634
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: X result="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v19, v18

    .line 5636
    .end local v18           #result:Ljava/lang/Integer;
    .local v19, result:Ljava/lang/Integer;
    :goto_0
    monitor-exit p0

    return-object v19

    .line 5492
    .end local v19           #result:Ljava/lang/Integer;
    .restart local v18       #result:Ljava/lang/Integer;
    :cond_0
    :try_start_3
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: start hipri url="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    #getter for: Lcom/android/server/QcConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/QcConnectivityService$CheckMp$Params;->access$21400(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/QcConnectivityService;->access$21500(Lcom/android/server/QcConnectivityService;I)V

    .line 5496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    #getter for: Lcom/android/server/QcConnectivityService$CheckMp$Params;->mTimeOutMs:J
    invoke-static/range {p1 .. p1}, Lcom/android/server/QcConnectivityService$CheckMp$Params;->access$21600(Lcom/android/server/QcConnectivityService$CheckMp$Params;)J

    move-result-wide v26

    add-long v7, v24, v26

    .line 5499
    .local v7, endTime:J
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    .line 5500
    .local v5, binder:Landroid/os/Binder;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    cmp-long v24, v24, v7

    if-gez v24, :cond_2

    .line 5501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "enableHIPRI"

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/QcConnectivityService;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v20

    .line 5503
    .local v20, ret:I
    if-eqz v20, :cond_1

    const/16 v24, 0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 5505
    :cond_1
    const-string v24, "isMobileOk: hipri started"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5514
    .end local v20           #ret:I
    :cond_2
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v24

    cmp-long v24, v24, v7

    if-gez v24, :cond_b

    .line 5519
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v21

    .line 5521
    .local v21, state:Landroid/net/NetworkInfo$State;
    sget-object v24, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 5522
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: not connected ni="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5524
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V

    .line 5525
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v18

    goto :goto_2

    .line 5508
    .end local v21           #state:Landroid/net/NetworkInfo$State;
    .restart local v20       #ret:I
    :cond_3
    :try_start_5
    const-string v24, "isMobileOk: hipri not started yet"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5509
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 5510
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 5630
    .end local v5           #binder:Landroid/os/Binder;
    .end local v7           #endTime:J
    .end local v20           #ret:I
    :catchall_0
    move-exception v24

    :try_start_6
    const-string v25, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/QcConnectivityService;->access$21500(Lcom/android/server/QcConnectivityService;I)V

    .line 5632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "enableHIPRI"

    invoke-virtual/range {v25 .. v27}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 5634
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isMobileOk: X result="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    throw v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5478
    .end local v15           #orgUri:Landroid/net/Uri;
    .end local v16           #rand:Ljava/util/Random;
    .end local v18           #result:Ljava/lang/Integer;
    :catchall_1
    move-exception v24

    monitor-exit p0

    throw v24

    .line 5536
    .restart local v5       #binder:Landroid/os/Binder;
    .restart local v7       #endTime:J
    .restart local v15       #orgUri:Landroid/net/Uri;
    .restart local v16       #rand:Ljava/util/Random;
    .restart local v18       #result:Ljava/lang/Integer;
    .restart local v21       #state:Landroid/net/NetworkInfo$State;
    :cond_4
    :try_start_7
    invoke-virtual {v15}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v4

    .line 5542
    .local v4, addresses:[Ljava/net/InetAddress;
    :try_start_8
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: addresses="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/QcConnectivityService$CheckMp;->inetAddressesToString([Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/QcConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v13

    .line 5547
    .local v13, lp:Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/QcConnectivityService$CheckMp;->hasIPv4Address(Landroid/net/LinkProperties;)Z

    move-result v10

    .line 5548
    .local v10, linkHasIpv4:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/QcConnectivityService$CheckMp;->hasIPv6Address(Landroid/net/LinkProperties;)Z

    move-result v11

    .line 5549
    .local v11, linkHasIpv6:Z
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: linkHasIpv4="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " linkHasIpv6="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5554
    const/16 v24, 0x3

    array-length v0, v4

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 5555
    .local v12, loops:I
    const/16 v23, 0x0

    .local v23, validAddr:I
    const/4 v3, 0x0

    .line 5557
    .local v3, addrTried:I
    :goto_3
    move/from16 v0, v23

    if-ge v0, v12, :cond_a

    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v3, v0, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    cmp-long v24, v24, v7

    if-gez v24, :cond_a

    .line 5561
    array-length v0, v4

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v24

    aget-object v9, v4, v24

    .line 5562
    .local v9, hostAddr:Ljava/net/InetAddress;
    instance-of v0, v9, Ljava/net/Inet4Address;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    if-nez v10, :cond_6

    :cond_5
    instance-of v0, v9, Ljava/net/Inet6Address;

    move/from16 v24, v0

    if-eqz v24, :cond_8

    if-eqz v11, :cond_8

    .line 5565
    :cond_6
    add-int/lit8 v23, v23, 0x1

    .line 5572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/QcConnectivityService;->requestRouteToHostAddress(I[B)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 5575
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: wait to establish route to hostAddr="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5577
    const/16 v24, 0x3

    invoke-static/range {v24 .. v24}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V

    .line 5587
    new-instance v14, Ljava/net/URL;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "://"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5589
    .local v14, newUrl:Ljava/net/URL;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: newUrl="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 5591
    const/16 v22, 0x0

    .line 5594
    .local v22, urlConn:Ljava/net/HttpURLConnection;
    :try_start_9
    sget-object v24, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    .line 5596
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 5597
    const/16 v24, 0x1388

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 5598
    const/16 v24, 0x1388

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 5599
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 5600
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 5601
    const-string v24, "Connection"

    const-string v25, "close"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5602
    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 5603
    .local v17, responseCode:I
    const/16 v24, 0xcc

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 5604
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 5608
    :goto_4
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: connected responseCode="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5609
    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 5610
    const/16 v22, 0x0

    .line 5630
    :try_start_a
    const-string v24, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/QcConnectivityService;->access$21500(Lcom/android/server/QcConnectivityService;I)V

    .line 5632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "enableHIPRI"

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 5634
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: X result="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v19, v18

    .end local v18           #result:Ljava/lang/Integer;
    .restart local v19       #result:Ljava/lang/Integer;
    goto/16 :goto_0

    .line 5537
    .end local v3           #addrTried:I
    .end local v4           #addresses:[Ljava/net/InetAddress;
    .end local v9           #hostAddr:Ljava/net/InetAddress;
    .end local v10           #linkHasIpv4:Z
    .end local v11           #linkHasIpv6:Z
    .end local v12           #loops:I
    .end local v13           #lp:Landroid/net/LinkProperties;
    .end local v14           #newUrl:Ljava/net/URL;
    .end local v17           #responseCode:I
    .end local v19           #result:Ljava/lang/Integer;
    .end local v22           #urlConn:Ljava/net/HttpURLConnection;
    .end local v23           #validAddr:I
    .restart local v18       #result:Ljava/lang/Integer;
    :catch_0
    move-exception v6

    .line 5538
    .local v6, e:Ljava/net/UnknownHostException;
    :try_start_b
    const-string v24, "isMobileOk: UnknownHostException"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5539
    const/16 v24, 0x3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    move-result-object v18

    .line 5630
    :try_start_c
    const-string v24, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/QcConnectivityService;->access$21500(Lcom/android/server/QcConnectivityService;I)V

    .line 5632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "enableHIPRI"

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 5634
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: X result="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v19, v18

    .end local v18           #result:Ljava/lang/Integer;
    .restart local v19       #result:Ljava/lang/Integer;
    goto/16 :goto_0

    .line 5579
    .end local v6           #e:Ljava/net/UnknownHostException;
    .end local v19           #result:Ljava/lang/Integer;
    .restart local v3       #addrTried:I
    .restart local v4       #addresses:[Ljava/net/InetAddress;
    .restart local v9       #hostAddr:Ljava/net/InetAddress;
    .restart local v10       #linkHasIpv4:Z
    .restart local v11       #linkHasIpv6:Z
    .restart local v12       #loops:I
    .restart local v13       #lp:Landroid/net/LinkProperties;
    .restart local v18       #result:Ljava/lang/Integer;
    .restart local v23       #validAddr:I
    :cond_7
    :try_start_d
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: could not establish route to hostAddr="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 5558
    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 5606
    .restart local v14       #newUrl:Ljava/net/URL;
    .restart local v17       #responseCode:I
    .restart local v22       #urlConn:Ljava/net/HttpURLConnection;
    :cond_9
    const/16 v24, 0x2

    :try_start_e
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    move-result-object v18

    goto/16 :goto_4

    .line 5612
    .end local v17           #responseCode:I
    :catch_1
    move-exception v6

    .line 5613
    .local v6, e:Ljava/lang/Exception;
    :try_start_f
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: HttpURLConnection Exception e="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5614
    if-eqz v22, :cond_8

    .line 5615
    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_5

    .line 5623
    .end local v3           #addrTried:I
    .end local v4           #addresses:[Ljava/net/InetAddress;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #hostAddr:Ljava/net/InetAddress;
    .end local v10           #linkHasIpv4:Z
    .end local v11           #linkHasIpv6:Z
    .end local v12           #loops:I
    .end local v13           #lp:Landroid/net/LinkProperties;
    .end local v14           #newUrl:Ljava/net/URL;
    .end local v21           #state:Landroid/net/NetworkInfo$State;
    .end local v22           #urlConn:Ljava/net/HttpURLConnection;
    .end local v23           #validAddr:I
    :catch_2
    move-exception v6

    .line 5624
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_10
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: Exception e="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 5620
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #addrTried:I
    .restart local v4       #addresses:[Ljava/net/InetAddress;
    .restart local v10       #linkHasIpv4:Z
    .restart local v11       #linkHasIpv6:Z
    .restart local v12       #loops:I
    .restart local v13       #lp:Landroid/net/LinkProperties;
    .restart local v21       #state:Landroid/net/NetworkInfo$State;
    .restart local v23       #validAddr:I
    :cond_a
    const/16 v24, 0x4

    :try_start_11
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 5621
    const-string v24, "isMobileOk: loops|timed out"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    .line 5630
    :try_start_12
    const-string v24, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/QcConnectivityService;->access$21500(Lcom/android/server/QcConnectivityService;I)V

    .line 5632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "enableHIPRI"

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 5634
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: X result="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object/from16 v19, v18

    .end local v18           #result:Ljava/lang/Integer;
    .restart local v19       #result:Ljava/lang/Integer;
    goto/16 :goto_0

    .line 5628
    .end local v3           #addrTried:I
    .end local v4           #addresses:[Ljava/net/InetAddress;
    .end local v10           #linkHasIpv4:Z
    .end local v11           #linkHasIpv6:Z
    .end local v12           #loops:I
    .end local v13           #lp:Landroid/net/LinkProperties;
    .end local v19           #result:Ljava/lang/Integer;
    .end local v21           #state:Landroid/net/NetworkInfo$State;
    .end local v23           #validAddr:I
    .restart local v18       #result:Ljava/lang/Integer;
    :cond_b
    :try_start_13
    const-string v24, "isMobileOk: timed out"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 5630
    :try_start_14
    const-string v24, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/QcConnectivityService;->access$21500(Lcom/android/server/QcConnectivityService;I)V

    .line 5632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "enableHIPRI"

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 5634
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isMobileOk: X result="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-object/from16 v19, v18

    .line 5636
    .end local v18           #result:Ljava/lang/Integer;
    .restart local v19       #result:Ljava/lang/Integer;
    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 5709
    const-string v0, "QcConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CheckMp] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5710
    return-void
.end method

.method private printNetworkInfo()V
    .locals 9

    .prologue
    .line 5667
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    .line 5668
    .local v1, hasIccCard:Z
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    .line 5669
    .local v6, simState:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasIccCard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " simState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5671
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    invoke-virtual {v7}, Lcom/android/server/QcConnectivityService;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    .line 5672
    .local v5, ni:[Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    .line 5673
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ni.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5674
    move-object v0, v5

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 5675
    .local v4, netInfo:Landroid/net/NetworkInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "netInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5674
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5678
    .end local v0           #arr$:[Landroid/net/NetworkInfo;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    const-string v7, "no network info ni=null"

    invoke-direct {p0, v7}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5680
    :cond_1
    return-void
.end method

.method private static sleep(I)V
    .locals 3
    .parameter "seconds"

    .prologue
    .line 5688
    mul-int/lit16 v1, p0, 0x3e8

    int-to-long v1, v1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5692
    :goto_0
    return-void

    .line 5689
    :catch_0
    move-exception v0

    .line 5690
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/server/QcConnectivityService$CheckMp$Params;)Ljava/lang/Integer;
    .locals 1
    .parameter "params"

    .prologue
    .line 5641
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService$CheckMp;->isMobileOk(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5411
    check-cast p1, [Lcom/android/server/QcConnectivityService$CheckMp$Params;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$CheckMp;->doInBackground([Lcom/android/server/QcConnectivityService$CheckMp$Params;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5464
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "captive_portal_server"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5466
    .local v0, server:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5467
    const-string v0, "clients3.google.com"

    .line 5469
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasIPv4Address(Landroid/net/LinkProperties;)Z
    .locals 1
    .parameter "lp"

    .prologue
    .line 5695
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    return v0
.end method

.method public hasIPv6Address(Landroid/net/LinkProperties;)Z
    .locals 3
    .parameter "lp"

    .prologue
    .line 5700
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 5701
    .local v0, address:Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 5702
    const/4 v2, 0x1

    .line 5705
    .end local v0           #address:Landroid/net/LinkAddress;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 5646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5647
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mParams:Lcom/android/server/QcConnectivityService$CheckMp$Params;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mParams:Lcom/android/server/QcConnectivityService$CheckMp$Params;

    #getter for: Lcom/android/server/QcConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/QcConnectivityService$CheckMp$CallBack;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService$CheckMp$Params;->access$21700(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Lcom/android/server/QcConnectivityService$CheckMp$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5648
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mParams:Lcom/android/server/QcConnectivityService$CheckMp$Params;

    #getter for: Lcom/android/server/QcConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/QcConnectivityService$CheckMp$CallBack;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService$CheckMp$Params;->access$21700(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Lcom/android/server/QcConnectivityService$CheckMp$CallBack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/QcConnectivityService$CheckMp$CallBack;->onComplete(Ljava/lang/Integer;)V

    .line 5650
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5411
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$CheckMp;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
