.class public Landroid/media/RemoteControlClient;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteControlClient$EventHandler;,
        Landroid/media/RemoteControlClient$DisplayInfoForClient;,
        Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;,
        Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;,
        Landroid/media/RemoteControlClient$MetadataEditor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_PLAYBACK_VOLUME:I = 0xf

.field public static final DEFAULT_PLAYBACK_VOLUME_HANDLING:I = 0x1

.field public static final FLAGS_KEY_MEDIA_NONE:I = 0x0

.field public static final FLAG_INFORMATION_REQUEST_ALBUM_ART:I = 0x8

.field public static final FLAG_INFORMATION_REQUEST_KEY_MEDIA:I = 0x2

.field public static final FLAG_INFORMATION_REQUEST_METADATA:I = 0x1

.field public static final FLAG_INFORMATION_REQUEST_PLAYSTATE:I = 0x4

.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final FLAG_KEY_MEDIA_POSITION_UPDATE:I = 0x100

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20

.field public static MEDIA_POSITION_READABLE:I = 0x0

.field public static MEDIA_POSITION_WRITABLE:I = 0x0

.field private static final METADATA_KEYS_TYPE_LONG:[I = null

.field private static final METADATA_KEYS_TYPE_STRING:[I = null

.field private static final MSG_DISPLAY_WANTS_POS_SYNC:I = 0xc

.field private static final MSG_NEW_CURRENT_CLIENT_GEN:I = 0x6

.field private static final MSG_NEW_INTERNAL_CLIENT_GEN:I = 0x5

.field private static final MSG_PLUG_DISPLAY:I = 0x7

.field private static final MSG_POSITION_DRIFT_CHECK:I = 0xb

.field private static final MSG_REQUEST_ARTWORK:I = 0x4

.field private static final MSG_REQUEST_METADATA:I = 0x2

.field private static final MSG_REQUEST_PLAYBACK_STATE:I = 0x1

.field private static final MSG_REQUEST_TRANSPORTCONTROL:I = 0x3

.field private static final MSG_SEEK_TO:I = 0xa

.field private static final MSG_UNPLUG_DISPLAY:I = 0x8

.field private static final MSG_UPDATE_DISPLAY_ARTWORK_SIZE:I = 0x9

.field public static final PLAYBACKINFO_INVALID_VALUE:I = -0x80000000

.field public static final PLAYBACKINFO_PLAYBACK_TYPE:I = 0x1

.field public static final PLAYBACKINFO_USES_STREAM:I = 0x5

.field public static final PLAYBACKINFO_VOLUME:I = 0x2

.field public static final PLAYBACKINFO_VOLUME_HANDLING:I = 0x4

.field public static final PLAYBACKINFO_VOLUME_MAX:I = 0x3

.field public static final PLAYBACK_POSITION_ALWAYS_UNKNOWN:J = -0x7fe688e67fe67d00L

.field public static final PLAYBACK_POSITION_INVALID:J = -0x1L

.field public static final PLAYBACK_SPEED_1X:F = 1.0f

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field private static final PLAYBACK_TYPE_MAX:I = 0x1

.field private static final PLAYBACK_TYPE_MIN:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final PLAYSTATE_BUFFERING:I = 0x8

.field public static final PLAYSTATE_ERROR:I = 0x9

.field public static final PLAYSTATE_FAST_FORWARDING:I = 0x4

.field public static final PLAYSTATE_NONE:I = 0x0

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_REWINDING:I = 0x5

.field public static final PLAYSTATE_SKIPPING_BACKWARDS:I = 0x7

.field public static final PLAYSTATE_SKIPPING_FORWARDS:I = 0x6

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final POSITION_DRIFT_MAX_MS:J = 0x1f4L

.field private static final POSITION_REFRESH_PERIOD_MIN_MS:J = 0x7d0L

.field private static final POSITION_REFRESH_PERIOD_PLAYING_MS:J = 0x3a98L

.field public static final RCSE_ID_UNREGISTERED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RemoteControlClient"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private final mCacheLock:Ljava/lang/Object;

.field private mCurrentClientGenId:I

.field private mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

.field private final mIRCC:Landroid/media/IRemoteControlClient;

.field private mInternalClientGenId:I

.field private mMetadata:Landroid/os/Bundle;

.field private mNeedsPositionSync:Z

.field private mOriginalArtwork:Landroid/graphics/Bitmap;

.field private mPlaybackPositionCapabilities:I

.field private mPlaybackPositionMs:J

.field private mPlaybackSpeed:F

.field private mPlaybackState:I

.field private mPlaybackStateChangeTimeMs:J

.field private mPlaybackStream:I

.field private mPlaybackType:I

.field private mPlaybackVolume:I

.field private mPlaybackVolumeHandling:I

.field private mPlaybackVolumeMax:I

.field private mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field private mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/RemoteControlClient$DisplayInfoForClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mRcMediaIntent:Landroid/app/PendingIntent;

.field private mRcseId:I

.field private mTransportControlFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 377
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_STRING:[I

    .line 389
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_LONG:[I

    .line 848
    const/4 v0, 0x1

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    .line 855
    const/4 v0, 0x2

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    return-void

    .line 377
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 389
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "mediaButtonIntent"

    .prologue
    const/16 v1, 0xf

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput v3, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 865
    iput v3, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    .line 866
    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    .line 867
    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    .line 868
    iput v5, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    .line 869
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    .line 978
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 983
    iput v3, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 988
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 992
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 996
    const/high16 v1, 0x3f80

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 1009
    iput v3, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 1015
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 1028
    iput v4, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 1035
    const/4 v1, -0x2

    iput v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 1048
    iput-boolean v3, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1072
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    .line 1092
    new-instance v1, Landroid/media/RemoteControlClient$1;

    invoke-direct {v1, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    .line 1177
    iput v4, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    .line 343
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 346
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 347
    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 354
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    goto :goto_0

    .line 351
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 352
    const-string v1, "RemoteControlClient"

    const-string v2, "RemoteControlClient() couldn\'t find main application thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .locals 5
    .parameter "mediaButtonIntent"
    .parameter "looper"

    .prologue
    const/16 v0, 0xf

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 865
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    .line 866
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    .line 867
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    .line 868
    iput v4, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    .line 869
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    .line 978
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 983
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 988
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 992
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 996
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 1009
    iput v2, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 1015
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 1028
    iput v3, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 1035
    const/4 v0, -0x2

    iput v0, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 1048
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1072
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    .line 1092
    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    .line 1177
    iput v3, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    .line 372
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 374
    new-instance v0, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 375
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_STRING:[I

    return-object v0
.end method

.method static synthetic access$100(I[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-static {p0, p1}, Landroid/media/RemoteControlClient;->validTypeForKey(I[I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock()V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock()V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/RemoteControlClient;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onNewInternalClientGen(I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/RemoteControlClient;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onNewCurrentClientGen(I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onPlugDisplay(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onUpdateDisplayArtworkSize(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$1800(Landroid/media/RemoteControlClient;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onSeekTo(IJ)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->onPositionDriftCheck()V

    return-void
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_LONG:[I

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->onDisplayWantsSync(Landroid/media/IRemoteControlDisplay;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/RemoteControlClient;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$500(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$502(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendMetadataWithArtwork_syncCacheLock()V

    return-void
.end method

.method static synthetic access$700(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendMetadata_syncCacheLock()V

    return-void
.end method

.method static synthetic access$800(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendArtwork_syncCacheLock()V

    return-void
.end method

.method private static getCheckPeriodFromSpeed(F)J
    .locals 4
    .parameter "speed"

    .prologue
    .line 1643
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1644
    const-wide/16 v0, 0x3a98

    .line 1646
    :goto_0
    return-wide v0

    :cond_0
    const v0, 0x466a6000

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    .prologue
    .line 1381
    sget-object v1, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_0

    .line 1382
    sget-object v1, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    .line 1386
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 1384
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1385
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    .line 1386
    sget-object v1, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    goto :goto_0
.end method

.method private initiateCheckForDrift_syncCacheLock()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 677
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-nez v0, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    invoke-virtual {v0, v4}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    .line 681
    iget-boolean v0, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-eqz v0, :cond_0

    .line 684
    iget-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 691
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    invoke-static {v0}, Landroid/media/RemoteControlClient;->playbackPositionShouldMove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    invoke-virtual {v1, v4}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-static {v2}, Landroid/media/RemoteControlClient;->getCheckPeriodFromSpeed(F)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteControlClient$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private onDisplayWantsSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 7
    .parameter "rcd"
    .parameter "wantsSync"

    .prologue
    .line 1510
    iget-object v5, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1511
    :try_start_0
    iget-boolean v3, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1512
    .local v3, oldNeedsPositionSync:Z
    const/4 v2, 0x0

    .line 1513
    .local v2, newNeedsPositionSync:Z
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1516
    .local v1, displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1517
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1518
    .local v0, di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1519
    #setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mWantsPositionSync:Z
    invoke-static {v0, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2402(Landroid/media/RemoteControlClient$DisplayInfoForClient;Z)Z

    .line 1521
    :cond_1
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2400(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1522
    const/4 v2, 0x1

    goto :goto_0

    .line 1525
    .end local v0           #di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_2
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1526
    iget-boolean v4, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-eq v3, v4, :cond_3

    .line 1528
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->initiateCheckForDrift_syncCacheLock()V

    .line 1530
    :cond_3
    monitor-exit v5

    .line 1531
    return-void

    .line 1530
    .end local v1           #displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    .end local v2           #newNeedsPositionSync:Z
    .end local v3           #oldNeedsPositionSync:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private onNewCurrentClientGen(I)V
    .locals 2
    .parameter "clientGeneration"

    .prologue
    .line 1427
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1428
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 1429
    monitor-exit v1

    .line 1430
    return-void

    .line 1429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onNewInternalClientGen(I)V
    .locals 2
    .parameter "clientGeneration"

    .prologue
    .line 1419
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1422
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 1423
    monitor-exit v1

    .line 1424
    return-void

    .line 1423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onPlugDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 6
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1434
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1436
    const/4 v2, 0x0

    .line 1437
    .local v2, displayKnown:Z
    :try_start_0
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1438
    .local v1, displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 1439
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1440
    .local v0, di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1441
    if-eqz v2, :cond_0

    .line 1444
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v3

    if-ne v3, p2, :cond_1

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v3

    if-eq v3, p3, :cond_0

    .line 1445
    :cond_1
    #setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v0, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2202(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 1446
    #setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v0, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2302(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 1447
    invoke-direct {p0, v0}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1448
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1456
    .end local v0           #di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    .end local v1           #displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1453
    .restart local v1       #displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_2
    if-nez v2, :cond_3

    .line 1454
    :try_start_1
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    new-instance v5, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    invoke-direct {v5, p0, p1, p2, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;-><init>(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1457
    return-void
.end method

.method private onPositionDriftCheck()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 701
    iget-object v5, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 702
    :try_start_0
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-nez v4, :cond_1

    .line 703
    :cond_0
    monitor-exit v5

    .line 729
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-wide v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v4, v6, v12

    if-ltz v4, :cond_2

    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_3

    .line 707
    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 728
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 709
    :cond_3
    :try_start_1
    iget-wide v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    sub-long/2addr v8, v10

    long-to-float v4, v8

    iget v8, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    div-float/2addr v4, v8

    float-to-long v8, v4

    add-long v2, v6, v8

    .line 711
    .local v2, estPos:J
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    invoke-interface {v4}, Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;->onGetPlaybackPosition()J

    move-result-wide v0

    .line 712
    .local v0, actPos:J
    cmp-long v4, v0, v12

    if-ltz v4, :cond_5

    .line 713
    sub-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    cmp-long v4, v6, v8

    if-lez v4, :cond_4

    .line 716
    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget v6, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-virtual {p0, v4, v0, v1, v6}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 728
    :goto_1
    monitor-exit v5

    goto :goto_0

    .line 720
    :cond_4
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    iget-object v6, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget v7, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-static {v7}, Landroid/media/RemoteControlClient;->getCheckPeriodFromSpeed(F)J

    move-result-wide v7

    invoke-virtual {v4, v6, v7, v8}, Landroid/media/RemoteControlClient$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 726
    :cond_5
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private onSeekTo(IJ)V
    .locals 2
    .parameter "generationId"
    .parameter "timeMs"

    .prologue
    .line 1534
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1535
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;->onPlaybackPositionUpdate(J)V

    .line 1538
    :cond_0
    monitor-exit v1

    .line 1539
    return-void

    .line 1538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 7
    .parameter "rcd"

    .prologue
    .line 1461
    iget-object v5, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1462
    :try_start_0
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1463
    .local v1, displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1464
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1465
    .local v0, di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1466
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1471
    .end local v0           #di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_1
    iget-boolean v3, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1472
    .local v3, oldNeedsPositionSync:Z
    const/4 v2, 0x0

    .line 1473
    .local v2, newNeedsPositionSync:Z
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1474
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1475
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1476
    .restart local v0       #di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2400(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1477
    const/4 v2, 0x1

    .line 1481
    .end local v0           #di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_3
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1482
    iget-boolean v4, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-eq v3, v4, :cond_4

    .line 1484
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->initiateCheckForDrift_syncCacheLock()V

    .line 1486
    :cond_4
    monitor-exit v5

    .line 1487
    return-void

    .line 1486
    .end local v1           #displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    .end local v2           #newNeedsPositionSync:Z
    .end local v3           #oldNeedsPositionSync:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private onUpdateDisplayArtworkSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1491
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1492
    :try_start_0
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1493
    .local v1, displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1494
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1495
    .local v0, di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    if-ne v2, p2, :cond_1

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    if-eq v2, p3, :cond_0

    .line 1497
    :cond_1
    #setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v0, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2202(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 1498
    #setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v0, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2302(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 1499
    invoke-direct {p0, v0}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1500
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1505
    .end local v0           #di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_2
    monitor-exit v3

    .line 1506
    return-void

    .line 1505
    .end local v1           #displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static playbackPositionShouldMove(I)Z
    .locals 1
    .parameter "playstate"

    .prologue
    .line 1606
    packed-switch p0, :pswitch_data_0

    .line 1618
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1613
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1606
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "bitmap"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 1555
    if-eqz p1, :cond_2

    .line 1556
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1557
    .local v9, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1558
    .local v2, height:I
    move/from16 v0, p2

    if-gt v9, v0, :cond_0

    move/from16 v0, p3

    if-le v2, v0, :cond_2

    .line 1559
    :cond_0
    move/from16 v0, p2

    int-to-float v10, v0

    int-to-float v11, v9

    div-float/2addr v10, v11

    move/from16 v0, p3

    int-to-float v11, v0

    int-to-float v12, v2

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1560
    .local v8, scale:F
    int-to-float v10, v9

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1561
    .local v5, newWidth:I
    int-to-float v10, v2

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1562
    .local v4, newHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 1563
    .local v3, newConfig:Landroid/graphics/Bitmap$Config;
    if-nez v3, :cond_1

    .line 1564
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1566
    :cond_1
    invoke-static {v5, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1567
    .local v6, outBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1568
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 1569
    .local v7, paint:Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1570
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1571
    const/4 v10, 0x0

    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v10, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1573
    move-object/from16 p1, v6

    .line 1576
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #height:I
    .end local v3           #newConfig:Landroid/graphics/Bitmap$Config;
    .end local v4           #newHeight:I
    .end local v5           #newWidth:I
    .end local v6           #outBitmap:Landroid/graphics/Bitmap;
    .end local v7           #paint:Landroid/graphics/Paint;
    .end local v8           #scale:F
    .end local v9           #width:I
    :cond_2
    return-object p1
.end method

.method private sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z
    .locals 5
    .parameter "di"

    .prologue
    .line 1339
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    if-lez v2, :cond_0

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1340
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v3

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1343
    .local v0, artwork:Landroid/graphics/Bitmap;
    :try_start_0
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    iget v3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    invoke-interface {v2, v3, v0}, Landroid/media/IRemoteControlDisplay;->setArtwork(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1349
    .end local v0           #artwork:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 1344
    .restart local v0       #artwork:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 1345
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "RemoteControlClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in sendArtworkToDisplay(), dead display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1346
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendArtwork_syncCacheLock()V
    .locals 3

    .prologue
    .line 1322
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v1, v2, :cond_1

    .line 1323
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1324
    .local v0, displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1325
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    invoke-direct {p0, v1}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1326
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1330
    .end local v0           #displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_1
    return-void
.end method

.method private sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V
    .locals 4
    .parameter "what"
    .parameter "value"

    .prologue
    .line 1390
    iget v2, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1394
    :cond_0
    invoke-static {}, Landroid/media/RemoteControlClient;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1396
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget v2, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    invoke-interface {v1, v2, p1, p2}, Landroid/media/IAudioService;->setPlaybackInfoForRcc(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1397
    :catch_0
    move-exception v0

    .line 1398
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "RemoteControlClient"

    const-string v3, "Dead object in setPlaybackInfoForRcc"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendAudioServiceNewPlaybackState_syncCacheLock()V
    .locals 7

    .prologue
    .line 1403
    iget v1, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1413
    :goto_0
    return-void

    .line 1406
    :cond_0
    invoke-static {}, Landroid/media/RemoteControlClient;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1408
    .local v0, service:Landroid/media/IAudioService;
    :try_start_0
    iget v1, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget-wide v3, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    iget v5, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setPlaybackStateForRcc(IIJF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1410
    :catch_0
    move-exception v6

    .line 1411
    .local v6, e:Landroid/os/RemoteException;
    const-string v1, "RemoteControlClient"

    const-string v2, "Dead object in setPlaybackStateForRcc"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendMetadataWithArtwork_syncCacheLock()V
    .locals 7

    .prologue
    .line 1354
    iget v4, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v5, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v4, v5, :cond_1

    .line 1355
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1356
    .local v2, displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1357
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1359
    .local v1, di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :try_start_0
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v4

    if-lez v4, :cond_0

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v4

    if-lez v4, :cond_0

    .line 1360
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v5

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1362
    .local v0, artwork:Landroid/graphics/Bitmap;
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    iget v5, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v6, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {v4, v5, v6, v0}, Landroid/media/IRemoteControlDisplay;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1366
    .end local v0           #artwork:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 1367
    .local v3, e:Landroid/os/RemoteException;
    const-string v4, "RemoteControlClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when setting metadata, dead display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1368
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1364
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    iget v5, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v6, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {v4, v5, v6}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1372
    .end local v1           #di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    .end local v2           #displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_1
    return-void
.end method

.method private sendMetadata_syncCacheLock()V
    .locals 6

    .prologue
    .line 1289
    iget v3, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v3, v4, :cond_0

    .line 1290
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1291
    .local v1, displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1292
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1294
    .local v0, di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :try_start_0
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v5, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {v3, v4, v5}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1295
    :catch_0
    move-exception v2

    .line 1296
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "RemoteControlClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in setMetadata(), dead display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1297
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1301
    .end local v0           #di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    .end local v1           #displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private sendPlaybackState_syncCacheLock()V
    .locals 11

    .prologue
    .line 1272
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v0, v1, :cond_0

    .line 1273
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1274
    .local v9, displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1277
    .local v8, di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :try_start_0
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v8}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget-wide v3, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    iget-wide v5, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    iget v7, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-interface/range {v0 .. v7}, Landroid/media/IRemoteControlDisplay;->setPlaybackState(IIJJF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1280
    :catch_0
    move-exception v10

    .line 1281
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "RemoteControlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in setPlaybackState(), dead display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v8}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1282
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1286
    .end local v8           #di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    .end local v9           #displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private sendTransportControlInfo_syncCacheLock()V
    .locals 7

    .prologue
    .line 1304
    iget v3, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v3, v4, :cond_0

    .line 1305
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1306
    .local v1, displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1307
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1309
    .local v0, di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :try_start_0
    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v5, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    iget v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    invoke-interface {v3, v4, v5, v6}, Landroid/media/IRemoteControlDisplay;->setTransportControlInfo(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1311
    :catch_0
    move-exception v2

    .line 1312
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "RemoteControlClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in setTransportControlFlags(), dead display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1314
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1318
    .end local v0           #di:Landroid/media/RemoteControlClient$DisplayInfoForClient;
    .end local v1           #displayIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private setPlaybackStateInt(IJFZ)V
    .locals 4
    .parameter "state"
    .parameter "timeInMs"
    .parameter "playbackSpeed"
    .parameter "hasPosition"

    .prologue
    .line 644
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    if-ne v0, p1, :cond_0

    iget-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v0, v2, p2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_1

    .line 648
    :cond_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 652
    if-eqz p5, :cond_3

    .line 653
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gez v0, :cond_2

    .line 654
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 661
    :goto_0
    iput p4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 666
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock()V

    .line 668
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackState_syncCacheLock()V

    .line 671
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->initiateCheckForDrift_syncCacheLock()V

    .line 673
    :cond_1
    monitor-exit v1

    .line 674
    return-void

    .line 656
    :cond_2
    iput-wide p2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    goto :goto_0

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 659
    :cond_3
    const-wide v2, -0x7fe688e67fe67d00L

    :try_start_1
    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static validTypeForKey(I[I)Z
    .locals 3
    .parameter "key"
    .parameter "validKeys"

    .prologue
    .line 1588
    const/4 v1, 0x0

    .line 1589
    .local v1, i:I
    :goto_0
    :try_start_0
    aget v2, p1, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v2, :cond_0

    .line 1590
    const/4 v2, 0x1

    .line 1594
    :goto_1
    return v2

    .line 1588
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1593
    :catch_0
    move-exception v0

    .line 1594
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 5
    .parameter "startEmpty"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 582
    new-instance v0, Landroid/media/RemoteControlClient$MetadataEditor;

    invoke-direct {v0, p0, v4}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$1;)V

    .line 583
    .local v0, editor:Landroid/media/RemoteControlClient$MetadataEditor;
    if-eqz p1, :cond_0

    .line 584
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 585
    iput-object v4, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 586
    iput-boolean v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 587
    iput-boolean v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    .line 594
    :goto_0
    return-object v0

    .line 589
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 590
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 591
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 592
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    goto :goto_0
.end method

.method public getIRemoteControlClient()Landroid/media/IRemoteControlClient;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    return-object v0
.end method

.method public getIntPlaybackInformation(I)I
    .locals 4
    .parameter "what"

    .prologue
    .line 956
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    packed-switch p1, :pswitch_data_0

    .line 969
    :try_start_0
    const-string v0, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntPlaybackInformation() unknown key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/high16 v0, -0x8000

    monitor-exit v1

    :goto_0
    return v0

    .line 959
    :pswitch_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    monitor-exit v1

    goto :goto_0

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 961
    :pswitch_1
    :try_start_1
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    monitor-exit v1

    goto :goto_0

    .line 963
    :pswitch_2
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    monitor-exit v1

    goto :goto_0

    .line 965
    :pswitch_3
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    monitor-exit v1

    goto :goto_0

    .line 967
    :pswitch_4
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 957
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getRcMediaIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRcseId()I
    .locals 1

    .prologue
    .line 1193
    iget v0, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    return v0
.end method

.method public setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V
    .locals 6
    .parameter "l"

    .prologue
    .line 819
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 820
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 821
    .local v0, oldCapa:I
    if-eqz p1, :cond_2

    .line 822
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    sget v3, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    or-int/2addr v1, v3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 826
    :goto_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .line 827
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    if-eq v0, v1, :cond_0

    .line 829
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock()V

    .line 831
    :cond_0
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    invoke-static {v1}, Landroid/media/RemoteControlClient;->playbackPositionShouldMove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 835
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    iget-object v3, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/RemoteControlClient$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 839
    :cond_1
    monitor-exit v2

    .line 840
    return-void

    .line 824
    :cond_2
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    sget v3, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    goto :goto_0

    .line 839
    .end local v0           #oldCapa:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPlaybackInformation(II)V
    .locals 4
    .parameter "what"
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 884
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 885
    packed-switch p1, :pswitch_data_0

    .line 936
    :try_start_0
    const-string v0, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPlaybackInformation() ignoring unknown key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_0
    :goto_0
    monitor-exit v1

    .line 940
    return-void

    .line 887
    :pswitch_0
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 888
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    if-eq v0, p2, :cond_0

    .line 889
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    .line 890
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    .line 939
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 893
    :cond_1
    :try_start_1
    const-string v0, "RemoteControlClient"

    const-string/jumbo v2, "using invalid value for PLAYBACKINFO_PLAYBACK_TYPE"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 897
    :pswitch_1
    const/4 v0, -0x1

    if-le p2, v0, :cond_2

    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    if-gt p2, v0, :cond_2

    .line 898
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    if-eq v0, p2, :cond_0

    .line 899
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    .line 900
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    .line 903
    :cond_2
    const-string v0, "RemoteControlClient"

    const-string/jumbo v2, "using invalid value for PLAYBACKINFO_VOLUME"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 907
    :pswitch_2
    if-lez p2, :cond_3

    .line 908
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    if-eq v0, p2, :cond_0

    .line 909
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    .line 910
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    .line 913
    :cond_3
    const-string v0, "RemoteControlClient"

    const-string/jumbo v2, "using invalid value for PLAYBACKINFO_VOLUME_MAX"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 917
    :pswitch_3
    if-ltz p2, :cond_4

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 918
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    goto :goto_0

    .line 920
    :cond_4
    const-string v0, "RemoteControlClient"

    const-string/jumbo v2, "using invalid value for PLAYBACKINFO_USES_STREAM"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 924
    :pswitch_4
    if-ltz p2, :cond_5

    if-gt p2, v0, :cond_5

    .line 925
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    if-eq v0, p2, :cond_0

    .line 926
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    .line 927
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    .line 930
    :cond_5
    const-string v0, "RemoteControlClient"

    const-string/jumbo v2, "using invalid value for PLAYBACKINFO_VOLUME_HANDLING"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 885
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 797
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 798
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 799
    .local v0, oldCapa:I
    if-eqz p1, :cond_1

    .line 800
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    sget v3, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    or-int/2addr v1, v3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 804
    :goto_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .line 805
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    if-eq v0, v1, :cond_0

    .line 807
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock()V

    .line 809
    :cond_0
    monitor-exit v2

    .line 810
    return-void

    .line 802
    :cond_1
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    sget v3, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    goto :goto_0

    .line 809
    .end local v0           #oldCapa:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPlaybackState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 611
    const-wide v2, -0x7fe688e67fe67d00L

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    .line 613
    return-void
.end method

.method public setPlaybackState(IJF)V
    .locals 6
    .parameter "state"
    .parameter "timeInMs"
    .parameter "playbackSpeed"

    .prologue
    .line 639
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    .line 640
    return-void
.end method

.method public setRcseId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1186
    iput p1, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    .line 1187
    return-void
.end method

.method public setTransportControlFlags(I)V
    .locals 2
    .parameter "transportControlFlags"

    .prologue
    .line 745
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 747
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 750
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock()V

    .line 751
    monitor-exit v1

    .line 752
    return-void

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
