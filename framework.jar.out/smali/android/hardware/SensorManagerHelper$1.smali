.class Landroid/hardware/SensorManagerHelper$1;
.super Ljava/lang/Object;
.source "SensorManagerHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SensorManagerHelper;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManagerHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Landroid/hardware/SensorManagerHelper$1;->this$0:Landroid/hardware/SensorManagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 147
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 137
    iget-object v0, p0, Landroid/hardware/SensorManagerHelper$1;->this$0:Landroid/hardware/SensorManagerHelper;

    iget v0, v0, Landroid/hardware/SensorManagerHelper;->mType:I

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Landroid/hardware/SensorManagerHelper$1;->this$0:Landroid/hardware/SensorManagerHelper;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManagerHelper;->checkIfShaked(Landroid/hardware/SensorEvent;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Landroid/hardware/SensorManagerHelper$1;->this$0:Landroid/hardware/SensorManagerHelper;

    iget v0, v0, Landroid/hardware/SensorManagerHelper;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Landroid/hardware/SensorManagerHelper$1;->this$0:Landroid/hardware/SensorManagerHelper;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManagerHelper;->checkIfTurnover(Landroid/hardware/SensorEvent;)V

    goto :goto_0
.end method
