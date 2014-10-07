.class public Lcom/android/server/PPPOEService;
.super Ljava/lang/Object;
.source "PPPOEService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PPPOEService$NetdCallbackReceiver;,
        Lcom/android/server/PPPOEService$NetdResponseCode;
    }
.end annotation


# static fields
.field public static final ACTION_PPPOE_COMPLETE:Ljava/lang/String; = "android.net.wifi.PPPOE_COMPLETED_ACTION"

.field public static final ACTION_PPPOE_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.PPPOE_STATE_CHANGED"

.field public static final CMD_START_PPPOE:I = 0x0

.field public static final CMD_STOP_PPPOE:I = 0x1

.field public static final EXTRA_PPPOE_RESULT_ERROR_CODE:Ljava/lang/String; = "pppoe_result_error_code"

.field public static final EXTRA_PPPOE_RESULT_STATUS:Ljava/lang/String; = "pppoe_result_status"

.field public static final EXTRA_PPPOE_STATE:Ljava/lang/String; = "pppoe_state"

.field public static final NETD_TAG:Ljava/lang/String; = "PPPOEService_Netd"

.field public static final PPPOEEXIT:I = 0x29a

.field public static final PPPOE_MODULE:Ljava/lang/String; = "pppoe"

.field public static final SYSTEM_DNS1:Ljava/lang/String; = "net.dns1"

.field public static final SYSTEM_DNS2:Ljava/lang/String; = "net.dns2"

.field public static final TAG:Ljava/lang/String; = "PPPOEService"


