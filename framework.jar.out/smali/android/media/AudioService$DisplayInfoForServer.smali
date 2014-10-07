.class Landroid/media/AudioService$DisplayInfoForServer;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayInfoForServer"
.end annotation


# instance fields
.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private mRcDisplayBinder:Landroid/os/IBinder;

.field private mWantsPositionSync:Z

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;Landroid/media/IRemoteControlDisplay;II)V
    .locals 1
    .parameter
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, -0x1

    .line 5932
    iput-object p1, p0, Landroid/media/AudioService$DisplayInfoForServer;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5928
    iput v0, p0, Landroid/media/AudioService$DisplayInfoForServer;->mArtworkExpectedWidth:I

    .line 5929
    iput v0, p0, Landroid/media/AudioService$DisplayInfoForServer;->mArtworkExpectedHeight:I

    .line 5930
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$DisplayInfoForServer;->mWantsPositionSync:Z

    .line 5934
    iput-object p2, p0, Landroid/media/AudioService$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5935
    invoke-interface {p2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    .line 5936
    iput p3, p0, Landroid/media/AudioService$DisplayInfoForServer;->mArtworkExpectedWidth:I

    .line 5937
    iput p4, p0, Landroid/media/AudioService$DisplayInfoForServer;->mArtworkExpectedHeight:I

    .line 5938
    return-void
.end method

.method static synthetic access$10100(Landroid/media/AudioService$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5924
    iget-object v0, p0, Landroid/media/AudioService$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    return-object v0
.end method

.method static synthetic access$10200(Landroid/media/AudioService$DisplayInfoForServer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5924
    iget v0, p0, Landroid/media/AudioService$DisplayInfoForServer;->mArtworkExpectedWidth:I

    return v0
.end method

.method static synthetic access$10202(Landroid/media/AudioService$DisplayInfoForServer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5924
    iput p1, p0, Landroid/media/AudioService$DisplayInfoForServer;->mArtworkExpectedWidth:I

    return p1
.end method

.method static synthetic access$10300(Landroid/media/AudioService$DisplayInfoForServer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5924
    iget v0, p0, Landroid/media/AudioService$DisplayInfoForServer;->mArtworkExpectedHeight:I

    return v0
.end method

.method static synthetic access$10302(Landroid/media/AudioService$DisplayInfoForServer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5924
    iput p1, p0, Landroid/media/AudioService$DisplayInfoForServer;->mArtworkExpectedHeight:I

    return p1
.end method

.method static synthetic access$10400(Landroid/media/AudioService$DisplayInfoForServer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5924
    iget-boolean v0, p0, Landroid/media/AudioService$DisplayInfoForServer;->mWantsPositionSync:Z

    return v0
.end method

.method static synthetic access$10402(Landroid/media/AudioService$DisplayInfoForServer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5924
    iput-boolean p1, p0, Landroid/media/AudioService$DisplayInfoForServer;->mWantsPositionSync:Z

    return p1
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    .line 5961
    iget-object v2, p0, Landroid/media/AudioService$DisplayInfoForServer;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v2}, Landroid/media/AudioService;->access$10500(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v3

    monitor-enter v3

    .line 5962
    :try_start_0
    const-string v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteControl: display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioService$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " died"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5964
    iget-object v2, p0, Landroid/media/AudioService$DisplayInfoForServer;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRcDisplays:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$10600(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5965
    .local v1, displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5966
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$DisplayInfoForServer;

    .line 5967
    .local v0, di:Landroid/media/AudioService$DisplayInfoForServer;
    iget-object v2, v0, Landroid/media/AudioService$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget-object v4, p0, Landroid/media/AudioService$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-ne v2, v4, :cond_0

    .line 5969
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 5970
    monitor-exit v3

    .line 5974
    .end local v0           #di:Landroid/media/AudioService$DisplayInfoForServer;
    :goto_0
    return-void

    .line 5973
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1           #displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$DisplayInfoForServer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public init()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5942
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5948
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 5943
    :catch_0
    move-exception v0

    .line 5945
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRemoteControlDisplay() has a dead client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioService$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 5953
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5958
    :goto_0
    return-void

    .line 5954
    :catch_0
    move-exception v0

    .line 5956
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    const-string v2, "Error in DisplaInfoForServer.relase()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
