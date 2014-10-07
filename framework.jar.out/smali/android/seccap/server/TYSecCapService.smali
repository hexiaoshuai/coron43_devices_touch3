.class public Landroid/seccap/server/TYSecCapService;
.super Landroid/seccap/ITYSecCapManager$Stub;
.source "TYSecCapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/seccap/server/TYSecCapService$LastInfo;,
        Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TYSecCapService"


# instance fields
.field private final CLRSTUS_TIME:I

.field private mActString:Ljava/lang/String;

.field private mAsyncServiceHandler:Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;

.field private mBRemoteSafeOpen:Z

.field private mBenforce:Z

.field private mClrStusTimer:Ljava/util/Timer;

.field private mClrStusTimerTime:I

.field private mContext:Landroid/content/Context;

.field private mDataAlertDialog:Landroid/app/AlertDialog;

.field private mIsboot:Z

.field private final mLastInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/seccap/server/TYSecCapService$LastInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMap:Ljava/util/HashMap;
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

.field private final mMapUkpms:Ljava/util/HashMap;
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

.field private mOperationsManager:Landroid/seccap/db/OperationsManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mTime:I

.field private mTimer:Ljava/util/Timer;

.field private token:Ljava/lang/Object;

.field private unKnownToken:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x3

    .line 103
    invoke-direct {p0}, Landroid/seccap/ITYSecCapManager$Stub;-><init>()V

    .line 83
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/seccap/server/TYSecCapService;->token:Ljava/lang/Object;

    .line 84
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/seccap/server/TYSecCapService;->unKnownToken:Ljava/lang/Object;

    .line 89
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/seccap/server/TYSecCapService;->mMap:Ljava/util/HashMap;

    .line 90
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/seccap/server/TYSecCapService;->mMapUkpms:Ljava/util/HashMap;

    .line 91
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/seccap/server/TYSecCapService;->mLastInfoMap:Ljava/util/HashMap;

    .line 96
    iput v4, p0, Landroid/seccap/server/TYSecCapService;->CLRSTUS_TIME:I

    .line 98
    iput v4, p0, Landroid/seccap/server/TYSecCapService;->mClrStusTimerTime:I

    .line 104
    iput-object p1, p0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    .line 105
    iget-object v3, p0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Landroid/seccap/server/TYSecCapService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 107
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "TYSecCapService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, secCapThread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v3, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;-><init>(Landroid/seccap/server/TYSecCapService;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/seccap/server/TYSecCapService;->mAsyncServiceHandler:Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;

    .line 111
    new-instance v3, Landroid/seccap/db/OperationsManager;

    invoke-direct {v3, p1}, Landroid/seccap/db/OperationsManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/seccap/server/TYSecCapService$1;

    invoke-direct {v4, p0}, Landroid/seccap/server/TYSecCapService$1;-><init>(Landroid/seccap/server/TYSecCapService;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v1, filter2:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/seccap/server/TYSecCapService$2;

    invoke-direct {v4, p0}, Landroid/seccap/server/TYSecCapService$2;-><init>(Landroid/seccap/server/TYSecCapService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method static synthetic access$000(Landroid/seccap/server/TYSecCapService;)Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mAsyncServiceHandler:Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/seccap/server/TYSecCapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/seccap/server/TYSecCapService;->cancelTime()V

    return-void
.end method

.method static synthetic access$102(Landroid/seccap/server/TYSecCapService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Landroid/seccap/server/TYSecCapService;->mIsboot:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/seccap/server/TYSecCapService;->notifyInquireResult(Landroid/seccap/SecCapInfo;Z)V

    return-void
.end method

.method static synthetic access$1200(Landroid/seccap/server/TYSecCapService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mMapUkpms:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/seccap/server/TYSecCapService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->unKnownToken:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1410(Landroid/seccap/server/TYSecCapService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Landroid/seccap/server/TYSecCapService;->mTime:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/seccap/server/TYSecCapService;->mTime:I

    return v0
.end method

.method static synthetic access$1500(Landroid/seccap/server/TYSecCapService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Landroid/seccap/server/TYSecCapService;->mClrStusTimerTime:I

    return v0
.end method

.method static synthetic access$1506(Landroid/seccap/server/TYSecCapService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Landroid/seccap/server/TYSecCapService;->mClrStusTimerTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/seccap/server/TYSecCapService;->mClrStusTimerTime:I

    return v0
.end method

.method static synthetic access$1600(Landroid/seccap/server/TYSecCapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/seccap/server/TYSecCapService;->cancelClrStusTime()V

    return-void
.end method

.method static synthetic access$200(Landroid/seccap/server/TYSecCapService;)Landroid/seccap/db/OperationsManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/seccap/server/TYSecCapService;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/seccap/server/TYSecCapService;Ljava/lang/String;Ljava/lang/String;III)Landroid/seccap/SecCapInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p5}, Landroid/seccap/server/TYSecCapService;->buildData(Ljava/lang/String;Ljava/lang/String;III)Landroid/seccap/SecCapInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/seccap/server/TYSecCapService;->showInquireDialog(Landroid/seccap/SecCapInfo;)V

    return-void
.end method

.method static synthetic access$600(Landroid/seccap/server/TYSecCapService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/seccap/server/TYSecCapService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->token:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Landroid/seccap/server/TYSecCapService;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mDataAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$802(Landroid/seccap/server/TYSecCapService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Landroid/seccap/server/TYSecCapService;->mDataAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$900(Landroid/seccap/server/TYSecCapService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildData(Ljava/lang/String;Ljava/lang/String;III)Landroid/seccap/SecCapInfo;
    .locals 5
    .parameter "permission"
    .parameter "packagename"
    .parameter "uid"
    .parameter "isSystem"
    .parameter "def3rdway"

    .prologue
    const/4 v4, 0x1

    .line 938
    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 939
    if-ne p4, v4, :cond_1

    .line 940
    const/4 v1, 0x0

    .line 961
    :cond_0
    :goto_0
    return-object v1

    .line 941
    :cond_1
    const/4 v3, 0x2

    if-ne p5, v3, :cond_2

    .line 942
    const/4 p5, 0x0

    .line 945
    :cond_2
    const/4 v1, 0x0

    .line 946
    .local v1, secCapInfo:Landroid/seccap/SecCapInfo;
    sget v0, Landroid/seccap/TYSupportGroup;->INVALID:I

    .line 947
    .local v0, groupIndex:I
    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v2

    .line 948
    .local v2, tspg:Landroid/seccap/TYSupportGroup;
    invoke-virtual {v2, p1}, Landroid/seccap/TYSupportGroup;->CheckSupportValues(Ljava/lang/String;)I

    move-result v0

    sget v3, Landroid/seccap/TYSupportGroup;->INVALID:I

    if-eq v0, v3, :cond_0

    .line 949
    new-instance v1, Landroid/seccap/SecCapInfo;

    .end local v1           #secCapInfo:Landroid/seccap/SecCapInfo;
    invoke-direct {v1}, Landroid/seccap/SecCapInfo;-><init>()V

    .line 950
    .restart local v1       #secCapInfo:Landroid/seccap/SecCapInfo;
    iput-object p2, v1, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    .line 951
    iput-object p1, v1, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    .line 952
    iput p4, v1, Landroid/seccap/SecCapInfo;->isSystem:I

    .line 953
    iput p3, v1, Landroid/seccap/SecCapInfo;->uid:I

    .line 954
    iput v0, v1, Landroid/seccap/SecCapInfo;->groupIndex:I

    .line 955
    if-ne p4, v4, :cond_3

    .line 956
    invoke-virtual {v2, v4, p2, p1}, Landroid/seccap/TYSupportGroup;->getDefaultWay(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/seccap/SecCapInfo;->waycode:I

    goto :goto_0

    .line 958
    :cond_3
    iput p5, v1, Landroid/seccap/SecCapInfo;->waycode:I

    goto :goto_0
.end method

.method private cancelClrStusTime()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mClrStusTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mClrStusTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 932
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/seccap/server/TYSecCapService;->mClrStusTimer:Ljava/util/Timer;

    .line 933
    const/4 v0, 0x3

    iput v0, p0, Landroid/seccap/server/TYSecCapService;->mClrStusTimerTime:I

    .line 935
    :cond_0
    return-void
.end method

.method private cancelTime()V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 905
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/seccap/server/TYSecCapService;->mTimer:Ljava/util/Timer;

    .line 906
    const/4 v0, 0x0

    iput v0, p0, Landroid/seccap/server/TYSecCapService;->mTime:I

    .line 908
    :cond_0
    return-void
.end method

.method private enforceGrantRevoke(Z)V
    .locals 0
    .parameter "bEnforce"

    .prologue
    .line 484
    iput-boolean p1, p0, Landroid/seccap/server/TYSecCapService;->mBenforce:Z

    .line 485
    return-void
.end method

.method private grantOrRevokePermission(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "grant"
    .parameter "packageName"
    .parameter "permissionName"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 458
    invoke-virtual {p0}, Landroid/seccap/server/TYSecCapService;->getActivityTaskPkgName()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, pkgName:Ljava/lang/String;
    :try_start_0
    const-string v4, "com.ktouch.seccap"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 464
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Landroid/seccap/server/TYSecCapService;->enforceGrantRevoke(Z)V

    .line 465
    if-eqz p1, :cond_1

    .line 466
    iget-object v4, p0, Landroid/seccap/server/TYSecCapService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p2, p3}, Landroid/content/pm/PackageManager;->grantPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 478
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Landroid/seccap/server/TYSecCapService;->enforceGrantRevoke(Z)V

    .line 480
    :goto_1
    return v2

    .line 468
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/seccap/server/TYSecCapService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p2, p3}, Landroid/content/pm/PackageManager;->revokePermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v2, "TYSecCapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TYSecCapService grantOrRevokePermission IllegalArgumentException e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 478
    invoke-direct {p0, v3}, Landroid/seccap/server/TYSecCapService;->enforceGrantRevoke(Z)V

    move v2, v3

    goto :goto_1

    .line 474
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 475
    .local v0, e:Ljava/lang/SecurityException;
    :try_start_3
    const-string v2, "TYSecCapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TYSecCapService grantOrRevokePermission SecurityException e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 478
    invoke-direct {p0, v3}, Landroid/seccap/server/TYSecCapService;->enforceGrantRevoke(Z)V

    move v2, v3

    goto :goto_1

    .end local v0           #e:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v2

    invoke-direct {p0, v3}, Landroid/seccap/server/TYSecCapService;->enforceGrantRevoke(Z)V

    throw v2
.end method

.method private notifyInquireResult(Landroid/seccap/SecCapInfo;Z)V
    .locals 5
    .parameter "secCapInfo"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 965
    const/4 v0, 0x0

    .line 966
    .local v0, msg:Landroid/os/Message;
    const-string/jumbo v3, "ty.permission.SEND_MMS"

    iget-object v4, p1, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ty.permission.SEND_EMAIL"

    iget-object v4, p1, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 969
    :cond_0
    iget-object v3, p0, Landroid/seccap/server/TYSecCapService;->mAsyncServiceHandler:Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;

    const v4, 0x80008

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v3, v4, v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 975
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 976
    return-void

    .line 972
    :cond_2
    iget-object v3, p0, Landroid/seccap/server/TYSecCapService;->mAsyncServiceHandler:Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;

    const v4, 0x80005

    if-eqz p2, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v3, v4, v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method private showInquireDialog(Landroid/seccap/SecCapInfo;)V
    .locals 23
    .parameter "secCapInfo"

    .prologue
    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/seccap/server/TYSecCapService;->mDataAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 787
    const-string v16, "TYSecCapService"

    const-string v17, "TYSecCapService showInquireDialog mDataAlertDialog != null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/seccap/server/TYSecCapService;->notifyInquireResult(Landroid/seccap/SecCapInfo;Z)V

    .line 883
    :goto_0
    return-void

    .line 791
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 792
    .local v12, pm:Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    .line 793
    .local v13, rif:Landroid/content/pm/PermissionInfo;
    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/seccap/TYSupportGroup;->getUkpmsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 794
    .local v14, title:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 796
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1000

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v13

    .line 797
    invoke-virtual {v13, v12}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    .end local v14           #title:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    .restart local v14       #title:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 806
    .local v10, inflater:Landroid/view/LayoutInflater;
    const v16, 0x10900dd

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 807
    .local v15, v:Landroid/view/View;
    const v16, 0x1020391

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 809
    .local v9, imageView:Landroid/widget/ImageView;
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 816
    const v16, 0x1020392

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 817
    .local v4, appname:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 819
    .local v3, aName:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 825
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    const v16, 0x1020393

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 828
    .local v11, packagename:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    const v16, 0x1020394

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 830
    .local v5, ask:Landroid/widget/TextView;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v18, 0x10405b5

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v16, 0x0

    aput-object v3, v19, v16

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/seccap/server/TYSecCapService;->mActString:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/seccap/TYSupportGroup;->getActionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :goto_1
    aput-object v16, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/seccap/TYSupportGroup;->getAdditionSmsReg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    const v16, 0x1020395

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 836
    .local v6, check:Landroid/widget/CheckBox;
    new-instance v7, Landroid/seccap/server/TYSecCapService$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v6, v1}, Landroid/seccap/server/TYSecCapService$3;-><init>(Landroid/seccap/server/TYSecCapService;Landroid/widget/CheckBox;Landroid/seccap/SecCapInfo;)V

    .line 857
    .local v7, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x103031d

    invoke-direct/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x1010355

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x10405b3

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x10405b4

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    new-instance v17, Landroid/seccap/server/TYSecCapService$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/seccap/server/TYSecCapService$4;-><init>(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapInfo;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/seccap/server/TYSecCapService;->mDataAlertDialog:Landroid/app/AlertDialog;

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/seccap/server/TYSecCapService;->mDataAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7d3

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 881
    invoke-virtual/range {p0 .. p0}, Landroid/seccap/server/TYSecCapService;->getSecCapSettings()Landroid/seccap/SecCapSettings;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/seccap/server/TYSecCapService;->startTime(Landroid/seccap/SecCapSettings;Landroid/seccap/SecCapInfo;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/seccap/server/TYSecCapService;->mDataAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 798
    .end local v3           #aName:Ljava/lang/String;
    .end local v4           #appname:Landroid/widget/TextView;
    .end local v5           #ask:Landroid/widget/TextView;
    .end local v6           #check:Landroid/widget/CheckBox;
    .end local v7           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v9           #imageView:Landroid/widget/ImageView;
    .end local v10           #inflater:Landroid/view/LayoutInflater;
    .end local v11           #packagename:Landroid/widget/TextView;
    .end local v14           #title:Ljava/lang/String;
    .end local v15           #v:Landroid/view/View;
    :catch_0
    move-exception v8

    .line 799
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v16, "TYSecCapService"

    const-string v17, "TYSecCapService showInquireDialog NameNotFoundException"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/seccap/server/TYSecCapService;->notifyInquireResult(Landroid/seccap/SecCapInfo;Z)V

    goto/16 :goto_0

    .line 810
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #imageView:Landroid/widget/ImageView;
    .restart local v10       #inflater:Landroid/view/LayoutInflater;
    .restart local v14       #title:Ljava/lang/String;
    .restart local v15       #v:Landroid/view/View;
    :catch_1
    move-exception v8

    .line 811
    .restart local v8       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v16, "TYSecCapService"

    const-string v17, "TYSecCapService showInquireDialog2 NameNotFoundException"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/seccap/server/TYSecCapService;->notifyInquireResult(Landroid/seccap/SecCapInfo;Z)V

    goto/16 :goto_0

    .line 820
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #aName:Ljava/lang/String;
    .restart local v4       #appname:Landroid/widget/TextView;
    :catch_2
    move-exception v8

    .line 821
    .restart local v8       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v16, "TYSecCapService"

    const-string v17, "TYSecCapService showInquireDialog3 NameNotFoundException"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/seccap/server/TYSecCapService;->notifyInquireResult(Landroid/seccap/SecCapInfo;Z)V

    goto/16 :goto_0

    .line 830
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #ask:Landroid/widget/TextView;
    .restart local v11       #packagename:Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/seccap/server/TYSecCapService;->mActString:Ljava/lang/String;

    move-object/from16 v16, v0

    goto/16 :goto_1
.end method

.method private startClrStusTime()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 911
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mClrStusTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 912
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Landroid/seccap/server/TYSecCapService;->mClrStusTimer:Ljava/util/Timer;

    .line 913
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mClrStusTimer:Ljava/util/Timer;

    new-instance v1, Landroid/seccap/server/TYSecCapService$6;

    invoke-direct {v1, p0}, Landroid/seccap/server/TYSecCapService$6;-><init>(Landroid/seccap/server/TYSecCapService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 924
    :cond_0
    return-void
.end method

.method private startTime(Landroid/seccap/SecCapSettings;Landroid/seccap/SecCapInfo;)V
    .locals 6
    .parameter "secCapSettings"
    .parameter "secCapInfo"

    .prologue
    const-wide/16 v2, 0x3e8

    .line 888
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 889
    iget v0, p1, Landroid/seccap/SecCapSettings;->deftime:I

    iput v0, p0, Landroid/seccap/server/TYSecCapService;->mTime:I

    .line 891
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Landroid/seccap/server/TYSecCapService;->mTimer:Ljava/util/Timer;

    .line 892
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mTimer:Ljava/util/Timer;

    new-instance v1, Landroid/seccap/server/TYSecCapService$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/seccap/server/TYSecCapService$5;-><init>(Landroid/seccap/server/TYSecCapService;Landroid/seccap/SecCapSettings;Landroid/seccap/SecCapInfo;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 900
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkPermissionSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 17
    .parameter "packageName"
    .parameter "permission"
    .parameter "actString"
    .parameter "isDbPms"

    .prologue
    .line 159
    monitor-enter p0

    const/4 v5, 0x1

    .line 160
    .local v5, defaultCheck:Z
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    move v12, v5

    .line 253
    :goto_0
    monitor-exit p0

    return v12

    .line 164
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v11

    .line 165
    .local v11, tspg:Landroid/seccap/TYSupportGroup;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/seccap/TYSupportGroup;->CheckSupportPackage(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    move v12, v5

    .line 169
    goto :goto_0

    .line 172
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/seccap/server/TYSecCapService;->mBRemoteSafeOpen:Z

    if-eqz v12, :cond_3

    .line 176
    const/4 v12, 0x0

    goto :goto_0

    .line 180
    :cond_3
    const/4 v2, 0x0

    .line 181
    .local v2, bPermit:Ljava/lang/Boolean;
    const/4 v8, 0x0

    .line 182
    .local v8, lastInfo:Landroid/seccap/server/TYSecCapService$LastInfo;
    if-eqz p4, :cond_d

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/seccap/server/TYSecCapService;->mLastInfoMap:Ljava/util/HashMap;

    monitor-enter v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/seccap/server/TYSecCapService;->mLastInfoMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/seccap/server/TYSecCapService$LastInfo;

    move-object v8, v0

    .line 185
    if-eqz v8, :cond_6

    .line 186
    iget-object v12, v8, Landroid/seccap/server/TYSecCapService$LastInfo;->mPmsMap:Ljava/util/HashMap;

    if-eqz v12, :cond_4

    iget-object v12, v8, Landroid/seccap/server/TYSecCapService$LastInfo;->mPmsMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 187
    iget-object v12, v8, Landroid/seccap/server/TYSecCapService$LastInfo;->mPmsMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    .line 188
    if-eqz v2, :cond_5

    .line 194
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    monitor-exit v13

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v12

    :goto_1
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    .end local v2           #bPermit:Ljava/lang/Boolean;
    .end local v8           #lastInfo:Landroid/seccap/server/TYSecCapService$LastInfo;
    .end local v11           #tspg:Landroid/seccap/TYSupportGroup;
    :catchall_1
    move-exception v12

    monitor-exit p0

    throw v12

    .line 197
    .restart local v2       #bPermit:Ljava/lang/Boolean;
    .restart local v8       #lastInfo:Landroid/seccap/server/TYSecCapService$LastInfo;
    .restart local v11       #tspg:Landroid/seccap/TYSupportGroup;
    :cond_4
    :try_start_4
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v8, Landroid/seccap/server/TYSecCapService$LastInfo;->mPmsMap:Ljava/util/HashMap;

    .line 205
    :cond_5
    :goto_2
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v2

    .line 208
    .end local v2           #bPermit:Ljava/lang/Boolean;
    .local v3, bPermit:Ljava/lang/Boolean;
    :goto_3
    const/4 v7, 0x0

    .line 209
    .local v7, info:Landroid/seccap/SecCapInfo;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/seccap/db/OperationsManager;->getSeccapInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/seccap/SecCapInfo;

    move-result-object v7

    .line 210
    if-eqz v7, :cond_7

    iget v12, v7, Landroid/seccap/SecCapInfo;->waycode:I

    if-nez v12, :cond_7

    .line 211
    const/4 v5, 0x1

    .line 246
    :goto_4
    if-eqz p4, :cond_c

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/seccap/server/TYSecCapService;->mLastInfoMap:Ljava/util/HashMap;

    monitor-enter v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 248
    :try_start_6
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v5}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 249
    .end local v3           #bPermit:Ljava/lang/Boolean;
    .restart local v2       #bPermit:Ljava/lang/Boolean;
    :try_start_7
    iget-object v12, v8, Landroid/seccap/server/TYSecCapService$LastInfo;->mPmsMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 251
    :try_start_8
    invoke-direct/range {p0 .. p0}, Landroid/seccap/server/TYSecCapService;->startClrStusTime()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    move v12, v5

    .line 253
    goto/16 :goto_0

    .line 200
    .end local v7           #info:Landroid/seccap/SecCapInfo;
    :cond_6
    :try_start_9
    new-instance v9, Landroid/seccap/server/TYSecCapService$LastInfo;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/seccap/server/TYSecCapService$LastInfo;-><init>(Landroid/seccap/server/TYSecCapService;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 201
    .end local v8           #lastInfo:Landroid/seccap/server/TYSecCapService$LastInfo;
    .local v9, lastInfo:Landroid/seccap/server/TYSecCapService$LastInfo;
    :try_start_a
    move-object/from16 v0, p1

    iput-object v0, v9, Landroid/seccap/server/TYSecCapService$LastInfo;->packagename:Ljava/lang/String;

    .line 202
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v9, Landroid/seccap/server/TYSecCapService$LastInfo;->mPmsMap:Ljava/util/HashMap;

    .line 203
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/seccap/server/TYSecCapService;->mLastInfoMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object v8, v9

    .end local v9           #lastInfo:Landroid/seccap/server/TYSecCapService$LastInfo;
    .restart local v8       #lastInfo:Landroid/seccap/server/TYSecCapService$LastInfo;
    goto :goto_2

    .line 212
    .end local v2           #bPermit:Ljava/lang/Boolean;
    .restart local v3       #bPermit:Ljava/lang/Boolean;
    .restart local v7       #info:Landroid/seccap/SecCapInfo;
    :cond_7
    if-eqz v7, :cond_8

    const/4 v12, 0x1

    :try_start_b
    iget v13, v7, Landroid/seccap/SecCapInfo;->waycode:I

    if-ne v12, v13, :cond_8

    .line 213
    const/4 v5, 0x0

    goto :goto_4

    .line 214
    :cond_8
    if-eqz v7, :cond_b

    const/4 v12, 0x2

    iget v13, v7, Landroid/seccap/SecCapInfo;->waycode:I

    if-ne v12, v13, :cond_b

    .line 215
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/seccap/server/TYSecCapService;->mActString:Ljava/lang/String;

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/seccap/server/TYSecCapService;->token:Ljava/lang/Object;

    monitor-enter v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 217
    :try_start_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/seccap/server/TYSecCapService;->mAsyncServiceHandler:Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;

    const v14, 0x80004

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 219
    .local v10, msg:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 221
    :try_start_d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/seccap/server/TYSecCapService;->token:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0

    .line 225
    :goto_6
    :try_start_e
    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 229
    :try_start_f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/seccap/server/TYSecCapService;->mMap:Ljava/util/HashMap;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "##"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 230
    .local v4, check:Ljava/lang/Integer;
    if-eqz v4, :cond_a

    .line 234
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_9

    const/4 v5, 0x1

    .line 235
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/seccap/server/TYSecCapService;->mMap:Ljava/util/HashMap;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "##"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :goto_8
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/seccap/server/TYSecCapService;->mActString:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_4

    .line 222
    .end local v4           #check:Ljava/lang/Integer;
    :catch_0
    move-exception v6

    .line 223
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_10
    const-string v12, "TYSecCapService"

    const-string v14, "TYSecCapService checkPermissionSync token.wait error"

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 225
    .end local v6           #e:Ljava/lang/InterruptedException;
    .end local v10           #msg:Landroid/os/Message;
    :catchall_2
    move-exception v12

    monitor-exit v13
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v12

    .line 234
    .restart local v4       #check:Ljava/lang/Integer;
    .restart local v10       #msg:Landroid/os/Message;
    :cond_9
    const/4 v5, 0x0

    goto :goto_7

    .line 237
    :cond_a
    const/4 v5, 0x1

    .line 238
    const-string v12, "TYSecCapService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TYSecCapService mMap.get "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "##"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " error"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 242
    .end local v4           #check:Ljava/lang/Integer;
    .end local v10           #msg:Landroid/os/Message;
    :cond_b
    const-string v12, "TYSecCapService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TYSecCapService checkPermissionSync info="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 243
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 250
    :catchall_3
    move-exception v12

    move-object v2, v3

    .end local v3           #bPermit:Ljava/lang/Boolean;
    .restart local v2       #bPermit:Ljava/lang/Boolean;
    :goto_9
    :try_start_12
    monitor-exit v13
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    throw v12
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :catchall_4
    move-exception v12

    goto :goto_9

    .line 205
    .end local v7           #info:Landroid/seccap/SecCapInfo;
    .end local v8           #lastInfo:Landroid/seccap/server/TYSecCapService$LastInfo;
    .restart local v9       #lastInfo:Landroid/seccap/server/TYSecCapService$LastInfo;
    :catchall_5
    move-exception v12

    move-object v8, v9

    .end local v9           #lastInfo:Landroid/seccap/server/TYSecCapService$LastInfo;
    .restart local v8       #lastInfo:Landroid/seccap/server/TYSecCapService$LastInfo;
    goto/16 :goto_1

    .end local v2           #bPermit:Ljava/lang/Boolean;
    .restart local v3       #bPermit:Ljava/lang/Boolean;
    .restart local v7       #info:Landroid/seccap/SecCapInfo;
    :cond_c
    move-object v2, v3

    .end local v3           #bPermit:Ljava/lang/Boolean;
    .restart local v2       #bPermit:Ljava/lang/Boolean;
    goto/16 :goto_5

    .end local v7           #info:Landroid/seccap/SecCapInfo;
    :cond_d
    move-object v3, v2

    .end local v2           #bPermit:Ljava/lang/Boolean;
    .restart local v3       #bPermit:Ljava/lang/Boolean;
    goto/16 :goto_3
.end method

.method public declared-synchronized checkUnknownPermissionSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .parameter "ukpms"
    .parameter "actString"
    .parameter "packageName"

    .prologue
    .line 263
    monitor-enter p0

    const/4 v3, 0x1

    .line 264
    .local v3, defaultCheck:Z
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move v11, v3

    .line 340
    :goto_0
    monitor-exit p0

    return v11

    .line 269
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v10

    .line 270
    .local v10, tspg:Landroid/seccap/TYSupportGroup;
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/seccap/TYSupportGroup;->CheckSupportPackage(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    move v11, v3

    .line 274
    goto :goto_0

    .line 277
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/seccap/server/TYSecCapService;->mBRemoteSafeOpen:Z

    if-eqz v11, :cond_3

    .line 281
    const/4 v11, 0x0

    goto :goto_0

    .line 284
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Landroid/seccap/db/OperationsManager;->getSeccapInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/seccap/SecCapInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 285
    .local v5, info:Landroid/seccap/SecCapInfo;
    if-nez v5, :cond_6

    .line 287
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/seccap/server/TYSecCapService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 288
    .local v9, pinfo:Landroid/content/pm/PackageInfo;
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v11, 0x1

    .line 289
    .local v7, isSystem:I
    new-instance v6, Landroid/seccap/SecCapInfo;

    invoke-direct {v6}, Landroid/seccap/SecCapInfo;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 290
    .end local v5           #info:Landroid/seccap/SecCapInfo;
    .local v6, info:Landroid/seccap/SecCapInfo;
    :try_start_3
    move-object/from16 v0, p1

    iput-object v0, v6, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    .line 291
    move-object/from16 v0, p3

    iput-object v0, v6, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    .line 292
    iput v7, v6, Landroid/seccap/SecCapInfo;->isSystem:I

    .line 293
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v11, v6, Landroid/seccap/SecCapInfo;->uid:I

    .line 294
    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/seccap/TYSupportGroup;->CheckSupportValues(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Landroid/seccap/SecCapInfo;->groupIndex:I

    .line 295
    const/4 v11, 0x1

    if-ne v7, v11, :cond_4

    const/4 v11, 0x0

    :goto_1
    iput v11, v6, Landroid/seccap/SecCapInfo;->waycode:I

    .line 298
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    invoke-virtual {v11, v6}, Landroid/seccap/db/OperationsManager;->add2SeccapInfo(Landroid/seccap/SecCapInfo;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 299
    const-string v11, "TYSecCapService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TYSecCapService checkUnknownPermissionSync add2SeccapInfo error. ukpms="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " packageName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 301
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 295
    :cond_4
    const/4 v11, 0x2

    goto :goto_1

    :cond_5
    move-object v5, v6

    .line 308
    .end local v6           #info:Landroid/seccap/SecCapInfo;
    .end local v7           #isSystem:I
    .end local v9           #pinfo:Landroid/content/pm/PackageInfo;
    .restart local v5       #info:Landroid/seccap/SecCapInfo;
    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    :try_start_4
    iget v11, v5, Landroid/seccap/SecCapInfo;->waycode:I

    if-nez v11, :cond_7

    .line 309
    const/4 v3, 0x1

    :goto_3
    move v11, v3

    .line 340
    goto/16 :goto_0

    .line 303
    :catch_0
    move-exception v4

    .line 304
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    const-string v11, "TYSecCapService"

    const-string v12, "TYSecCapService checkUnknownPermissionSync NameNotFoundException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 263
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #info:Landroid/seccap/SecCapInfo;
    .end local v10           #tspg:Landroid/seccap/TYSupportGroup;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 310
    .restart local v5       #info:Landroid/seccap/SecCapInfo;
    .restart local v10       #tspg:Landroid/seccap/TYSupportGroup;
    :cond_7
    if-eqz v5, :cond_8

    const/4 v11, 0x1

    :try_start_5
    iget v12, v5, Landroid/seccap/SecCapInfo;->waycode:I

    if-ne v11, v12, :cond_8

    .line 311
    const/4 v3, 0x0

    goto :goto_3

    .line 312
    :cond_8
    if-eqz v5, :cond_b

    const/4 v11, 0x2

    iget v12, v5, Landroid/seccap/SecCapInfo;->waycode:I

    if-ne v11, v12, :cond_b

    .line 313
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/seccap/server/TYSecCapService;->mActString:Ljava/lang/String;

    .line 314
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/seccap/server/TYSecCapService;->unKnownToken:Ljava/lang/Object;

    monitor-enter v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 315
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/seccap/server/TYSecCapService;->mAsyncServiceHandler:Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;

    const v13, 0x80007

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v11, v13, v14, v15, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 317
    .local v8, msg:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 319
    :try_start_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/seccap/server/TYSecCapService;->unKnownToken:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    .line 323
    :goto_5
    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 324
    :try_start_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/seccap/server/TYSecCapService;->mMapUkpms:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "##"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 325
    .local v2, check:Ljava/lang/Integer;
    if-eqz v2, :cond_a

    .line 329
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_9

    const/4 v3, 0x1

    .line 330
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/seccap/server/TYSecCapService;->mMapUkpms:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "##"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :goto_7
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/seccap/server/TYSecCapService;->mActString:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 320
    .end local v2           #check:Ljava/lang/Integer;
    :catch_1
    move-exception v4

    .line 321
    .local v4, e:Ljava/lang/InterruptedException;
    :try_start_a
    const-string v11, "TYSecCapService"

    const-string v13, "TYSecCapService checkUnknownPermissionSync unKnownToken.wait error"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 323
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v8           #msg:Landroid/os/Message;
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v11

    .line 329
    .restart local v2       #check:Ljava/lang/Integer;
    .restart local v8       #msg:Landroid/os/Message;
    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    .line 332
    :cond_a
    const/4 v3, 0x1

    .line 333
    const-string v11, "TYSecCapService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TYSecCapService ukpms.get "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "##"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " error"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 337
    .end local v2           #check:Ljava/lang/Integer;
    .end local v8           #msg:Landroid/os/Message;
    :cond_b
    const-string v11, "TYSecCapService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TYSecCapService checkUnknownPermissionSync info="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 338
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 303
    .end local v5           #info:Landroid/seccap/SecCapInfo;
    .restart local v6       #info:Landroid/seccap/SecCapInfo;
    .restart local v7       #isSystem:I
    .restart local v9       #pinfo:Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v4

    move-object v5, v6

    .end local v6           #info:Landroid/seccap/SecCapInfo;
    .restart local v5       #info:Landroid/seccap/SecCapInfo;
    goto/16 :goto_4
.end method

.method public cleanLastInfoMap(Ljava/lang/String;)V
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 354
    iget-object v2, p0, Landroid/seccap/server/TYSecCapService;->mLastInfoMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 355
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Landroid/seccap/server/TYSecCapService;->mLastInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 357
    monitor-exit v2

    .line 364
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Landroid/seccap/server/TYSecCapService;->mLastInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/seccap/server/TYSecCapService$LastInfo;

    .line 360
    .local v0, lastInfo:Landroid/seccap/server/TYSecCapService$LastInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/seccap/server/TYSecCapService$LastInfo;->mPmsMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, v0, Landroid/seccap/server/TYSecCapService$LastInfo;->mPmsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 363
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #lastInfo:Landroid/seccap/server/TYSecCapService$LastInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteRemountSafeInfo()V
    .locals 1

    .prologue
    .line 1020
    :try_start_0
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    invoke-virtual {v0}, Landroid/seccap/db/OperationsManager;->deleteRemountSafeInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :goto_0
    return-void

    .line 1021
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getActivityTaskPkgName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 488
    const/4 v4, 0x0

    .line 489
    .local v4, pkgName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 491
    .local v1, cn:Landroid/content/ComponentName;
    :try_start_0
    iget-object v5, p0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 492
    .local v0, am:Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 493
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 494
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 495
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 496
    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v5, v4

    .line 505
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    return-object v5

    .line 502
    :catch_0
    move-exception v2

    .line 503
    .local v2, e:Ljava/lang/SecurityException;
    const-string v5, "TYSecCapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TYSecCapService getActivityTaskPkgName SecurityException e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .end local v2           #e:Ljava/lang/SecurityException;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getActstring(I)Ljava/lang/String;
    .locals 1
    .parameter "resid"

    .prologue
    .line 344
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnforceGrantRevoke()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Landroid/seccap/server/TYSecCapService;->mBenforce:Z

    return v0
.end method

.method public getPkgName(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "uid"
    .parameter "packageName"

    .prologue
    const/16 v5, 0x3e8

    .line 394
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, p2

    .line 438
    :goto_0
    return-object v4

    .line 398
    :cond_0
    if-ne p1, v5, :cond_3

    .line 399
    invoke-virtual {p0}, Landroid/seccap/server/TYSecCapService;->getActivityTaskPkgName()Ljava/lang/String;

    move-result-object p2

    .line 400
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 401
    iget-object v4, p0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 402
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 404
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 408
    :goto_1
    if-eqz v0, :cond_1

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, v5, :cond_2

    .line 412
    :cond_1
    const/4 p2, 0x0

    .line 430
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_2
    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v3

    .line 431
    .local v3, tspg:Landroid/seccap/TYSupportGroup;
    invoke-virtual {v3, p2}, Landroid/seccap/TYSupportGroup;->CheckSupportPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 435
    const/4 v4, 0x0

    goto :goto_0

    .line 405
    .end local v3           #tspg:Landroid/seccap/TYSupportGroup;
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #packageManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 406
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_1

    .line 419
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :cond_3
    iget-object v4, p0, Landroid/seccap/server/TYSecCapService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 420
    .restart local v2       #packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p2

    .line 422
    if-eqz p2, :cond_2

    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 423
    const/4 v4, 0x0

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    .restart local v3       #tspg:Landroid/seccap/TYSupportGroup;
    :cond_4
    move-object v4, p2

    .line 438
    goto :goto_0
.end method

.method public getRemountSafeInfo()Landroid/seccap/SecCapRemoteSafe;
    .locals 2

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1003
    .local v0, srs:Landroid/seccap/SecCapRemoteSafe;
    :try_start_0
    iget-object v1, p0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    invoke-virtual {v1}, Landroid/seccap/db/OperationsManager;->getRemountSafeInfo()Landroid/seccap/SecCapRemoteSafe;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1006
    :goto_0
    return-object v0

    .line 1004
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSecCapBindPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/seccap/SecCapRemoteSafe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    invoke-virtual {v0}, Landroid/seccap/db/OperationsManager;->getSecCapBindPhones()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecCapInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/seccap/SecCapInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    invoke-virtual {v0}, Landroid/seccap/db/OperationsManager;->getSecCapInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecCapServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 450
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/seccap/server/TYSecCapService;->mAsyncServiceHandler:Landroid/seccap/server/TYSecCapService$AsyncServiceHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getSecCapSettings()Landroid/seccap/SecCapSettings;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    invoke-virtual {v0}, Landroid/seccap/db/OperationsManager;->getSecCapSettings()Landroid/seccap/SecCapSettings;

    move-result-object v0

    return-object v0
.end method

.method public putRemountSafeInfo(Landroid/seccap/SecCapRemoteSafe;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1012
    :try_start_0
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    invoke-virtual {v0, p1}, Landroid/seccap/db/OperationsManager;->putRemountSafeInfo(Landroid/seccap/SecCapRemoteSafe;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :goto_0
    return-void

    .line 1013
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public putSecCapBindPhone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNum"
    .parameter "passWord"

    .prologue
    .line 514
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    invoke-virtual {v0, p1, p2}, Landroid/seccap/db/OperationsManager;->putSecCapBindPhone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAllAppsWay(ZI)Z
    .locals 1
    .parameter "systemApps"
    .parameter "way"

    .prologue
    .line 390
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    invoke-virtual {v0, p1, p2}, Landroid/seccap/db/OperationsManager;->setAllAppsWay(ZI)Z

    move-result v0

    return v0
.end method

.method public setRemoteSafeOpen(Z)V
    .locals 0
    .parameter "bRemoteSafeOpen"

    .prologue
    .line 518
    iput-boolean p1, p0, Landroid/seccap/server/TYSecCapService;->mBRemoteSafeOpen:Z

    .line 519
    return-void
.end method

.method public update2SecCapInfo(Landroid/seccap/SecCapInfo;)Z
    .locals 4
    .parameter "secCapInfo"

    .prologue
    const/4 v1, 0x0

    .line 367
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v1

    .line 373
    :cond_1
    iget-object v2, p1, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/seccap/server/TYSecCapService;->cleanLastInfoMap(Ljava/lang/String;)V

    .line 375
    iget-object v2, p1, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    const/4 v0, 0x1

    .line 377
    .local v0, grant:Z
    iget v2, p1, Landroid/seccap/SecCapInfo;->waycode:I

    if-nez v2, :cond_4

    .line 378
    const/4 v0, 0x1

    .line 382
    :cond_2
    :goto_1
    iget-object v2, p1, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    iget-object v3, p1, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Landroid/seccap/server/TYSecCapService;->grantOrRevokePermission(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    .end local v0           #grant:Z
    :cond_3
    iget-object v1, p0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    invoke-virtual {v1, p1}, Landroid/seccap/db/OperationsManager;->update2SecCapInfo(Landroid/seccap/SecCapInfo;)Z

    move-result v1

    goto :goto_0

    .line 379
    .restart local v0       #grant:Z
    :cond_4
    iget v2, p1, Landroid/seccap/SecCapInfo;->waycode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 380
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateSecCapSettings(Landroid/seccap/SecCapSettings;)Z
    .locals 1
    .parameter "secCapSettings"

    .prologue
    .line 446
    iget-object v0, p0, Landroid/seccap/server/TYSecCapService;->mOperationsManager:Landroid/seccap/db/OperationsManager;

    invoke-virtual {v0, p1}, Landroid/seccap/db/OperationsManager;->updateSecCapSettings(Landroid/seccap/SecCapSettings;)Z

    move-result v0

    return v0
.end method
