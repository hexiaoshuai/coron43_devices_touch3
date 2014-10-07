.class public Lcom/android/server/TyOperateDataService;
.super Landroid/content/ITyOperateData$Stub;
.source "TyOperateDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TyOperateDataService$TyOperateDataServiceHandler;,
        Lcom/android/server/TyOperateDataService$dataPackage;
    }
.end annotation


# static fields
.field static final DataUnitLength:I = 0xc9

.field static final FileNameLength:I = 0x64

.field static final INIT_CHECK:I = 0x2

.field static final INIT_OPERATE:I = 0x1

.field public static final NOT_PROCESSED:I = 0xff

.field public static final OPERATE_FAILED:I = 0xfe

.field public static final OPERATE_FAILED_FILE_NOT_FOUND:Ljava/lang/String; = "file not found"

.field public static final OPERATE_FAILED_NO_SPACE:Ljava/lang/String; = "no space"

.field public static final OPERATE_SUCCESS:I = 0x0

.field static final OPERATE_TYPE_COPY:I = 0x1

.field static final OPERATE_TYPE_REMOVE:I = 0x2

.field static final PROPERTY_CHECK:Ljava/lang/String; = "sys.ty.checkstarted"

.field static final PROPERTY_COPY:Ljava/lang/String; = "sys.ty.copystarted"

.field static final PROPERTY_REMOVE:Ljava/lang/String; = "sys.ty.removestarted"

.field static final TAG:Ljava/lang/String; = "TyOperateDataService"

.field static final returnInfoLength:I = 0x64

.field static final strcopyfilename:Ljava/lang/String; = "/data/system/copydata.bin"

