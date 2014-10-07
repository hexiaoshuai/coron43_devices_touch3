.class public Lcom/android/server/TyOperateDataService$dataPackage;
.super Ljava/lang/Object;
.source "TyOperateDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TyOperateDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dataPackage"
.end annotation


# instance fields
.field OpeateType:B

.field public mDestPath:Ljava/lang/String;

.field mObserver:Landroid/content/ITyOperateDataObserver;

.field public mReturnCode:B

.field public mSrcFilePath:Ljava/lang/String;

.field public mWriteFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/TyOperateDataService;


# direct methods
.method public constructor <init>(Lcom/android/server/TyOperateDataService;BLjava/lang/String;Ljava/lang/String;Landroid/content/ITyOperateDataObserver;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "Type"
    .parameter "srcFilePath"
    .parameter "destPath"
    .parameter "observer"
    .parameter "WriteFileName"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/TyOperateDataService$dataPackage;->this$0:Lcom/android/server/TyOperateDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-byte p2, p0, Lcom/android/server/TyOperateDataService$dataPackage;->OpeateType:B

    .line 118
    iput-object p3, p0, Lcom/android/server/TyOperateDataService$dataPackage;->mSrcFilePath:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/android/server/TyOperateDataService$dataPackage;->mDestPath:Ljava/lang/String;

    .line 120
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/android/server/TyOperateDataService$dataPackage;->mReturnCode:B

    .line 121
    iput-object p5, p0, Lcom/android/server/TyOperateDataService$dataPackage;->mObserver:Landroid/content/ITyOperateDataObserver;

    .line 122
    iput-object p6, p0, Lcom/android/server/TyOperateDataService$dataPackage;->mWriteFileName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/TyOperateDataService$dataPackage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/TyOperateDataService$dataPackage;->writePackagedataToFile()Z

    move-result v0

    return v0
.end method

.method private writePackagedataToFile()Z
    .locals 8

    .prologue
    .line 128
    const-string v5, "TyOperateDataService"

    const-string v6, "writePackagedataToFile:"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/TyOperateDataService$dataPackage;->GetRawPackageData()[B

    move-result-object v3

    .line 132
    .local v3, RawData:[B
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/TyOperateDataService$dataPackage;->mWriteFileName:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, OutFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 134
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 135
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 136
    .local v2, OutStream:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 137
    .local v0, Dos:Ljava/io/DataOutputStream;
    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 140
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_1
    const/4 v5, 0x1

    .end local v0           #Dos:Ljava/io/DataOutputStream;
    .end local v1           #OutFile:Ljava/io/File;
    .end local v2           #OutStream:Ljava/io/FileOutputStream;
    .end local v3           #RawData:[B
    :goto_0
    return v5

    .line 142
    :catch_0
    move-exception v4

    .line 143
    .local v4, e:Ljava/lang/Exception;
    const-string v5, "TyOperateDataService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writePackagedataToFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public GetRawPackageData()[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 91
    const/16 v1, 0xc9

    .line 92
    .local v1, length:I
    const/16 v3, 0xc8

    .line 93
    .local v3, returnCodePos:I
    new-array v2, v1, [B

    .line 94
    .local v2, rawdata:[B
    iget-object v5, p0, Lcom/android/server/TyOperateDataService$dataPackage;->mSrcFilePath:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 96
    iget-object v5, p0, Lcom/android/server/TyOperateDataService$dataPackage;->mSrcFilePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 97
    .local v4, srcFileByte:[B
    iget-object v5, p0, Lcom/android/server/TyOperateDataService$dataPackage;->mSrcFilePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    .end local v4           #srcFileByte:[B
    :cond_0
    iget-object v5, p0, Lcom/android/server/TyOperateDataService$dataPackage;->mDestPath:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 101
    iget-object v5, p0, Lcom/android/server/TyOperateDataService$dataPackage;->mDestPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 102
    .local v0, DestPathByte:[B
    const/16 v5, 0x64

    iget-object v6, p0, Lcom/android/server/TyOperateDataService$dataPackage;->mDestPath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v0, v7, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    .end local v0           #DestPathByte:[B
    :cond_1
    iget-byte v5, p0, Lcom/android/server/TyOperateDataService$dataPackage;->mReturnCode:B

    aput-byte v5, v2, v3

    .line 106
    return-object v2
.end method

.method GetReturnCode([B)B
    .locals 2
    .parameter "rawdata"

    .prologue
    const/16 v1, 0xc8

    .line 112
    array-length v0, p1

    if-le v0, v1, :cond_0

    .line 113
    aget-byte v0, p1, v1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method
