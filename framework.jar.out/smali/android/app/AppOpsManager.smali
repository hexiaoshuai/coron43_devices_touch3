.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$Callback;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;
    }
.end annotation


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ASK:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_BLUETOOTH_CHANGE:I = 0x20

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_DATA_CONNECT_CHANGE:I = 0x21

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GPS:I = 0x2

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NONE:I = -0x1

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_MMS:I = 0x23

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_SEND_MMS:I = 0x22

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WIFI_CHANGE:I = 0x1f

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_MMS:I = 0x24

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final _NUM_OP:I = 0x25

.field private static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpStrict:[Z

.field private static sOpToSwitch:[I


# instance fields
.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/AppOpsManager$Callback;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x25

    const/4 v3, 0x0

    .line 118
    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/AppOpsManager;->sOpStrict:[Z

    .line 166
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 210
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "COARSE_LOCATION"

    aput-object v1, v0, v5

    const-string v1, "FINE_LOCATION"

    aput-object v1, v0, v6

    const-string v1, "GPS"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "VIBRATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "READ_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WRITE_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "READ_CALL_LOG"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WRITE_CALL_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "READ_CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "WRITE_CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "WIFI_SCAN"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "POST_NOTIFICATION"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "NEIGHBORING_CELLS"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CALL_PHONE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WRITE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "RECEIVE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "RECEIVE_EMERGECY_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "RECEIVE_MMS"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "RECEIVE_WAP_PUSH"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SEND_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "READ_ICC_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "WRITE_ICC_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "WRITE_SETTINGS"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SYSTEM_ALERT_WINDOW"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ACCESS_NOTIFICATIONS"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PLAY_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "READ_CLIPBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "WRITE_CLIPBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "WIFI_CHANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "BLUETOOTH_CHANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "DATA_CONNECT_CHANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SEND_MMS"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "READ_MMS"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "WRITE_MMS"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 254
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v5

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v6

    aput-object v3, v0, v7

    const/4 v1, 0x3

    const-string v2, "android.permission.VIBRATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.WRITE_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.READ_CALL_LOG"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.WRITE_CALL_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.permission.WRITE_CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.permission.CALL_PHONE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.permission.WRITE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.permission.RECEIVE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "android.permission.RECEIVE_MMS"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "android.permission.WRITE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "android.permission.WRITE_SETTINGS"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "android.permission.ACCESS_NOTIFICATIONS"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "android.permission.BLUETOOTH"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "android.permission.WRITE_SMS"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    return-void

    .line 118
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 166
    nop

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Ljava/util/HashMap;

    .line 468
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 469
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 470
    return-void
.end method

.method public static opStrict(I)Z
    .locals 1
    .parameter "op"

    .prologue
    .line 298
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrict:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2
    .parameter "op"

    .prologue
    .line 312
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "NONE"

    .line 313
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1
    .parameter "op"

    .prologue
    .line 320
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToSwitch(I)I
    .locals 1
    .parameter "op"

    .prologue
    .line 305
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method public checkOp(IILjava/lang/String;)I
    .locals 3
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 547
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 548
    .local v0, mode:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 549
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Operation not allowed"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    .line 554
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 559
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 562
    :goto_0
    return v0

    .line 560
    :catch_0
    move-exception v0

    .line 562
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishOp(I)V
    .locals 2
    .parameter "op"

    .prologue
    .line 621
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 622
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 1
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 615
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .parameter "packageName"
    .parameter "ops"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 497
    :goto_0
    return-object v0

    .line 495
    :catch_0
    move-exception v0

    .line 497
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 1
    .parameter "ops"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 482
    :goto_0
    return-object v0

    .line 480
    :catch_0
    move-exception v0

    .line 482
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noteOp(I)I
    .locals 2
    .parameter "op"

    .prologue
    .line 586
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 3
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 567
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    .line 568
    .local v0, mode:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 569
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Operation not allowed"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    .line 574
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 579
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 582
    :goto_0
    return v0

    .line 580
    :catch_0
    move-exception v0

    .line 582
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetAllModes()V
    .locals 1

    .prologue
    .line 510
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->resetAllModes()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 1
    .parameter "code"
    .parameter "uid"
    .parameter "packageName"
    .parameter "mode"

    .prologue
    .line 502
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startOp(I)I
    .locals 2
    .parameter "op"

    .prologue
    .line 610
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 3
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 591
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(IILjava/lang/String;)I

    move-result v0

    .line 592
    .local v0, mode:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 593
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Operation not allowed"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    .line 598
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .parameter "op"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 603
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 606
    :goto_0
    return v0

    .line 604
    :catch_0
    move-exception v0

    .line 606
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$Callback;)V
    .locals 3
    .parameter "op"
    .parameter "packageName"
    .parameter "callback"

    .prologue
    .line 516
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Ljava/util/HashMap;

    monitor-enter v2

    .line 517
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    .line 518
    .local v0, cb:Lcom/android/internal/app/IAppOpsCallback;
    if-nez v0, :cond_0

    .line 519
    new-instance v0, Landroid/app/AppOpsManager$1;

    .end local v0           #cb:Lcom/android/internal/app/IAppOpsCallback;
    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$Callback;)V

    .line 524
    .restart local v0       #cb:Lcom/android/internal/app/IAppOpsCallback;
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 530
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 531
    return-void

    .line 530
    .end local v0           #cb:Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 528
    .restart local v0       #cb:Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$Callback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 534
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Ljava/util/HashMap;

    monitor-enter v2

    .line 535
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    .local v0, cb:Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v0, :cond_0

    .line 538
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 542
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 543
    return-void

    .line 542
    .end local v0           #cb:Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 539
    .restart local v0       #cb:Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