.field static final strremovefilename:Ljava/lang/String; = "/data/system/removedata.bin"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field mPackageDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TyOperateDataService$dataPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/ITyOperateData$Stub;-><init>()V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TyOperateDataService;->mPackageDatas:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/android/server/TyOperateDataService;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TyOperateDataService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/TyOperateDataService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 64
    iget-object v0, p0, Lcom/android/server/TyOperateDataService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v0, Lcom/android/server/TyOperateDataService$TyOperateDataServiceHandler;

    iget-object v1, p0, Lcom/android/server/TyOperateDataService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/TyOperateDataService$TyOperateDataServiceHandler;-><init>(Lcom/android/server/TyOperateDataService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;

    .line 66
    const-string v0, "sys.ty.copystarted"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "sys.ty.checkstarted"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "sys.ty.removestarted"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TyOperateDataService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TyOperateDataService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/TyOperateDataService;->checkFilePackageReturnCode()V

    return-void
.end method

.method private checkEfsVolume(Ljava/lang/String;Ljava/lang/String;Landroid/content/ITyOperateDataObserver;)I
    .locals 11
    .parameter "SrcPath"
    .parameter "DestPath"
    .parameter "observer"

    .prologue
    .line 275
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v8, srcFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 277
    .local v0, FileSize:J
    new-instance v7, Landroid/os/StatFs;

    invoke-direct {v7, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 278
    .local v7, sdStats:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    .line 280
    .local v3, blocksToByte:I
    const/4 v5, 0x0

    .line 281
    .local v5, returnCode:I
    const/4 v6, 0x0

    .line 282
    .local v6, returnInfo:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    mul-int v2, v9, v10

    .line 283
    .local v2, availSdByte:I
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 285
    :cond_0
    const-string v6, "file not found"

    .line 286
    const/16 v5, 0xfe

    .line 288
    :cond_1
    int-to-long v9, v2

    cmp-long v9, v9, v0

    if-gez v9, :cond_2

    .line 290
    const/16 v5, 0xfe

    .line 291
    const-string v6, "no space"

    .line 293
    :cond_2
    if-eqz v5, :cond_3

    .line 296
    :try_start_0
    invoke-interface {p3, v5, v6}, Landroid/content/ITyOperateDataObserver;->onOperateCompleted(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_3
    :goto_0
    return v5

    .line 297
    :catch_0
    move-exception v4

    .line 298
    .local v4, e:Landroid/os/RemoteException;
    const-string v9, "TyOperateDataService"

    const-string v10, "Observer no longer exists."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkFilePackageReturnCode()V
    .locals 25

    .prologue
    .line 313
    const-string v22, "sys.ty.copystarted"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 314
    .local v9, copydataStarted:Ljava/lang/String;
    const-string v22, "sys.ty.removestarted"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 315
    .local v19, removedataStarted:Ljava/lang/String;
    const-string v22, "TyOperateDataService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "checkFilePackageReturnCode copydataStarted:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v22, "TyOperateDataService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "checkFilePackageReturnCode removedataStarted:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TyOperateDataService;->mPackageDatas:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/TyOperateDataService$dataPackage;

    .line 318
    .local v6, Package:Lcom/android/server/TyOperateDataService$dataPackage;
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/android/server/TyOperateDataService$dataPackage;->mWriteFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const/4 v12, 0x0

    .line 321
    .local v12, din:Ljava/io/DataInputStream;
    const/16 v16, 0x0

    .line 322
    .local v16, inStream:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 325
    .local v4, Infile:Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v0, v6, Lcom/android/server/TyOperateDataService$dataPackage;->mWriteFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v4           #Infile:Ljava/io/File;
    .local v5, Infile:Ljava/io/File;
    :try_start_1
    new-instance v17, Ljava/io/FileInputStream;

    iget-object v0, v6, Lcom/android/server/TyOperateDataService$dataPackage;->mWriteFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 327
    .end local v16           #inStream:Ljava/io/FileInputStream;
    .local v17, inStream:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v13, Ljava/io/DataInputStream;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 328
    .end local v12           #din:Ljava/io/DataInputStream;
    .local v13, din:Ljava/io/DataInputStream;
    const/16 v11, 0xc9

    .line 329
    .local v11, datalegth:I
    const/16 v22, 0x12e

    :try_start_3
    move/from16 v0, v22

    new-array v8, v0, [B

    .line 330
    .local v8, buffer:[B
    const/4 v10, 0x0

    .line 332
    .local v10, countRead:I
    invoke-virtual {v13, v8}, Ljava/io/DataInputStream;->read([B)I

    move-result v10

    .line 333
    const-string v22, "TyOperateDataService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "checkFilePackageReturnCode countRead:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-lt v10, v11, :cond_4

    .line 336
    const/16 v21, 0x0

    .line 337
    .local v21, tmp:Ljava/lang/String;
    invoke-virtual {v6, v8}, Lcom/android/server/TyOperateDataService$dataPackage;->GetReturnCode([B)B

    move-result v7

    .line 338
    .local v7, ReturnCode:B
    iput-byte v7, v6, Lcom/android/server/TyOperateDataService$dataPackage;->mReturnCode:B

    .line 339
    const-string v22, "TyOperateDataService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "checkFilePackageReturnCode mReturnCode:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-le v10, v11, :cond_3

    .line 342
    const/16 v22, 0x64

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 343
    .local v20, returnInfo:[B
    const/16 v22, 0x0

    sub-int v23, v10, v11

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v8, v11, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v18, v0

    .line 346
    .local v18, ipos:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v15, v0, :cond_2

    .line 348
    aget-byte v22, v20, v15

    if-nez v22, :cond_6

    .line 350
    move/from16 v18, v15

    .line 354
    :cond_2
    new-instance v21, Ljava/lang/String;

    .end local v21           #tmp:Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 355
    .restart local v21       #tmp:Ljava/lang/String;
    const/16 v21, 0x0

    .line 356
    const-string v22, "TyOperateDataService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "checkFilePackageReturnCode returnInfo:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v15           #i:I
    .end local v18           #ipos:I
    .end local v20           #returnInfo:[B
    :cond_3
    iget-object v0, v6, Lcom/android/server/TyOperateDataService$dataPackage;->mObserver:Landroid/content/ITyOperateDataObserver;

    move-object/from16 v22, v0

    iget-byte v0, v6, Lcom/android/server/TyOperateDataService$dataPackage;->mReturnCode:B

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/ITyOperateDataObserver;->onOperateCompleted(ILjava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TyOperateDataService;->mPackageDatas:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 363
    .end local v7           #ReturnCode:B
    .end local v21           #tmp:Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 364
    const-string v22, "sys.ty.checkstarted"

    const-string v23, "false"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 369
    if-eqz v13, :cond_5

    .line 371
    :try_start_4
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_2
    move-object v4, v5

    .end local v5           #Infile:Ljava/io/File;
    .restart local v4       #Infile:Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17           #inStream:Ljava/io/FileInputStream;
    .restart local v16       #inStream:Ljava/io/FileInputStream;
    move-object v12, v13

    .line 376
    .end local v13           #din:Ljava/io/DataInputStream;
    .restart local v12       #din:Ljava/io/DataInputStream;
    goto/16 :goto_0

    .line 346
    .end local v4           #Infile:Ljava/io/File;
    .end local v12           #din:Ljava/io/DataInputStream;
    .end local v16           #inStream:Ljava/io/FileInputStream;
    .restart local v5       #Infile:Ljava/io/File;
    .restart local v7       #ReturnCode:B
    .restart local v13       #din:Ljava/io/DataInputStream;
    .restart local v15       #i:I
    .restart local v17       #inStream:Ljava/io/FileInputStream;
    .restart local v18       #ipos:I
    .restart local v20       #returnInfo:[B
    .restart local v21       #tmp:Ljava/lang/String;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 365
    .end local v5           #Infile:Ljava/io/File;
    .end local v7           #ReturnCode:B
    .end local v8           #buffer:[B
    .end local v10           #countRead:I
    .end local v11           #datalegth:I
    .end local v13           #din:Ljava/io/DataInputStream;
    .end local v15           #i:I
    .end local v17           #inStream:Ljava/io/FileInputStream;
    .end local v18           #ipos:I
    .end local v20           #returnInfo:[B
    .end local v21           #tmp:Ljava/lang/String;
    .restart local v4       #Infile:Ljava/io/File;
    .restart local v12       #din:Ljava/io/DataInputStream;
    .restart local v16       #inStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v14

    .line 366
    .local v14, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v22, "TyOperateDataService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "checkFilePackageReturnCode:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 369
    if-eqz v12, :cond_0

    .line 371
    :try_start_6
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 372
    :catch_1
    move-exception v14

    .line 373
    .local v14, e:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 369
    .end local v14           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v22

    :goto_4
    if-eqz v12, :cond_7

    .line 371
    :try_start_7
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 369
    :cond_7
    :goto_5
    throw v22

    .line 372
    :catch_2
    move-exception v14

    .line 373
    .restart local v14       #e:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 372
    .end local v4           #Infile:Ljava/io/File;
    .end local v12           #din:Ljava/io/DataInputStream;
    .end local v14           #e:Ljava/io/IOException;
    .end local v16           #inStream:Ljava/io/FileInputStream;
    .restart local v5       #Infile:Ljava/io/File;
    .restart local v8       #buffer:[B
    .restart local v10       #countRead:I
    .restart local v11       #datalegth:I
    .restart local v13       #din:Ljava/io/DataInputStream;
    .restart local v17       #inStream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v14

    .line 373
    .restart local v14       #e:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 369
    .end local v8           #buffer:[B
    .end local v10           #countRead:I
    .end local v11           #datalegth:I
    .end local v13           #din:Ljava/io/DataInputStream;
    .end local v14           #e:Ljava/io/IOException;
    .end local v17           #inStream:Ljava/io/FileInputStream;
    .restart local v12       #din:Ljava/io/DataInputStream;
    .restart local v16       #inStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v22

    move-object v4, v5

    .end local v5           #Infile:Ljava/io/File;
    .restart local v4       #Infile:Ljava/io/File;
    goto :goto_4

    .end local v4           #Infile:Ljava/io/File;
    .end local v16           #inStream:Ljava/io/FileInputStream;
    .restart local v5       #Infile:Ljava/io/File;
    .restart local v17       #inStream:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v22

    move-object v4, v5

    .end local v5           #Infile:Ljava/io/File;
    .restart local v4       #Infile:Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17           #inStream:Ljava/io/FileInputStream;
    .restart local v16       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v4           #Infile:Ljava/io/File;
    .end local v12           #din:Ljava/io/DataInputStream;
    .end local v16           #inStream:Ljava/io/FileInputStream;
    .restart local v5       #Infile:Ljava/io/File;
    .restart local v11       #datalegth:I
    .restart local v13       #din:Ljava/io/DataInputStream;
    .restart local v17       #inStream:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v22

    move-object v4, v5

    .end local v5           #Infile:Ljava/io/File;
    .restart local v4       #Infile:Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17           #inStream:Ljava/io/FileInputStream;
    .restart local v16       #inStream:Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13           #din:Ljava/io/DataInputStream;
    .restart local v12       #din:Ljava/io/DataInputStream;
    goto :goto_4

    .line 365
    .end local v4           #Infile:Ljava/io/File;
    .end local v11           #datalegth:I
    .restart local v5       #Infile:Ljava/io/File;
    :catch_4
    move-exception v14

    move-object v4, v5

    .end local v5           #Infile:Ljava/io/File;
    .restart local v4       #Infile:Ljava/io/File;
    goto :goto_3

    .end local v4           #Infile:Ljava/io/File;
    .end local v16           #inStream:Ljava/io/FileInputStream;
    .restart local v5       #Infile:Ljava/io/File;
    .restart local v17       #inStream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v14

    move-object v4, v5

    .end local v5           #Infile:Ljava/io/File;
    .restart local v4       #Infile:Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17           #inStream:Ljava/io/FileInputStream;
    .restart local v16       #inStream:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4           #Infile:Ljava/io/File;
    .end local v12           #din:Ljava/io/DataInputStream;
    .end local v16           #inStream:Ljava/io/FileInputStream;
    .restart local v5       #Infile:Ljava/io/File;
    .restart local v11       #datalegth:I
    .restart local v13       #din:Ljava/io/DataInputStream;
    .restart local v17       #inStream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v14

    move-object v4, v5

    .end local v5           #Infile:Ljava/io/File;
    .restart local v4       #Infile:Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17           #inStream:Ljava/io/FileInputStream;
    .restart local v16       #inStream:Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13           #din:Ljava/io/DataInputStream;
    .restart local v12       #din:Ljava/io/DataInputStream;
    goto :goto_3
.end method

.method private printstring([B)V
    .locals 4
    .parameter "rawdata"

    .prologue
    .line 306
    array-length v0, p1

    .local v0, i:I
    :goto_0
    const/16 v1, 0xfa

    if-ge v0, v1, :cond_0

    .line 308
    const-string v1, "TyOperateDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "printstring i: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "byte :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return-void
.end method


# virtual methods
.method public copydata(Ljava/lang/String;Ljava/lang/String;Landroid/content/ITyOperateDataObserver;)V
    .locals 12
    .parameter "SrcPath"
    .parameter "DestPath"
    .parameter "observer"

    .prologue
    const-wide/16 v10, 0x14

    const/4 v2, 0x1

    .line 217
    const-string v1, "TyOperateDataService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copydata SrcPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; DestPath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v1, "sys.ty.copystarted"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 219
    .local v8, copydataStarted:Ljava/lang/String;
    const-string v1, "sys.ty.checkstarted"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, checkReturnStarted:Ljava/lang/String;
    const-string v1, "TyOperateDataService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copydata copydataStarted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v1, "TyOperateDataService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copydata checkReturnStarted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TyOperateDataService;->checkEfsVolume(Ljava/lang/String;Ljava/lang/String;Landroid/content/ITyOperateDataObserver;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "TyOperateDataService"

    const-string v2, "copydata checkEfsVolume return failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v9, srcFile:Ljava/io/File;
    new-instance v0, Lcom/android/server/TyOperateDataService$dataPackage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "/data/system/copydata.bin"

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/TyOperateDataService$dataPackage;-><init>(Lcom/android/server/TyOperateDataService;BLjava/lang/String;Ljava/lang/String;Landroid/content/ITyOperateDataObserver;Ljava/lang/String;)V

    .line 233
    .local v0, CopyPackage:Lcom/android/server/TyOperateDataService$dataPackage;
    iget-object v1, p0, Lcom/android/server/TyOperateDataService;->mPackageDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    if-eqz v8, :cond_1

    const-string v1, "true"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    if-eqz v7, :cond_2

    const-string v1, "true"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 236
    :cond_2
    #calls: Lcom/android/server/TyOperateDataService$dataPackage;->writePackagedataToFile()Z
    invoke-static {v0}, Lcom/android/server/TyOperateDataService$dataPackage;->access$100(Lcom/android/server/TyOperateDataService$dataPackage;)Z

    .line 237
    iget-object v1, p0, Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 238
    const-string v1, "sys.ty.copystarted"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "sys.ty.checkstarted"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public removedata(Ljava/lang/String;Landroid/content/ITyOperateDataObserver;)V
    .locals 12
    .parameter "SrcPath"
    .parameter "observer"

    .prologue
    const-wide/16 v10, 0x14

    const/4 v2, 0x2

    .line 249
    const-string v1, "TyOperateDataService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removedata SrcPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v1, "sys.ty.copystarted"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 251
    .local v8, copydataStarted:Ljava/lang/String;
    const-string v1, "sys.ty.checkstarted"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, checkReturnStarted:Ljava/lang/String;
    const-string v1, "sys.ty.removestarted"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, removeDataStarted:Ljava/lang/String;
    const-string v1, "TyOperateDataService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removedata copydataStarted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v1, "TyOperateDataService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removedata checkReturnStarted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v1, "TyOperateDataService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removedata removeDataStarted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Lcom/android/server/TyOperateDataService$dataPackage;

    const/4 v4, 0x0

    const-string v6, "/data/system/removedata.bin"

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/TyOperateDataService$dataPackage;-><init>(Lcom/android/server/TyOperateDataService;BLjava/lang/String;Ljava/lang/String;Landroid/content/ITyOperateDataObserver;Ljava/lang/String;)V

    .line 258
    .local v0, RemovePackage:Lcom/android/server/TyOperateDataService$dataPackage;
    iget-object v1, p0, Lcom/android/server/TyOperateDataService;->mPackageDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    if-eqz v8, :cond_0

    const-string v1, "true"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    if-eqz v7, :cond_1

    const-string v1, "true"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    if-eqz v9, :cond_2

    const-string v1, "true"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 262
    :cond_2
    #calls: Lcom/android/server/TyOperateDataService$dataPackage;->writePackagedataToFile()Z
    invoke-static {v0}, Lcom/android/server/TyOperateDataService$dataPackage;->access$100(Lcom/android/server/TyOperateDataService$dataPackage;)Z

    .line 263
    iget-object v1, p0, Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    const-string v1, "sys.ty.removestarted"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "sys.ty.checkstarted"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
