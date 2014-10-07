.class Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateLinkPropertyResult"
.end annotation


# instance fields
.field public newLp:Landroid/net/LinkProperties;

.field public oldLp:Landroid/net/LinkProperties;

.field public setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;


# direct methods
.method public constructor <init>(Landroid/net/LinkProperties;)V
    .locals 1
    .parameter "curLp"

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .line 287
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    .line 288
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 289
    return-void
.end method
