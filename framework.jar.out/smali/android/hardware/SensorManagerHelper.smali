.class public Landroid/hardware/SensorManagerHelper;
.super Ljava/lang/Object;
.source "SensorManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManagerHelper$EndTurnListener;,
        Landroid/hardware/SensorManagerHelper$OnTurnListener;,
        Landroid/hardware/SensorManagerHelper$OnShakeListener;
    }
.end annotation


# static fields
.field public static final SHAKE_AND_UPDATE_NET:I = 0x0

.field private static final SPEED_SHRESHOLD:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "SensorManagerHelper"

.field public static final TURN_OVER:I = 0x1

.field private static final UPDATE_INTERVAL_TIME:I = 0x32


# instance fields
.field endTurn:Z

.field lastUpdateTime:J

.field last_x:F

.field last_y:F

.field last_z:F

.field private mContext:Landroid/content/Context;

.field private mEndTurnListener:Landroid/hardware/SensorManagerHelper$EndTurnListener;

.field mGoUp:Z

.field private mOnShakeListener:Landroid/hardware/SensorManagerHelper$OnShakeListener;

.field private mOnTurnListener:Landroid/hardware/SensorManagerHelper$OnTurnListener;

.field private mSensor:Landroid/hardware/Sensor;

.field public mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mType:I

.field public sensorListener:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/SensorManagerHelper;->mType:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SensorManagerHelper;->endTurn:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/SensorManagerHelper;->mGoUp:Z

    .line 133
    new-instance v0, Landroid/hardware/SensorManagerHelper$1;

    invoke-direct {v0, p0}, Landroid/hardware/SensorManagerHelper$1;-><init>(Landroid/hardware/SensorManagerHelper;)V

    iput-object v0, p0, Landroid/hardware/SensorManagerHelper;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 49
    iput-object p1, p0, Landroid/hardware/SensorManagerHelper;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public checkIfShaked(Landroid/hardware/SensorEvent;)V
    .locals 17
    .parameter "event"

    .prologue
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 155
    .local v1, currentUpdateTime:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/SensorManagerHelper;->lastUpdateTime:J

    sub-long v8, v1, v13

    .line 156
    .local v8, timeInterval:J
    const-wide/16 v13, 0x32

    cmp-long v13, v8, v13

    if-gtz v13, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/hardware/SensorManagerHelper;->lastUpdateTime:J

    .line 158
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v10, v13, v14

    .line 159
    .local v10, x:F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v11, v13, v14

    .line 160
    .local v11, y:F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v12, v13, v14

    .line 161
    .local v12, z:F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/hardware/SensorManagerHelper;->last_x:F

    sub-float v3, v10, v13

    .line 162
    .local v3, dx:F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/hardware/SensorManagerHelper;->last_y:F

    sub-float v4, v11, v13

    .line 163
    .local v4, dy:F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/hardware/SensorManagerHelper;->last_z:F

    sub-float v5, v12, v13

    .line 164
    .local v5, dz:F
    move-object/from16 v0, p0

    iput v10, v0, Landroid/hardware/SensorManagerHelper;->last_x:F

    .line 165
    move-object/from16 v0, p0

    iput v11, v0, Landroid/hardware/SensorManagerHelper;->last_y:F

    .line 166
    move-object/from16 v0, p0

    iput v12, v0, Landroid/hardware/SensorManagerHelper;->last_z:F

    .line 167
    mul-float v13, v3, v3

    mul-float v14, v4, v4

    add-float/2addr v13, v14

    mul-float v14, v5, v5

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    long-to-double v15, v8

    div-double/2addr v13, v15

    const-wide v15, 0x40c3880000000000L

    mul-double v6, v13, v15

    .line 168
    .local v6, speed:D
    const-wide v13, 0x40b7700000000000L

    cmpl-double v13, v6, v13

    if-ltz v13, :cond_0

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/SensorManagerHelper;->mOnShakeListener:Landroid/hardware/SensorManagerHelper$OnShakeListener;

    invoke-interface {v13}, Landroid/hardware/SensorManagerHelper$OnShakeListener;->onShake()V

    goto :goto_0
.end method

