.class public Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field public static final FACTORY_TEST_HIGH_LEVEL:I = 0x2

.field public static final FACTORY_TEST_LOW_LEVEL:I = 0x1

.field public static final FACTORY_TEST_OFF:I = 0x0

.field static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native init1([Ljava/lang/String;)V
.end method

.method public static final init2()V
    .locals 3

    .prologue
    .line 1208
    const-string v1, "SystemServer"

    const-string v2, "Entered the Android system server!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    new-instance v0, Lcom/android/server/ServerThread;

    invoke-direct {v0}, Lcom/android/server/ServerThread;-><init>()V

    .line 1210
    .local v0, thr:Ljava/lang/Thread;
    const-string v1, "android.server.ServerThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1212
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 16
    .parameter "args"

    .prologue
    .line 1150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1156
    const-string v1, "SystemServer"

    const-string v2, "System clock is before 1970; setting to 1970."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const-wide/32 v1, 0x5265c00

    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1162
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1163
    .local v13, time:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1164
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1165
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 1166
    .local v15, year:I
    const/16 v1, 0x7b2

    if-ne v15, v1, :cond_1

    .line 1167
    const-string v1, "ro.first.boot.date"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1168
    .local v12, firstDate:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1169
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm"

    invoke-direct {v10, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1170
    .local v10, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v10, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 1171
    .local v9, date:Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {v9}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v9}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {v9}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {v9}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 1175
    .end local v9           #date:Ljava/util/Date;
    .end local v10           #dateFormat:Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 1176
    .local v7, currentTime:J
    invoke-static {v7, v8}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v7           #currentTime:J
    .end local v12           #firstDate:Ljava/lang/String;
    .end local v13           #time:J
    .end local v15           #year:I
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1184
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 1185
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    .line 1186
    sget-object v1, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/android/server/SystemServer$1;

    invoke-direct {v2}, Lcom/android/server/SystemServer$1;-><init>()V

    const-wide/32 v3, 0x36ee80

    const-wide/32 v5, 0x36ee80

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1195
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 1199
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const v2, 0x3f4ccccd

    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 1201
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 1203
    const-string v1, "android_servers"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1204
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer;->init1([Ljava/lang/String;)V

    .line 1205
    return-void

    .line 1173
    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v12       #firstDate:Ljava/lang/String;
    .restart local v13       #time:J
    .restart local v15       #year:I
    :cond_3
    const/16 v1, 0x7de

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1178
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v12           #firstDate:Ljava/lang/String;
    .end local v13           #time:J
    .end local v15           #year:I
    :catch_0
    move-exception v11

    .line 1179
    .local v11, e:Ljava/lang/Exception;
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
