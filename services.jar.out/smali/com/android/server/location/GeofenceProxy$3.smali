.class Lcom/android/server/location/GeofenceProxy$3;
.super Landroid/os/Handler;
.source "GeofenceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mGeofenceHardwareConnected:Z

.field private mGeofenceProviderConnected:Z

.field final synthetic this$0:Lcom/android/server/location/GeofenceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceProxy;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 129
    iput-object p1, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 130
    iput-boolean v0, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceHardwareConnected:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceProviderConnected:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceProviderConnected:Z

    .line 139
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceHardwareConnected:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #calls: Lcom/android/server/location/GeofenceProxy;->setGeofenceHardwareInProvider()V
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #calls: Lcom/android/server/location/GeofenceProxy;->setGpsGeofence()V
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$300(Lcom/android/server/location/GeofenceProxy;)V

    .line 145
    iput-boolean v1, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceHardwareConnected:Z

    .line 146
    iget-boolean v0, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceProviderConnected:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #calls: Lcom/android/server/location/GeofenceProxy;->setGeofenceHardwareInProvider()V
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)V

    goto :goto_0

    .line 151
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GeofenceProxy$3;->mGeofenceHardwareConnected:Z

    .line 152
    iget-object v0, p0, Lcom/android/server/location/GeofenceProxy$3;->this$0:Lcom/android/server/location/GeofenceProxy;

    #calls: Lcom/android/server/location/GeofenceProxy;->setGeofenceHardwareInProvider()V
    invoke-static {v0}, Lcom/android/server/location/GeofenceProxy;->access$200(Lcom/android/server/location/GeofenceProxy;)V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
