.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;,
        Landroid/net/wifi/WifiManager$ServiceHandler;,
        Landroid/net/wifi/WifiManager$TxPacketCountListener;,
        Landroid/net/wifi/WifiManager$WpsListener;,
        Landroid/net/wifi/WifiManager$ActionListener;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ACTION_REQUEST_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

.field private static final BASE:I = 0x25000

.field public static final BUSY:I = 0x2

.field public static final CANCEL_WPS:I = 0x2500e

.field public static final CANCEL_WPS_FAILED:I = 0x2500f

.field public static final CANCEL_WPS_SUCCEDED:I = 0x25010

.field public static final CHANGE_REASON_ADDED:I = 0x0

.field public static final CHANGE_REASON_CONFIG_CHANGE:I = 0x2

.field public static final CHANGE_REASON_REMOVED:I = 0x1

.field public static final CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

.field public static final CONNECT_NETWORK:I = 0x25001

.field public static final CONNECT_NETWORK_FAILED:I = 0x25002

.field public static final CONNECT_NETWORK_SUCCEEDED:I = 0x25003

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DISABLE_NETWORK:I = 0x25011

.field public static final DISABLE_NETWORK_FAILED:I = 0x25012

.field public static final DISABLE_NETWORK_SUCCEEDED:I = 0x25013

.field public static final ERROR:I = 0x0

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CHANGE_REASON:Ljava/lang/String; = "changeReason"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_MULTIPLE_NETWORKS_CHANGED:Ljava/lang/String; = "multipleChanges"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SCAN_AVAILABLE:Ljava/lang/String; = "scan_enabled"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_CONFIGURATION:Ljava/lang/String; = "wifiConfiguration"

.field public static final EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final FORGET_NETWORK:I = 0x25004

.field public static final FORGET_NETWORK_FAILED:I = 0x25005

.field public static final FORGET_NETWORK_SUCCEEDED:I = 0x25006

.field private static final INVALID_KEY:I = 0x0

.field public static final IN_PROGRESS:I = 0x1

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final RSSI_LEVELS:I = 0x5

.field public static final RSSI_PKTCNT_FETCH:I = 0x25014

.field public static final RSSI_PKTCNT_FETCH_FAILED:I = 0x25016

.field public static final RSSI_PKTCNT_FETCH_SUCCEEDED:I = 0x25015

.field public static final SAVE_NETWORK:I = 0x25007

.field public static final SAVE_NETWORK_FAILED:I = 0x25008

.field public static final SAVE_NETWORK_SUCCEEDED:I = 0x25009

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final START_WPS:I = 0x2500a

.field public static final START_WPS_SUCCEEDED:I = 0x2500b

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe

.field public static final WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final WIFI_FREQUENCY_BAND_AUTO:I = 0x0

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_SCAN_AVAILABLE:Ljava/lang/String; = "wifi_scan_available"

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WPS_AUTH_FAILURE:I = 0x6

.field public static final WPS_COMPLETED:I = 0x2500d

.field public static final WPS_FAILED:I = 0x2500c

.field public static final WPS_OVERLAP_ERROR:I = 0x3

.field public static final WPS_TIMED_OUT:I = 0x7

.field public static final WPS_TKIP_ONLY_PROHIBITED:I = 0x5

.field public static final WPS_WEP_PROHIBITED:I = 0x4

.field private static sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private static sConnected:Ljava/util/concurrent/CountDownLatch;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sListenerKey:I

.field private static final sListenerMap:Landroid/util/SparseArray;

.field private static final sListenerMapLock:Ljava/lang/Object;

.field private static sThreadRefCount:I

.field private static final sThreadRefLock:Ljava/lang/Object;


