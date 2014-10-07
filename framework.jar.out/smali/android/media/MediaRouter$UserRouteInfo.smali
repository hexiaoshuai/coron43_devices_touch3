.class public Landroid/media/MediaRouter$UserRouteInfo;
.super Landroid/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserRouteInfo"
.end annotation


# instance fields
.field mRcc:Landroid/media/RemoteControlClient;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 1457
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 1458
    const/high16 v0, 0x80

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSupportedTypes:I

    .line 1459
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 1460
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 1461
    return-void
.end method

.method private setPlaybackInfoOnRcc(II)V
    .locals 1
    .parameter "what"
    .parameter "value"

    .prologue
    .line 1679
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1, p2}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1682
    :cond_0
    return-void
.end method

.method private updatePlaybackInfoOnRcc()V
    .locals 4

    .prologue
    .line 1657
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v1}, Landroid/media/RemoteControlClient;->getRcseId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1658
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x3

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1660
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x2

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1662
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x4

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1664
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x5

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1666
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x1

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1670
    :try_start_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v2}, Landroid/media/RemoteControlClient;->getRcseId()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1672
    :catch_0
    move-exception v0

    .line 1673
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Error registering remote volume observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getRemoteControlClient()Landroid/media/RemoteControlClient;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method public requestSetVolume(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 1612
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1613
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_1

    .line 1614
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestSetVolume on user route - no volume callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :cond_0
    :goto_0
    return-void

    .line 1617
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method public requestUpdateVolume(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 1623
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1624
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_1

    .line 1625
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestChangeVolume on user route - no volumec callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_0
    :goto_0
    return-void

    .line 1628
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 1497
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 1498
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 1499
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 1545
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1546
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1555
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1556
    return-void
.end method

.method public setName(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1482
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mNameResId:I

    .line 1483
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 1484
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 1485
    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1468
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 1469
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 1470
    return-void
.end method

.method public setPlaybackStream(I)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 1650
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    if-eq v0, p1, :cond_0

    .line 1651
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    .line 1652
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1654
    :cond_0
    return-void
.end method

.method public setPlaybackType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1573
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    if-eq v0, p1, :cond_0

    .line 1574
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 1575
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1577
    :cond_0
    return-void
.end method

.method public setRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "rcc"

    .prologue
    .line 1524
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    .line 1525
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->updatePlaybackInfoOnRcc()V

    .line 1526
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 1507
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatusInt(Ljava/lang/CharSequence;)V

    .line 1508
    return-void
.end method

.method public setVolume(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 1599
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->getVolumeMax()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1600
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    if-eq v0, p1, :cond_0

    .line 1601
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    .line 1602
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1603
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1604
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$RouteGroup;->memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1608
    :cond_0
    return-void
.end method

.method public setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V
    .locals 1
    .parameter "vcb"

    .prologue
    .line 1563
    new-instance v0, Landroid/media/MediaRouter$VolumeCallbackInfo;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaRouter$VolumeCallbackInfo;-><init>(Landroid/media/MediaRouter$VolumeCallback;Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    .line 1564
    return-void
.end method

.method public setVolumeHandling(I)V
    .locals 1
    .parameter "volumeHandling"

    .prologue
    .line 1586
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    if-eq v0, p1, :cond_0

    .line 1587
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 1588
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1591
    :cond_0
    return-void
.end method

.method public setVolumeMax(I)V
    .locals 1
    .parameter "volumeMax"

    .prologue
    .line 1639
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    if-eq v0, p1, :cond_0

    .line 1640
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    .line 1641
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1643
    :cond_0
    return-void
.end method
