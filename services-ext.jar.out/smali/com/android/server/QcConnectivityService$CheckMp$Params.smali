.class Lcom/android/server/QcConnectivityService$CheckMp$Params;
.super Ljava/lang/Object;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService$CheckMp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Params"
.end annotation


# instance fields
.field private mCb:Lcom/android/server/QcConnectivityService$CheckMp$CallBack;

.field private mTimeOutMs:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/android/server/QcConnectivityService$CheckMp$CallBack;)V
    .locals 0
    .parameter "url"
    .parameter "timeOutMs"
    .parameter "cb"

    .prologue
    .line 5429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5430
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;

    .line 5431
    iput-wide p2, p0, Lcom/android/server/QcConnectivityService$CheckMp$Params;->mTimeOutMs:J

    .line 5432
    iput-object p4, p0, Lcom/android/server/QcConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/QcConnectivityService$CheckMp$CallBack;

    .line 5433
    return-void
.end method

.method static synthetic access$21400(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5424
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21600(Lcom/android/server/QcConnectivityService$CheckMp$Params;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 5424
    iget-wide v0, p0, Lcom/android/server/QcConnectivityService$CheckMp$Params;->mTimeOutMs:J

    return-wide v0
.end method

.method static synthetic access$21700(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Lcom/android/server/QcConnectivityService$CheckMp$CallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5424
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/QcConnectivityService$CheckMp$CallBack;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/QcConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTimeOutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/QcConnectivityService$CheckMp$Params;->mTimeOutMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/QcConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/QcConnectivityService$CheckMp$CallBack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