# instance fields
.field private mActiveLockCount:I

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x1

    sput v0, Landroid/net/wifi/WifiManager;->sListenerKey:I

    .line 531
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    .line 532
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    .line 537
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiManager;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 554
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 555
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->init()V

    .line 556
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 557
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-static {p0}, Landroid/net/wifi/WifiManager;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/internal/util/AsyncChannel;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-object p0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$508(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$510(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 640
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 642
    :goto_0
    return v1

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static calculateSignalLevel(II)I
    .locals 3
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    .line 963
    const/16 v2, -0x64

    if-gt p0, v2, :cond_0

    .line 964
    const/4 v2, 0x0

    .line 970
    :goto_0
    return v2

    .line 965
    :cond_0
    const/16 v2, -0x37

    if-lt p0, v2, :cond_1

    .line 966
    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    .line 968
    :cond_1
    const/high16 v0, 0x4234

    .line 969
    .local v0, inputRange:F
    add-int/lit8 v2, p1, -0x1

    int-to-float v1, v2

    .line 970
    .local v1, outputRange:F
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_0
.end method

.method public static compareSignalLevel(II)I
    .locals 1
    .parameter "rssiA"
    .parameter "rssiB"

    .prologue
    .line 984
    sub-int v0, p0, p1

    return v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1388
    sget-object v4, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1389
    :try_start_0
    sget v3, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    if-ne v3, v5, :cond_1

    .line 1390
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v2

    .line 1391
    .local v2, messenger:Landroid/os/Messenger;
    if-nez v2, :cond_0

    .line 1392
    const/4 v3, 0x0

    sput-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 1393
    monitor-exit v4

    .line 1410
    .end local v2           #messenger:Landroid/os/Messenger;
    :goto_0
    return-void

    .line 1396
    .restart local v2       #messenger:Landroid/os/Messenger;
    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "WifiManager"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    .line 1397
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    sput-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 1398
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    .line 1400
    sget-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1401
    new-instance v1, Landroid/net/wifi/WifiManager$ServiceHandler;

    sget-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/WifiManager$ServiceHandler;-><init>(Landroid/os/Looper;)V

    .line 1402
    .local v1, handler:Landroid/os/Handler;
    sget-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    :try_start_1
    sget-object v3, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1409
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #messenger:Landroid/os/Messenger;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1405
    .restart local v1       #handler:Landroid/os/Handler;
    .restart local v2       #messenger:Landroid/os/Messenger;
    :catch_0
    move-exception v0

    .line 1406
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "WifiManager"

    const-string v5, "interrupted wait at init"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static putListener(Ljava/lang/Object;)I
    .locals 3
    .parameter "listener"

    .prologue
    .line 1367
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1375
    :goto_0
    return v0

    .line 1369
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1371
    :cond_1
    :try_start_0
    sget v0, Landroid/net/wifi/WifiManager;->sListenerKey:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/net/wifi/WifiManager;->sListenerKey:I

    .line 1372
    .local v0, key:I
    if-eqz v0, :cond_1

    .line 1373
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1374
    monitor-exit v2

    goto :goto_0

    .end local v0           #key:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static removeListener(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 1379
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1383
    :goto_0
    return-object v0

    .line 1380
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1381
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1382
    .local v0, listener:Ljava/lang/Object;
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 1383
    monitor-exit v2

    goto :goto_0

    .line 1384
    .end local v0           #listener:Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private validateChannel()V
    .locals 2

    .prologue
    .line 1413
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No permission to access and change wifi or a bad initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1415
    :cond_0
    return-void
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    const/4 v0, -0x1

    .line 601
    if-nez p1, :cond_0

    .line 605
    :goto_0
    return v0

    .line 604
    :cond_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 605
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .parameter "bssid"

    .prologue
    .line 1117
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addToBlacklist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    const/4 v1, 0x1

    .line 1120
    :goto_0
    return v1

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelWps(Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1543
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1544
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500e

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1545
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 1

    .prologue
    .line 2013
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->captivePortalCheckComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2015
    :goto_0
    return-void

    .line 2014
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearBlacklist()Z
    .locals 2

    .prologue
    .line 1134
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->clearBlacklist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    const/4 v1, 0x1

    .line 1137
    :goto_0
    return v1

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connect(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .parameter "networkId"
    .parameter "listener"

    .prologue
    .line 1456
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1457
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1458
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25001

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1459
    return-void
.end method

.method public connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter "config"
    .parameter "listener"

    .prologue
    .line 1434
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1435
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1438
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25001

    const/4 v2, -0x1

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1440
    return-void
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 2
    .parameter "tag"

    .prologue
    .line 1821
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 2
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 1787
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3
    .parameter "tag"

    .prologue
    .line 1803
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disable(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .parameter "netId"
    .parameter "listener"

    .prologue
    .line 1514
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1515
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1516
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25011

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1517
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 691
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 693
    :goto_0
    return v1

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 2

    .prologue
    .line 704
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    const/4 v1, 0x1

    .line 707
    :goto_0
    return v1

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 676
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 678
    :goto_0
    return v1

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2019
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2020
    :try_start_1
    sget v0, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2021
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 2023
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2025
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2027
    return-void

    .line 2023
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2025
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .parameter "netId"
    .parameter "listener"

    .prologue
    .line 1499
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1500
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1501
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25004

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1502
    return-void
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1583
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfigFile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1585
    :goto_0
    return-object v1

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 582
    :goto_0
    return-object v1

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    .line 777
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 779
    :goto_0
    return-object v1

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    .line 894
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 896
    :goto_0
    return-object v1

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFrequencyBand()I
    .locals 2

    .prologue
    .line 867
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFrequencyBand()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 869
    :goto_0
    return v1

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 2

    .prologue
    .line 2054
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2056
    :goto_0
    return-object v1

    .line 2055
    :catch_0
    move-exception v0

    .line 2056
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getScanResults(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 791
    :goto_0
    return-object v1

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTxPacketCount(Landroid/net/wifi/WifiManager$TxPacketCountListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 948
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 949
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25014

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 950
    return-void
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1044
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1046
    :goto_0
    return-object v1

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApState()I
    .locals 2

    .prologue
    .line 1019
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1021
    :goto_0
    return v1

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, e:Landroid/os/RemoteException;
    const/16 v1, 0xe

    goto :goto_0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1556
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1560
    :goto_0
    return-object v1

    .line 1557
    :catch_0
    move-exception v0

    .line 1558
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 1559
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1560
    .local v0, e:Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public getWifiState()I
    .locals 2

    .prologue
    .line 926
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 928
    :goto_0
    return v1

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1571
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiStateMachineMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1573
    :goto_0
    return-object v1

    .line 1572
    :catch_0
    move-exception v0

    .line 1573
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initializeMulticastFiltering()Z
    .locals 2

    .prologue
    .line 2003
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2004
    const/4 v1, 0x1

    .line 2006
    :goto_0
    return v1

    .line 2005
    :catch_0
    move-exception v0

    .line 2006
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 880
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 882
    :goto_0
    return v1

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 1991
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1993
    :goto_0
    return v1

    .line 1992
    :catch_0
    move-exception v0

    .line 1993
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 2

    .prologue
    .line 805
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isScanAlwaysAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 807
    :goto_0
    return v1

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiApEnabled()Z
    .locals 2

    .prologue
    .line 1033
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiEnabled()Z
    .locals 2

    .prologue
    .line 938
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pingSupplicant()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 747
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_0

    .line 752
    :goto_0
    return v1

    .line 750
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public reassociate()Z
    .locals 2

    .prologue
    .line 734
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    const/4 v1, 0x1

    .line 737
    :goto_0
    return v1

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    .line 719
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    const/4 v1, 0x1

    .line 722
    :goto_0
    return v1

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 656
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 658
    :goto_0
    return v1

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter "config"
    .parameter "listener"

    .prologue
    .line 1480
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1481
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1482
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25007

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1483
    return-void
.end method

.method public saveConfiguration()Z
    .locals 2

    .prologue
    .line 822
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 824
    :goto_0
    return v1

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 1
    .parameter "country"
    .parameter "persist"

    .prologue
    .line 837
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :goto_0
    return-void

    .line 838
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setFrequencyBand(IZ)V
    .locals 1
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 852
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "wifiConfig"

    .prologue
    .line 1058
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    const/4 v1, 0x1

    .line 1061
    :goto_0
    return v1

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 2
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 1001
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    const/4 v1, 0x1

    .line 1004
    :goto_0
    return v1

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 907
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager;->noteOp(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    :goto_0
    return v1

    .line 911
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 2034
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    :goto_0
    return-void

    .line 2035
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startScan()Z
    .locals 2

    .prologue
    .line 764
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    const/4 v1, 0x1

    .line 767
    :goto_0
    return v1

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startWifi()Z
    .locals 2

    .prologue
    .line 1080
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    const/4 v1, 0x1

    .line 1083
    :goto_0
    return v1

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsListener;)V
    .locals 4
    .parameter "config"
    .parameter "listener"

    .prologue
    .line 1529
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1530
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1531
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500a

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1532
    return-void
.end method

.method public stopPPPOE()V
    .locals 1

    .prologue
    .line 2044
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->stopPPPOE()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2047
    :goto_0
    return-void

    .line 2045
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopWifi()Z
    .locals 2

    .prologue
    .line 1100
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    const/4 v1, 0x1

    .line 1103
    :goto_0
    return v1

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 624
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_1

    .line 625
    :cond_0
    const/4 v0, -0x1

    .line 627
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method public startScanActive()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    return v0
.end method
