.class abstract Lcom/android/server/QcConnectivityService$CheckMp$CallBack;
.super Ljava/lang/Object;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService$CheckMp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CallBack"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onComplete(Ljava/lang/Integer;)V
.end method
