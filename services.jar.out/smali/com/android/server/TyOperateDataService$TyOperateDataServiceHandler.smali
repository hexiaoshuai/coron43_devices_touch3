.class Lcom/android/server/TyOperateDataService$TyOperateDataServiceHandler;
.super Landroid/os/Handler;
.source "TyOperateDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TyOperateDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TyOperateDataServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TyOperateDataService;


# direct methods
.method constructor <init>(Lcom/android/server/TyOperateDataService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/TyOperateDataService$TyOperateDataServiceHandler;->this$0:Lcom/android/server/TyOperateDataService;

    .line 161
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 162
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x14

    const/4 v7, 0x2

    .line 166
    const-string v4, "TyOperateDataService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage msg.what:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    const-string v4, "sys.ty.copystarted"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, copydataStarted:Ljava/lang/String;
    const-string v4, "sys.ty.checkstarted"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, checkReturnStarted:Ljava/lang/String;
    const-string v4, "sys.ty.removestarted"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, removeDataStarted:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    :cond_3
    iget-object v4, p0, Lcom/android/server/TyOperateDataService$TyOperateDataServiceHandler;->this$0:Lcom/android/server/TyOperateDataService;

    #getter for: Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/TyOperateDataService;->access$000(Lcom/android/server/TyOperateDataService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TyOperateDataService$TyOperateDataServiceHandler;->this$0:Lcom/android/server/TyOperateDataService;

    #getter for: Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/TyOperateDataService;->access$000(Lcom/android/server/TyOperateDataService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 179
    :cond_4
    iget-object v4, p0, Lcom/android/server/TyOperateDataService$TyOperateDataServiceHandler;->this$0:Lcom/android/server/TyOperateDataService;

    iget-object v4, v4, Lcom/android/server/TyOperateDataService;->mPackageDatas:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TyOperateDataService$dataPackage;

    .line 180
    .local v0, Package:Lcom/android/server/TyOperateDataService$dataPackage;
    #calls: Lcom/android/server/TyOperateDataService$dataPackage;->writePackagedataToFile()Z
    invoke-static {v0}, Lcom/android/server/TyOperateDataService$dataPackage;->access$100(Lcom/android/server/TyOperateDataService$dataPackage;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    iget-object v4, p0, Lcom/android/server/TyOperateDataService$TyOperateDataServiceHandler;->this$0:Lcom/android/server/TyOperateDataService;

    #getter for: Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/TyOperateDataService;->access$000(Lcom/android/server/TyOperateDataService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TyOperateDataService$TyOperateDataServiceHandler;->this$0:Lcom/android/server/TyOperateDataService;

    #getter for: Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/TyOperateDataService;->access$000(Lcom/android/server/TyOperateDataService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 183
    iget-byte v4, v0, Lcom/android/server/TyOperateDataService$dataPackage;->OpeateType:B

    if-ne v4, v10, :cond_6

    .line 184
    const-string v4, "sys.ty.copystarted"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_5
    :goto_1
    const-string v4, "sys.ty.checkstarted"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_6
    iget-byte v4, v0, Lcom/android/server/TyOperateDataService$dataPackage;->OpeateType:B

    if-ne v4, v7, :cond_5

    .line 186
    const-string v4, "sys.ty.removestarted"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 193
    .end local v0           #Package:Lcom/android/server/TyOperateDataService$dataPackage;
    .end local v1           #checkReturnStarted:Ljava/lang/String;
    .end local v2           #copydataStarted:Ljava/lang/String;
    .end local v3           #removeDataStarted:Ljava/lang/String;
    :pswitch_1
    const-string v4, "sys.ty.copystarted"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .restart local v2       #copydataStarted:Ljava/lang/String;
    const-string v4, "sys.ty.removestarted"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .restart local v3       #removeDataStarted:Ljava/lang/String;
    const-string v4, "TyOperateDataService"

    const-string v5, "handleMessage INIT_CHECK"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v4, "TyOperateDataService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage copydataStarted:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v4, "TyOperateDataService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage removeDataStarted:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz v2, :cond_7

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    if-eqz v3, :cond_9

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 200
    :cond_8
    iget-object v4, p0, Lcom/android/server/TyOperateDataService$TyOperateDataServiceHandler;->this$0:Lcom/android/server/TyOperateDataService;

    #getter for: Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/TyOperateDataService;->access$000(Lcom/android/server/TyOperateDataService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TyOperateDataService$TyOperateDataServiceHandler;->this$0:Lcom/android/server/TyOperateDataService;

    #getter for: Lcom/android/server/TyOperateDataService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/TyOperateDataService;->access$000(Lcom/android/server/TyOperateDataService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 203
    :cond_9
    iget-object v4, p0, Lcom/android/server/TyOperateDataService$TyOperateDataServiceHandler;->this$0:Lcom/android/server/TyOperateDataService;

    #calls: Lcom/android/server/TyOperateDataService;->checkFilePackageReturnCode()V
    invoke-static {v4}, Lcom/android/server/TyOperateDataService;->access$200(Lcom/android/server/TyOperateDataService;)V

    goto/16 :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
