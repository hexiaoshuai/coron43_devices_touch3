.class final Landroid/seccap/SecCapSettings$1;
.super Ljava/lang/Object;
.source "SecCapSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/seccap/SecCapSettings;
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
        "Landroid/seccap/SecCapSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/seccap/SecCapSettings;
    .locals 1
    .parameter "in"

    .prologue
    .line 57
    new-instance v0, Landroid/seccap/SecCapSettings;

    invoke-direct {v0, p1}, Landroid/seccap/SecCapSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/seccap/SecCapSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/seccap/SecCapSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/seccap/SecCapSettings;
    .locals 1
    .parameter "size"

    .prologue
    .line 61
    new-array v0, p1, [Landroid/seccap/SecCapSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/seccap/SecCapSettings$1;->newArray(I)[Landroid/seccap/SecCapSettings;

    move-result-object v0

    return-object v0
.end method
