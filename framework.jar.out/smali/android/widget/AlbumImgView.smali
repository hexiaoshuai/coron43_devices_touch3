.class public Landroid/widget/AlbumImgView;
.super Landroid/widget/ImageView;
.source "AlbumImgView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AlbumImgView$1;,
        Landroid/widget/AlbumImgView$MyGestureListener;
    }
.end annotation


# static fields
.field public static final NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field private static final TAG:Ljava/lang/String; = "AlbumImgView"

.field private static playBarHeight:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Landroid/widget/AlbumImgView;->playBarHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AlbumImgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AlbumImgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-object p1, p0, Landroid/widget/AlbumImgView;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Landroid/widget/AlbumImgView$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AlbumImgView$MyGestureListener;-><init>(Landroid/widget/AlbumImgView;Landroid/widget/AlbumImgView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/AlbumImgView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 58
    return-void
.end method

.method static synthetic access$100(Landroid/widget/AlbumImgView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/widget/AlbumImgView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 35
    sget v0, Landroid/widget/AlbumImgView;->playBarHeight:I

    return v0
.end method


# virtual methods
.method public SetPlayBarHeight(I)V
    .locals 0
    .parameter "Height"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 90
    sput p1, Landroid/widget/AlbumImgView;->playBarHeight:I

    .line 91
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/widget/AlbumImgView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setRotationX(F)V
    .locals 0
    .parameter "rotationX"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 80
    return-void
.end method

.method public setRotationY(F)V
    .locals 0
    .parameter "rotationY"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 86
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .parameter "translationY"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 73
    return-void
.end method
