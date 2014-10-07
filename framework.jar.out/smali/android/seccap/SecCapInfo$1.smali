.class final Landroid/seccap/SecCapInfo$1;
.super Ljava/lang/Object;
.source "SecCapInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/seccap/SecCapInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/seccap/SecCapInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/seccap/SecCapInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 66
    new-instance v0, Landroid/seccap/SecCapInfo;

    invoke-direct {v0, p1}, Landroid/seccap/SecCapInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/seccap/SecCapInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/seccap/SecCapInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/seccap/SecCapInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 70
    new-array v0, p1, [Landroid/seccap/SecCapInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/seccap/SecCapInfo$1;->newArray(I)[Landroid/seccap/SecCapInfo;

    move-result-object v0

    return-object v0
.end method
