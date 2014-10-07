.class public final Landroid/media/MediaMuxer;
.super Ljava/lang/Object;
.source "MediaMuxer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMuxer$OutputFormat;
    }
.end annotation


# static fields
.field private static final MUXER_STATE_INITIALIZED:I = 0x0

.field private static final MUXER_STATE_STARTED:I = 0x1

.field private static final MUXER_STATE_STOPPED:I = 0x2

.field private static final MUXER_STATE_UNINITIALIZED:I = -0x1


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mLastTrackIndex:I

.field private mNativeContext:I

.field private mNativeObject:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .parameter "path"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v5, p0, Landroid/media/MediaMuxer;->mState:I

    .line 107
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 108
    iput v5, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "path must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_0
    if-eqz p2, :cond_1

    .line 125
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "format is invalid"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 127
    :cond_1
    const/4 v2, 0x0

    .line 129
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 132
    .local v0, fd:Ljava/io/FileDescriptor;
    invoke-static {v0, p2}, Landroid/media/MediaMuxer;->nativeSetup(Ljava/io/FileDescriptor;I)I

    move-result v4

    iput v4, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    .line 133
    const/4 v4, 0x0

    iput v4, p0, Landroid/media/MediaMuxer;->mState:I

    .line 134
    iget-object v4, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v5, "release"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    if-eqz v3, :cond_2

    .line 137
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 140
    :cond_2
    return-void

    .line 136
    .end local v0           #fd:Ljava/io/FileDescriptor;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v2, :cond_3

    .line 137
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v4

    .line 136
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static native nativeAddTrack(I[Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method private static native nativeRelease(I)V
.end method

.method private static native nativeSetOrientationHint(II)V
.end method

.method private static native nativeSetup(Ljava/io/FileDescriptor;I)I
.end method

.method private static native nativeStart(I)V
.end method

.method private static native nativeStop(I)V
.end method

.method private static native nativeWriteSampleData(IILjava/nio/ByteBuffer;IIJI)V
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 10
    .parameter "format"

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "format must not be null."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 222
    :cond_0
    iget v8, p0, Landroid/media/MediaMuxer;->mState:I

    if-eqz v8, :cond_1

    .line 223
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Muxer is not initialized."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 225
    :cond_1
    iget v8, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-nez v8, :cond_2

    .line 226
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Muxer has been released!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 228
    :cond_2
    const/4 v6, -0x1

    .line 230
    .local v6, trackIndex:I
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 232
    .local v1, formatMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 233
    .local v4, keys:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 234
    .local v7, values:[Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    .line 235
    .local v5, mapSize:I
    if-lez v5, :cond_4

    .line 236
    new-array v4, v5, [Ljava/lang/String;

    .line 237
    new-array v7, v5, [Ljava/lang/Object;

    .line 238
    const/4 v2, 0x0

    .line 239
    .local v2, i:I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v2

    .line 241
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v2

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget v8, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v8, v4, v7}, Landroid/media/MediaMuxer;->nativeAddTrack(I[Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v6

    .line 251
    iget v8, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-lt v8, v6, :cond_5

    .line 252
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Invalid format."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 246
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "format must not be empty."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 254
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    iput v6, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 255
    return v6
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 203
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-eqz v0, :cond_1

    .line 204
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v0}, Landroid/media/MediaMuxer;->nativeRelease(I)V

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 210
    return-void

    .line 208
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 309
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 310
    invoke-virtual {p0}, Landroid/media/MediaMuxer;->stop()V

    .line 312
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-eqz v0, :cond_1

    .line 313
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v0}, Landroid/media/MediaMuxer;->nativeRelease(I)V

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    .line 315
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 317
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 318
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 156
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_1

    .line 160
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/media/MediaMuxer;->nativeSetOrientationHint(II)V

    .line 165
    return-void

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set rotation degrees due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_1

    .line 177
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v0}, Landroid/media/MediaMuxer;->nativeStart(I)V

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 182
    return-void

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t start due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 190
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v0}, Landroid/media/MediaMuxer;->nativeStop(I)V

    .line 191
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 195
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t stop due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8
    .parameter "trackIndex"
    .parameter "byteBuf"
    .parameter "bufferInfo"

    .prologue
    .line 272
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-le p1, v0, :cond_1

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "trackIndex is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    if-nez p2, :cond_2

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteBuffer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_2
    if-nez p3, :cond_3

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferInfo must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_3
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v0, :cond_4

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-ltz v0, :cond_4

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_4

    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 286
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferInfo must specify a valid buffer offset, size and presentation time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_5
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-nez v0, :cond_6

    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_6
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t write, muxer is not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_7
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v7, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Landroid/media/MediaMuxer;->nativeWriteSampleData(IILjava/nio/ByteBuffer;IIJI)V

    .line 301
    return-void
.end method