.method public checkIfTurnover(Landroid/hardware/SensorEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    .line 177
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    float-to-double v2, v10

    .line 178
    .local v2, x:D
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    float-to-double v6, v10

    .line 179
    .local v6, y:D
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    float-to-double v8, v10

    .line 181
    .local v8, z:D
    mul-double v10, v2, v2

    mul-double v12, v6, v6

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 183
    .local v4, xy:D
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 185
    .local v0, angle:D
    const-wide v10, 0x4066800000000000L

    mul-double/2addr v10, v0

    const-wide v12, 0x400921fb54442d18L

    div-double v0, v10, v12

    .line 187
    const-wide/high16 v10, -0x4010

    cmpl-double v10, v2, v10

    if-lez v10, :cond_2

    const-wide/high16 v10, 0x3ff0

    cmpg-double v10, v2, v10

    if-gez v10, :cond_2

    const-wide/high16 v10, -0x4010

    cmpl-double v10, v6, v10

    if-lez v10, :cond_2

    const-wide/high16 v10, 0x3ff0

    cmpg-double v10, v6, v10

    if-gez v10, :cond_2

    .line 188
    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-lez v10, :cond_1

    .line 189
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/hardware/SensorManagerHelper;->mGoUp:Z

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/hardware/SensorManagerHelper;->mGoUp:Z

    goto :goto_0

    .line 195
    :cond_2
    const-wide/high16 v10, 0x4024

    cmpg-double v10, v0, v10

    if-gez v10, :cond_3

    iget-boolean v10, p0, Landroid/hardware/SensorManagerHelper;->mGoUp:Z

    if-nez v10, :cond_3

    .line 196
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/hardware/SensorManagerHelper;->mGoUp:Z

    .line 197
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/hardware/SensorManagerHelper;->endTurn:Z

    .line 198
    iget-object v10, p0, Landroid/hardware/SensorManagerHelper;->mOnTurnListener:Landroid/hardware/SensorManagerHelper$OnTurnListener;

    invoke-interface {v10}, Landroid/hardware/SensorManagerHelper$OnTurnListener;->onTurn()V

    goto :goto_0

    .line 199
    :cond_3
    const-wide v10, 0x4065400000000000L

    cmpl-double v10, v0, v10

    if-lez v10, :cond_0

    iget-boolean v10, p0, Landroid/hardware/SensorManagerHelper;->mGoUp:Z

    if-eqz v10, :cond_0

    .line 200
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/hardware/SensorManagerHelper;->mGoUp:Z

    .line 201
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/hardware/SensorManagerHelper;->endTurn:Z

    .line 202
    iget-object v10, p0, Landroid/hardware/SensorManagerHelper;->mOnTurnListener:Landroid/hardware/SensorManagerHelper$OnTurnListener;

    invoke-interface {v10}, Landroid/hardware/SensorManagerHelper$OnTurnListener;->onTurn()V

    goto :goto_0
.end method

.method public setEndTurnListener(Landroid/hardware/SensorManagerHelper$EndTurnListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 125
    iput-object p1, p0, Landroid/hardware/SensorManagerHelper;->mEndTurnListener:Landroid/hardware/SensorManagerHelper$EndTurnListener;

    .line 126
    return-void
.end method

.method public setOnShakeListener(Landroid/hardware/SensorManagerHelper$OnShakeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 111
    iput-object p1, p0, Landroid/hardware/SensorManagerHelper;->mOnShakeListener:Landroid/hardware/SensorManagerHelper$OnShakeListener;

    .line 112
    return-void
.end method

.method public setOnTurnListener(Landroid/hardware/SensorManagerHelper$OnTurnListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 118
    iput-object p1, p0, Landroid/hardware/SensorManagerHelper;->mOnTurnListener:Landroid/hardware/SensorManagerHelper$OnTurnListener;

    .line 119
    return-void
.end method

.method public start(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 56
    const-string v0, "SensorManagerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start() : type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput p1, p0, Landroid/hardware/SensorManagerHelper;->mType:I

    .line 58
    iget-object v0, p0, Landroid/hardware/SensorManagerHelper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iput-object v0, p0, Landroid/hardware/SensorManagerHelper;->sensorListener:Landroid/hardware/SensorEventListener;

    .line 59
    iget-object v0, p0, Landroid/hardware/SensorManagerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/hardware/SensorManagerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 60
    iget-object v0, p0, Landroid/hardware/SensorManagerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Landroid/hardware/SensorManagerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SensorManagerHelper;->mSensor:Landroid/hardware/Sensor;

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/hardware/SensorManagerHelper;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Landroid/hardware/SensorManagerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/SensorManagerHelper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/SensorManagerHelper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 66
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 71
    const-string v0, "SensorManagerHelper"

    const-string/jumbo v1, "stop() unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Landroid/hardware/SensorManagerHelper;->sensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_1

    .line 73
    const-string v0, "SensorManagerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop() endTurn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/SensorManagerHelper;->endTurn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-boolean v0, p0, Landroid/hardware/SensorManagerHelper;->endTurn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/SensorManagerHelper;->mEndTurnListener:Landroid/hardware/SensorManagerHelper$EndTurnListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Landroid/hardware/SensorManagerHelper;->mEndTurnListener:Landroid/hardware/SensorManagerHelper$EndTurnListener;

    invoke-interface {v0}, Landroid/hardware/SensorManagerHelper$EndTurnListener;->EndTurn()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SensorManagerHelper;->endTurn:Z

    .line 78
    :cond_0
    iget-object v0, p0, Landroid/hardware/SensorManagerHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/SensorManagerHelper;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 79
    const-string v0, "SensorManagerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sensorListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/SensorManagerHelper;->sensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SensorManagerHelper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iput-object v0, p0, Landroid/hardware/SensorManagerHelper;->sensorListener:Landroid/hardware/SensorEventListener;

    .line 83
    :cond_1
    return-void
.end method
