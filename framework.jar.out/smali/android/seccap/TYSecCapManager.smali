.class public Landroid/seccap/TYSecCapManager;
.super Ljava/lang/Object;
.source "TYSecCapManager.java"


# static fields
.field private static final BASE:I = 0x80000

.field public static final HANDLER_TIMER:I = 0x80006

.field public static final HANDLER_TIMER_CLRSTUS:I = 0x80009

.field public static final LOG_ENABLE:Z = false

.field public static final PACKAGE_ADDED:I = 0x80002

.field public static final PACKAGE_REMOVED:I = 0x80001

.field public static final PACKAGE_REPLACED:I = 0x80003

.field private static final TAG:Ljava/lang/String; = "TYSecCapManager"

.field public static final TYSECCAP_INQUIRE_10:I = 0xa

.field public static final TYSECCAP_INQUIRE_20:I = 0x14

.field public static final TYSECCAP_INQUIRE_30:I = 0x1e

.field public static final TYSECCAP_UKPMS_READ_MMS:Ljava/lang/String; = "ty.permission.READ_MMS"

.field public static final TYSECCAP_UKPMS_READ_SMS:Ljava/lang/String; = "ty.permission.READ_SMS"

.field public static final TYSECCAP_UKPMS_SEND_EMAIL:Ljava/lang/String; = "ty.permission.SEND_EMAIL"

.field public static final TYSECCAP_UKPMS_SEND_MMS:Ljava/lang/String; = "ty.permission.SEND_MMS"

.field public static final TYSECCAP_UKPMS_WRITE_MMS:Ljava/lang/String; = "ty.permission.WRITE_MMS"

.field public static final TYSECCAP_UKPMS_WRITE_SMS:Ljava/lang/String; = "ty.permission.WRITE_SMS"

.field public static final TYSECCAP_WAY_INQUIRE:I = 0x2

.field public static final TYSECCAP_WAY_PERMIT:I = 0x0

.field public static final TYSECCAP_WAY_REJECT:I = 0x1

.field public static final WAY_INQUIRE:I = 0x80004

.field public static final WAY_INQUIRE_RESULT:I = 0x80005

.field public static final WAY_INQUIRE_RESULT_UKPMS:I = 0x80008

.field public static final WAY_INQUIRE_UKPMS:I = 0x80007


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/seccap/ITYSecCapManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-string/jumbo v0, "tyseccap"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/seccap/ITYSecCapManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/seccap/ITYSecCapManager;

    move-result-object v0

    iput-object v0, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/seccap/ITYSecCapManager;)V
    .locals 0
    .parameter "context"
    .parameter "service"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/seccap/TYSecCapManager;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    .line 105
    return-void
.end method

