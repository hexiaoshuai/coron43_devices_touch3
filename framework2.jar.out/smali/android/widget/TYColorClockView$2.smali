.class Landroid/widget/TYColorClockView$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 163
    iput-object p1, p0, Landroid/widget/TYColorClockView$2;->this$0:Landroid/widget/TYColorClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 166
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, timeZone:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/TYColorClockView$2;->this$0:Landroid/widget/TYColorClockView;

    new-instance v2, Landroid/text/format/Time;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #setter for: Landroid/widget/TYColorClockView;->mCalendar:Landroid/text/format/Time;
    invoke-static {v1, v2}, Landroid/widget/TYColorClockView;->access$1102(Landroid/widget/TYColorClockView;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 170
    .end local v0           #timeZone:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/widget/TYColorClockView$2;->this$0:Landroid/widget/TYColorClockView;

    #calls: Landroid/widget/TYColorClockView;->onTimeChanged()V
    invoke-static {v1}, Landroid/widget/TYColorClockView;->access$1200(Landroid/widget/TYColorClockView;)V

    .line 171
    iget-object v1, p0, Landroid/widget/TYColorClockView$2;->this$0:Landroid/widget/TYColorClockView;

    invoke-virtual {v1}, Landroid/widget/TYColorClockView;->invalidate()V

    .line 172
    return-void
.end method
