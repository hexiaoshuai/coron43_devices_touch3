.class public final Lcom/android/server/power/SubSystemShutdown;
.super Ljava/lang/Object;
.source "SubSystemShutdown.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubSystemShutdown"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "SubSystemShutdown"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native shutdown()I
.end method
