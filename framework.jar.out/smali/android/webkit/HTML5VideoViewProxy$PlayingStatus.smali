.class public final enum Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;
.super Ljava/lang/Enum;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

.field public static final enum STILL_PLAYING:Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

.field public static final enum STOP_AFTER_SUSPEND:Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

.field public static final enum STOP_PLAYING:Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    const-string v1, "STOP_PLAYING"

    invoke-direct {v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;->STOP_PLAYING:Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    .line 79
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    const-string v1, "STILL_PLAYING"

    invoke-direct {v0, v1, v3}, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;->STILL_PLAYING:Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    .line 80
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    const-string v1, "STOP_AFTER_SUSPEND"

    invoke-direct {v0, v1, v4}, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;->STOP_AFTER_SUSPEND:Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;->STOP_PLAYING:Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    aput-object v1, v0, v2

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;->STILL_PLAYING:Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;->STOP_AFTER_SUSPEND:Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    aput-object v1, v0, v4

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;->$VALUES:[Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 77
    const-class v0, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    return-object v0
.end method

.method public static values()[Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;->$VALUES:[Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    invoke-virtual {v0}, [Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/HTML5VideoViewProxy$PlayingStatus;

    return-object v0
.end method