# instance fields
.field private mConnectedtime:J

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDoCommand:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v0, p0, Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PPPOEService;->mDoCommand:Z

    .line 219
    new-instance v0, Lcom/android/server/PPPOEService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PPPOEService$1;-><init>(Lcom/android/server/PPPOEService;)V

    iput-object v0, p0, Lcom/android/server/PPPOEService;->mMainHandler:Landroid/os/Handler;

    .line 125
    iput-object p1, p0, Lcom/android/server/PPPOEService;->mContext:Landroid/content/Context;

    .line 127
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    new-instance v1, Lcom/android/server/PPPOEService$NetdCallbackReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/PPPOEService$NetdCallbackReceiver;-><init>(Lcom/android/server/PPPOEService;Lcom/android/server/PPPOEService$1;)V

    const-string v2, "netd"

    const/16 v3, 0xa

    const-string v4, "PPPOEService_Netd"

    const/16 v5, 0xa0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/PPPOEService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 129
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/PPPOEService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "PPPOEService_Netd"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/PPPOEService;->mThread:Ljava/lang/Thread;

    .line 130
    iget-object v0, p0, Lcom/android/server/PPPOEService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PPPOEService;)Landroid/net/wifi/PPPOEInfo$Status;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/PPPOEService;Landroid/net/wifi/PPPOEInfo$Status;)Landroid/net/wifi/PPPOEInfo$Status;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/PPPOEService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/PPPOEService;->setRouteAndDNS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/PPPOEService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/android/server/PPPOEService;->mConnectedtime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/PPPOEService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/PPPOEService;->notifyStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/PPPOEService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/PPPOEService;->mDoCommand:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/PPPOEService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/PPPOEService;->mDoCommand:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/PPPOEService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/PPPOEService;->sendCommandComplete(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PPPOEService;Landroid/net/wifi/PPPOEConfig;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/PPPOEService;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/PPPOEService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/PPPOEService;->stopPPPOE()V

    return-void
.end method

.method private notifyStatusChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PPPOE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pppoe_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lcom/android/server/PPPOEService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 289
    return-void
.end method

.method private sendCommandComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "status"
    .parameter "errno"

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pppoe_result_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v1, "pppoe_result_error_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/android/server/PPPOEService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 297
    return-void
.end method

.method private setRouteAndDNS(Ljava/lang/String;)V
    .locals 19
    .parameter "iface"

    .prologue
    .line 301
    const/4 v4, 0x0

    .line 303
    .local v4, gateway:Ljava/lang/String;
    const-string v14, "network_management"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 304
    .local v2, b:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v7

    .line 306
    .local v7, mNwService:Landroid/os/INetworkManagementService;
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Landroid/os/INetworkManagementService;->getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;

    move-result-object v13

    .line 307
    .local v13, ris:[Landroid/net/RouteInfo;
    move-object v1, v13

    .local v1, arr$:[Landroid/net/RouteInfo;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v12, v1, v5

    .line 308
    .local v12, ri:Landroid/net/RouteInfo;
    if-eqz v12, :cond_1

    .line 309
    invoke-virtual {v12}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 316
    .end local v1           #arr$:[Landroid/net/RouteInfo;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v12           #ri:Landroid/net/RouteInfo;
    .end local v13           #ris:[Landroid/net/RouteInfo;
    :cond_0
    :goto_1
    const-string v14, "PPPOEService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setRouteAndDNS iface is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " gateway is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PPPOEService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v15, "pppoe"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "route"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "setdefault"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object p1, v16, v17

    const/16 v17, 0x3

    aput-object v4, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "net."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".dns1"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 325
    .local v8, pppDNS1Property:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "net."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".dns2"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, pppDNS2Property:Ljava/lang/String;
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 327
    .local v10, pppDns1:Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 329
    .local v11, pppDns2:Ljava/lang/String;
    const-string v14, "PPPOEService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setRouteAndDNS get prop "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v14, "PPPOEService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setRouteAndDNS get prop "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v14, 0x2

    :try_start_2
    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v7, v0, v14, v15}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 339
    :goto_3
    const-string v14, "net.dns1"

    invoke-static {v14, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v14, "net.dns2"

    invoke-static {v14, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void

    .line 307
    .end local v8           #pppDNS1Property:Ljava/lang/String;
    .end local v9           #pppDNS2Property:Ljava/lang/String;
    .end local v10           #pppDns1:Ljava/lang/String;
    .end local v11           #pppDns2:Ljava/lang/String;
    .restart local v1       #arr$:[Landroid/net/RouteInfo;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v12       #ri:Landroid/net/RouteInfo;
    .restart local v13       #ris:[Landroid/net/RouteInfo;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 313
    .end local v1           #arr$:[Landroid/net/RouteInfo;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v12           #ri:Landroid/net/RouteInfo;
    .end local v13           #ris:[Landroid/net/RouteInfo;
    :catch_0
    move-exception v3

    .line 314
    .local v3, e:Landroid/os/RemoteException;
    const-string v14, "PPPOEService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 319
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 320
    .local v3, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v14, "PPPOEService"

    const-string v15, "problem set ppp route"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 335
    .end local v3           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v8       #pppDNS1Property:Ljava/lang/String;
    .restart local v9       #pppDNS2Property:Ljava/lang/String;
    .restart local v10       #pppDns1:Ljava/lang/String;
    .restart local v11       #pppDns2:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 336
    .local v3, e:Landroid/os/RemoteException;
    const-string v14, "PPPOEService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 12
    .parameter "config"

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x4

    .line 240
    const/4 v3, 0x0

    .line 242
    .local v3, event:Lcom/android/server/NativeDaemonEvent;
    :try_start_0
    sget-object v4, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v4, p0, Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;

    .line 243
    const-string v4, "PPPOE_STATE_CONNECTING"

    invoke-direct {p0, v4}, Lcom/android/server/PPPOEService;->notifyStatusChanged(Ljava/lang/String;)V

    .line 244
    iget-object v4, p0, Lcom/android/server/PPPOEService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "pppoe"

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "start"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p1, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p1, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget v8, p1, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget v8, p1, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget v8, p1, Landroid/net/wifi/PPPOEConfig;->mtu:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget v8, p1, Landroid/net/wifi/PPPOEConfig;->mru:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    iget v8, p1, Landroid/net/wifi/PPPOEConfig;->timeout:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x9

    iget v8, p1, Landroid/net/wifi/PPPOEConfig;->MSS:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v3

    .line 249
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/PPPOEService;->mDoCommand:Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    if-eqz v3, :cond_0

    .line 254
    const-string v4, "PPPOEService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startPPPOE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, cooked:[Ljava/lang/String;
    const-string v4, "PPPOEService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cooked.length is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cooked[4] is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 258
    array-length v4, v0

    if-ne v4, v11, :cond_0

    aget-object v4, v0, v9

    const-string v5, "failed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    aget-object v2, v0, v10

    .line 261
    .local v2, errno:Ljava/lang/String;
    const-string v4, "16"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    sget-object v4, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v4, p0, Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;

    .line 263
    const-string v4, "ALREADY_ONLINE"

    invoke-direct {p0, v4, v2}, Lcom/android/server/PPPOEService;->sendCommandComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v0           #cooked:[Ljava/lang/String;
    .end local v2           #errno:Ljava/lang/String;
    :cond_0
    return-void

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v4, "PPPOEService"

    const-string v5, "problem start pppoe"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopPPPOE()V
    .locals 6

    .prologue
    .line 272
    const-string v1, "PPPOE_STATE_DISCONNECTING"

    invoke-direct {p0, v1}, Lcom/android/server/PPPOEService;->notifyStatusChanged(Ljava/lang/String;)V

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PPPOEService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "pppoe"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "stop"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "PPPOEService"

    const-string v2, "problem stop pppoe"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/PPPOEService;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 4

    .prologue
    .line 281
    new-instance v0, Landroid/net/wifi/PPPOEInfo;

    iget-object v1, p0, Lcom/android/server/PPPOEService;->mPppoeStatus:Landroid/net/wifi/PPPOEInfo$Status;

    iget-wide v2, p0, Lcom/android/server/PPPOEService;->mConnectedtime:J

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/PPPOEInfo;-><init>(Landroid/net/wifi/PPPOEInfo$Status;J)V

    return-object v0
.end method
