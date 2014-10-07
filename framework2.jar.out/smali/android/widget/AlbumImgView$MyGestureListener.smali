.class Landroid/widget/AlbumImgView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AlbumImgView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AlbumImgView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AlbumImgView;


# direct methods
.method private constructor <init>(Landroid/widget/AlbumImgView;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Landroid/widget/AlbumImgView$MyGestureListener;->this$0:Landroid/widget/AlbumImgView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AlbumImgView;Landroid/widget/AlbumImgView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/widget/AlbumImgView$MyGestureListener;-><init>(Landroid/widget/AlbumImgView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 98
    .local v0, dx:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 99
    .local v1, dy:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 102
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/widget/AlbumImgView$MyGestureListener;->this$0:Landroid/widget/AlbumImgView;

    #getter for: Landroid/widget/AlbumImgView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/AlbumImgView;->access$100(Landroid/widget/AlbumImgView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    const/4 v3, 0x1

    .line 106
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-static {}, Landroid/widget/AlbumImgView;->access$200()I

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Landroid/widget/AlbumImgView$MyGestureListener;->this$0:Landroid/widget/AlbumImgView;

    invoke-virtual {v2}, Landroid/widget/AlbumImgView;->getMeasuredHeight()I

    move-result v2

    invoke-static {}, Landroid/widget/AlbumImgView;->access$200()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 118
    :cond_0
    return v0
.end method
