.class Landroid/media/RemoteControlClient$1;
.super Landroid/media/IRemoteControlClient$Stub;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method constructor <init>(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1092
    iput-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Landroid/media/IRemoteControlClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInformationRequested(II)V
    .locals 8
    .parameter "generationId"
    .parameter "infoFlags"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1096
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    .line 1099
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v7, p1, v2}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1103
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    .line 1104
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    .line 1105
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    .line 1106
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    .line 1107
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1109
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1111
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1112
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1114
    :cond_0
    return-void
.end method

.method public plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 3
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1127
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1128
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1131
    :cond_0
    return-void
.end method

.method public seekTo(IJ)V
    .locals 5
    .parameter "generationId"
    .parameter "timeMs"

    .prologue
    const/16 v4, 0xa

    .line 1159
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    .line 1161
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v4, p1, v2, v3}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1165
    :cond_0
    return-void
.end method

.method public setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 3
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1143
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1144
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1147
    :cond_0
    return-void
.end method

.method public setCurrentClientGenerationId(I)V
    .locals 4
    .parameter "clientGeneration"

    .prologue
    const/4 v3, 0x6

    .line 1118
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    .line 1120
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1123
    :cond_0
    return-void
.end method

.method public setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .parameter "rcd"
    .parameter "wantsSync"

    .prologue
    const/4 v1, 0x0

    .line 1151
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1152
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v2

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v3

    const/16 v4, 0xc

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1155
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1152
    goto :goto_0
.end method

.method public unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 3
    .parameter "rcd"

    .prologue
    .line 1135
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1136
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    #getter for: Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;
    invoke-static {v1}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1139
    :cond_0
    return-void
.end method
