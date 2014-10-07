.class Landroid/widget/TYColorClockView$1;
.super Landroid/os/Handler;
.source "TYColorClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TYColorClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TYColorClockView;


# direct methods
.method constructor <init>(Landroid/widget/TYColorClockView;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 97
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/TYColorClockView;->access$000(Landroid/widget/TYColorClockView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 98
    .local v10, r:Landroid/content/res/Resources;
    const-string/jumbo v2, "red"

    iget-object v3, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;
    invoke-static {v3}, Landroid/widget/TYColorClockView;->access$100(Landroid/widget/TYColorClockView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    const v3, 0x1080656

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    #setter for: Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Landroid/widget/TYColorClockView;->access$202(Landroid/widget/TYColorClockView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 100
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    const-string v3, "blue"

    #setter for: Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/widget/TYColorClockView;->access$102(Landroid/widget/TYColorClockView;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->mImgDail:Landroid/widget/ImageView;
    invoke-static {v2}, Landroid/widget/TYColorClockView;->access$300(Landroid/widget/TYColorClockView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/TYColorClockView;->access$200(Landroid/widget/TYColorClockView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    new-instance v8, Landroid/content/Intent;

    const-string v2, "android.widget.broadcast.change_clock_color"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v8, intent:Landroid/content/Intent;
    const-string v2, "id"

    iget-object v3, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->widgetId:I
    invoke-static {v3}, Landroid/widget/TYColorClockView;->access$400(Landroid/widget/TYColorClockView;)I

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v2, "currentColor"

    iget-object v3, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;
    invoke-static {v3}, Landroid/widget/TYColorClockView;->access$100(Landroid/widget/TYColorClockView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/TYColorClockView;->access$500(Landroid/widget/TYColorClockView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/TYColorClockView;->access$600(Landroid/widget/TYColorClockView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sendBroadcast:android.widget.broadcast.change_clock_color"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->mImgDail:Landroid/widget/ImageView;
    invoke-static {v4}, Landroid/widget/TYColorClockView;->access$300(Landroid/widget/TYColorClockView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v9, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 118
    .local v9, mAnimUp:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 119
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 120
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 121
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    invoke-virtual {v2, v9}, Landroid/widget/TYColorClockView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->mHour:F
    invoke-static {v2}, Landroid/widget/TYColorClockView;->access$700(Landroid/widget/TYColorClockView;)F

    move-result v2

    const/high16 v3, 0x4140

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 124
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->mHour:F
    invoke-static {v2}, Landroid/widget/TYColorClockView;->access$700(Landroid/widget/TYColorClockView;)F

    move-result v2

    const/high16 v3, 0x4140

    div-float/2addr v2, v3

    const/high16 v3, 0x43b4

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 131
    .local v0, hour_anim:Landroid/view/animation/RotateAnimation;
    :goto_1
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 132
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 133
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->mImgHour:Landroid/widget/ImageView;
    invoke-static {v2}, Landroid/widget/TYColorClockView;->access$800(Landroid/widget/TYColorClockView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 135
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->mMinutes:F
    invoke-static {v3}, Landroid/widget/TYColorClockView;->access$900(Landroid/widget/TYColorClockView;)F

    move-result v3

    const/high16 v4, 0x4270

    div-float/2addr v3, v4

    const/high16 v4, 0x43b4

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b4

    add-float/2addr v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x3f00

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 138
    .local v1, minute_anim:Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 139
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 140
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->mImgMinute:Landroid/widget/ImageView;
    invoke-static {v2}, Landroid/widget/TYColorClockView;->access$1000(Landroid/widget/TYColorClockView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 142
    return-void

    .line 101
    .end local v0           #hour_anim:Landroid/view/animation/RotateAnimation;
    .end local v1           #minute_anim:Landroid/view/animation/RotateAnimation;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #mAnimUp:Landroid/view/animation/TranslateAnimation;
    :cond_1
    const-string v2, "blue"

    iget-object v3, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;
    invoke-static {v3}, Landroid/widget/TYColorClockView;->access$100(Landroid/widget/TYColorClockView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    const v3, 0x1080659

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    #setter for: Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Landroid/widget/TYColorClockView;->access$202(Landroid/widget/TYColorClockView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    const-string/jumbo v3, "purple"

    #setter for: Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/widget/TYColorClockView;->access$102(Landroid/widget/TYColorClockView;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 105
    :cond_2
    const-string/jumbo v2, "purple"

    iget-object v3, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;
    invoke-static {v3}, Landroid/widget/TYColorClockView;->access$100(Landroid/widget/TYColorClockView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    const v3, 0x108065a

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    #setter for: Landroid/widget/TYColorClockView;->mDail:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Landroid/widget/TYColorClockView;->access$202(Landroid/widget/TYColorClockView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    const-string/jumbo v3, "red"

    #setter for: Landroid/widget/TYColorClockView;->currentColor:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/widget/TYColorClockView;->access$102(Landroid/widget/TYColorClockView;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 128
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #mAnimUp:Landroid/view/animation/TranslateAnimation;
    :cond_3
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TYColorClockView$1;->this$0:Landroid/widget/TYColorClockView;

    #getter for: Landroid/widget/TYColorClockView;->mHour:F
    invoke-static {v2}, Landroid/widget/TYColorClockView;->access$700(Landroid/widget/TYColorClockView;)F

    move-result v2

    const/high16 v3, 0x4140

    sub-float/2addr v2, v3

    const/high16 v3, 0x4140

    div-float/2addr v2, v3

    const/high16 v3, 0x43b4

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .restart local v0       #hour_anim:Landroid/view/animation/RotateAnimation;
    goto/16 :goto_1
.end method