.method public static getSecCapSupportValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    const-string/jumbo v0, "ro.ty.seccap.support"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isSecCapSupport()Z
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Landroid/seccap/TYSecCapManager;->getSecCapSupportValue()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    const/4 v1, 0x0

    .line 116
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized checkPermissionSync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "uid"
    .parameter "packageName"
    .parameter "permission"
    .parameter "actString"
    .parameter "isDbPms"

    .prologue
    const/4 v0, 0x1

    .line 199
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 204
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v2, p1, p2}, Landroid/seccap/ITYSecCapManager;->getPkgName(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p2

    .line 209
    :goto_1
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 213
    const/4 v0, 0x1

    .line 215
    .local v0, bPass:Z
    :try_start_3
    iget-object v2, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v2, p2, p3, p4, p5}, Landroid/seccap/ITYSecCapManager;->checkPermissionSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    goto :goto_0

    .line 205
    .end local v0           #bPass:Z
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "TYSecCapManager"

    const-string v3, "TYSecCapManager checkPermissionSync RemoteException getPkgName"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    const/4 p2, 0x0

    goto :goto_1

    .line 216
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #bPass:Z
    :catch_1
    move-exception v1

    .line 217
    .restart local v1       #e:Landroid/os/RemoteException;
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    .end local v0           #bPass:Z
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized checkUnknownPermissionSync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "uid"
    .parameter "ukpms"
    .parameter "actString"
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    .line 226
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 231
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v2, p1, p4}, Landroid/seccap/ITYSecCapManager;->getPkgName(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p4

    .line 237
    :goto_1
    :try_start_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 241
    const/4 v0, 0x1

    .line 243
    .local v0, bPass:Z
    :try_start_3
    iget-object v2, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v2, p2, p3, p4}, Landroid/seccap/ITYSecCapManager;->checkUnknownPermissionSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    goto :goto_0

    .line 232
    .end local v0           #bPass:Z
    :catch_0
    move-exception v1

    .line 233
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "TYSecCapManager"

    const-string v3, "TYSecCapManager checkUnknownPermissionSync RemoteException getPkgName"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    const/4 p4, 0x0

    goto :goto_1

    .line 244
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #bPass:Z
    :catch_1
    move-exception v1

    .line 245
    .restart local v1       #e:Landroid/os/RemoteException;
    const/4 v0, 0x1

    goto :goto_0

    .line 226
    .end local v0           #bPass:Z
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cleanLastInfoMap()V
    .locals 5

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/seccap/TYSecCapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 176
    .local v0, curPkgName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 178
    .local v2, topPkgName:Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v3}, Landroid/seccap/ITYSecCapManager;->getActivityTaskPkgName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 183
    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "TYSecCapManager"

    const-string v4, "TYSecCapManager cleanLastInfoMap RemoteException getActivityTaskPkgName"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    const/4 v2, 0x0

    goto :goto_0

    .line 188
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_4
    iget-object v3, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v3, v0}, Landroid/seccap/ITYSecCapManager;->cleanLastInfoMap(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 189
    :catch_1
    move-exception v1

    .line 190
    .restart local v1       #e:Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "TYSecCapManager"

    const-string v4, "TYSecCapManager cleanLastInfoMap RemoteException cleanLastInfoMap"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 175
    .end local v0           #curPkgName:Ljava/lang/String;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #topPkgName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public deleteRemountSafeInfo()V
    .locals 1

    .prologue
    .line 340
    :try_start_0
    iget-object v0, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v0}, Landroid/seccap/ITYSecCapManager;->deleteRemountSafeInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getEnforceGrantRevoke()Z
    .locals 1

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v0}, Landroid/seccap/ITYSecCapManager;->getEnforceGrantRevoke()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 351
    :goto_0
    return v0

    .line 349
    :catch_0
    move-exception v0

    .line 351
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPermissionGroupName(I)Ljava/lang/String;
    .locals 2
    .parameter "groupIndex"

    .prologue
    .line 275
    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/seccap/TYSecCapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/seccap/TYSupportGroup;->getPermissionGroupName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemountSafeInfo()Landroid/seccap/SecCapRemoteSafe;
    .locals 2

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, srs:Landroid/seccap/SecCapRemoteSafe;
    :try_start_0
    iget-object v1, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v1}, Landroid/seccap/ITYSecCapManager;->getRemountSafeInfo()Landroid/seccap/SecCapRemoteSafe;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    .line 327
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
    .line 299
    :try_start_0
    iget-object v0, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v0}, Landroid/seccap/ITYSecCapManager;->getSecCapBindPhones()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    .line 300
    :catch_0
    move-exception v0

    .line 302
    const/4 v0, 0x0

    goto :goto_0
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
    .line 252
    :try_start_0
    iget-object v0, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v0}, Landroid/seccap/ITYSecCapManager;->getSecCapInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 255
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecCapServiceMessenger()Landroid/os/Messenger;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 363
    :try_start_0
    iget-object v2, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v2}, Landroid/seccap/ITYSecCapManager;->getSecCapServiceMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 367
    :goto_0
    return-object v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 366
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 367
    .local v0, e:Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public getSecCapSettings()Landroid/seccap/SecCapSettings;
    .locals 1

    .prologue
    .line 284
    :try_start_0
    iget-object v0, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v0}, Landroid/seccap/ITYSecCapManager;->getSecCapSettings()Landroid/seccap/SecCapSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    .line 285
    :catch_0
    move-exception v0

    .line 287
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUkpmsName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ukpms"

    .prologue
    .line 279
    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/seccap/TYSecCapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/seccap/TYSupportGroup;->getUkpmsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putRemountSafeInfo(Landroid/seccap/SecCapRemoteSafe;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 334
    :try_start_0
    iget-object v0, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v0, p1}, Landroid/seccap/ITYSecCapManager;->putRemountSafeInfo(Landroid/seccap/SecCapRemoteSafe;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public putSecCapBindPhone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNum"
    .parameter "passWord"

    .prologue
    .line 307
    :try_start_0
    iget-object v0, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v0, p1, p2}, Landroid/seccap/ITYSecCapManager;->putSecCapBindPhone(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 310
    :goto_0
    return v0

    .line 308
    :catch_0
    move-exception v0

    .line 310
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllAppsWay(ZI)Z
    .locals 1
    .parameter "systemApps"
    .parameter "way"

    .prologue
    .line 268
    :try_start_0
    iget-object v0, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v0, p1, p2}, Landroid/seccap/ITYSecCapManager;->setAllAppsWay(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 271
    :goto_0
    return v0

    .line 269
    :catch_0
    move-exception v0

    .line 271
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRemoteSafeOpen(Z)Z
    .locals 1
    .parameter "bRemoteSafeOpen"

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v0, p1}, Landroid/seccap/ITYSecCapManager;->setRemoteSafeOpen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    .line 317
    :catch_0
    move-exception v0

    .line 319
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update2SecCapInfo(Landroid/seccap/SecCapInfo;)Z
    .locals 1
    .parameter "secCapInfo"

    .prologue
    .line 260
    :try_start_0
    iget-object v0, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v0, p1}, Landroid/seccap/ITYSecCapManager;->update2SecCapInfo(Landroid/seccap/SecCapInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 263
    :goto_0
    return v0

    .line 261
    :catch_0
    move-exception v0

    .line 263
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSecCapSettings(Landroid/seccap/SecCapSettings;)Z
    .locals 1
    .parameter "secCapSettings"

    .prologue
    .line 291
    :try_start_0
    iget-object v0, p0, Landroid/seccap/TYSecCapManager;->mService:Landroid/seccap/ITYSecCapManager;

    invoke-interface {v0, p1}, Landroid/seccap/ITYSecCapManager;->updateSecCapSettings(Landroid/seccap/SecCapSettings;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 294
    :goto_0
    return v0

    .line 292
    :catch_0
    move-exception v0

    .line 294
    const/4 v0, 0x0

    goto :goto_0
.end method
