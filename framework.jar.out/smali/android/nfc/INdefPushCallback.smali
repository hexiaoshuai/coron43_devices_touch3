.class public interface abstract Landroid/nfc/INdefPushCallback;
.super Ljava/lang/Object;
.source "INdefPushCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INdefPushCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract createBeamShareData()Landroid/nfc/BeamShareData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNdefPushComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
