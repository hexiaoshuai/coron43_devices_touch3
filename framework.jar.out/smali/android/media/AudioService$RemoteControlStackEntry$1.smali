.class Landroid/media/AudioService$RemoteControlStackEntry$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService$RemoteControlStackEntry;-><init>(Landroid/media/AudioService;Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService$RemoteControlStackEntry;


# direct methods
.method constructor <init>(Landroid/media/AudioService$RemoteControlStackEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 5199
    iput-object p1, p0, Landroid/media/AudioService$RemoteControlStackEntry$1;->this$0:Landroid/media/AudioService$RemoteControlStackEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5201
    iget-object v0, p0, Landroid/media/AudioService$RemoteControlStackEntry$1;->this$0:Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mService:Landroid/media/AudioService;

    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry$1;->this$0:Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 5202
    return-void
.end method
