.class Landroid/webkit/HTML5VideoFullScreen$1$1;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoFullScreen$1;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/HTML5VideoFullScreen$1;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen$1;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$1$1;->this$1:Landroid/webkit/HTML5VideoFullScreen$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1$1;->this$1:Landroid/webkit/HTML5VideoFullScreen$1;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1$1;->this$1:Landroid/webkit/HTML5VideoFullScreen$1;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #getter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 112
    :cond_0
    return-void
.end method
