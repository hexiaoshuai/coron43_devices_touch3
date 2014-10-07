.class Landroid/widget/TYAnalogClockView$1;
.super Landroid/content/BroadcastReceiver;
.source "TYAnalogClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TYAnalogClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TYAnalogClockView;


# direct methods
.method constructor <init>(Landroid/widget/TYAnalogClockView;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Landroid/widget/TYAnalogClockView$1;->this$0:Landroid/widget/TYAnalogClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, timeZone:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$1;->this$0:Landroid/widget/TYAnalogClockView;

    new-instance v2, Landroid/text/format/Time;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #setter for: Landroid/widget/TYAnalogClockView;->mCalendar:Landroid/text/format/Time;
    invoke-static {v1, v2}, Landroid/widget/TYAnalogClockView;->access$002(Landroid/widget/TYAnalogClockView;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 105
    .end local v0           #timeZone:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$1;->this$0:Landroid/widget/TYAnalogClockView;

    const/4 v2, 0x1

    #calls: Landroid/widget/TYAnalogClockView;->onTimeChanged(Z)V
    invoke-static {v1, v2}, Landroid/widget/TYAnalogClockView;->access$100(Landroid/widget/TYAnalogClockView;Z)V

    .line 106
    iget-object v1, p0, Landroid/widget/TYAnalogClockView$1;->this$0:Landroid/widget/TYAnalogClockView;

    invoke-virtual {v1}, Landroid/widget/TYAnalogClockView;->invalidate()V

    .line 107
    return-void
.end method
