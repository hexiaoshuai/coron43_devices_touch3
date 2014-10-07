.class public interface abstract Landroid/content/ITyOperateData;
.super Ljava/lang/Object;
.source "ITyOperateData.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ITyOperateData$Stub;
    }
.end annotation


# virtual methods
.method public abstract copydata(Ljava/lang/String;Ljava/lang/String;Landroid/content/ITyOperateDataObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removedata(Ljava/lang/String;Landroid/content/ITyOperateDataObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
