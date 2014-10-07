.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 1891
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 57
    if-nez p0, :cond_1

    .line 58
    const/4 v0, 0x0

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 62
    .local v0, in:Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0           #in:Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 13
    .parameter "intent"
    .parameter "permission"
    .parameter "userId"

    .prologue
    .line 93
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    move v12, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 83
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "ps"

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1888
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 205
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 1884
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 116
    :pswitch_1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 118
    .local v120, b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 119
    .local v6, app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, callingPackage:Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 121
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 123
    .local v10, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 125
    .local v12, requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 126
    .local v13, startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 127
    .local v14, profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 129
    .local v15, profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .local v16, options:Landroid/os/Bundle;
    :goto_2
    move-object/from16 v5, p0

    .line 131
    invoke-virtual/range {v5 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v183

    .line 134
    .local v183, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    move/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v5, 0x1

    goto :goto_0

    .line 127
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #options:Landroid/os/Bundle;
    .end local v183           #result:I
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 129
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    .line 141
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #callingPackage:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/os/IBinder;
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v13           #startFlags:I
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 143
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 144
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 145
    .restart local v7       #callingPackage:Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 146
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 147
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 148
    .restart local v10       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 149
    .restart local v11       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 150
    .restart local v12       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 151
    .restart local v13       #startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 152
    .restart local v14       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 154
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 156
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, userId:I
    move-object/from16 v5, p0

    .line 157
    invoke-virtual/range {v5 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v183

    .line 160
    .restart local v183       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    move-object/from16 v0, p3

    move/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 152
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #options:Landroid/os/Bundle;
    .end local v17           #userId:I
    .end local v183           #result:I
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 154
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    .line 167
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #callingPackage:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/os/IBinder;
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v13           #startFlags:I
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 169
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 170
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 171
    .restart local v7       #callingPackage:Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 172
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 173
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 174
    .restart local v10       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 175
    .restart local v11       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 176
    .restart local v12       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 177
    .restart local v13       #startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 178
    .restart local v14       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 180
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 182
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v5, p0

    .line 183
    invoke-virtual/range {v5 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v183

    .line 186
    .local v183, result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v5, 0x0

    move-object/from16 v0, v183

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 178
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #options:Landroid/os/Bundle;
    .end local v17           #userId:I
    .end local v183           #result:Landroid/app/IActivityManager$WaitResult;
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 180
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    .line 193
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #callingPackage:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/os/IBinder;
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v13           #startFlags:I
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 195
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 196
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 197
    .restart local v7       #callingPackage:Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 198
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 199
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 200
    .restart local v10       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 201
    .restart local v11       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 202
    .restart local v12       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 203
    .restart local v13       #startFlags:I
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 204
    .local v27, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 206
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v18, p0

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v28, v16

    move/from16 v29, v17

    .line 207
    invoke-virtual/range {v18 .. v29}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v183

    .line 209
    .local v183, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    move-object/from16 v0, p3

    move/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 204
    .end local v16           #options:Landroid/os/Bundle;
    .end local v17           #userId:I
    .end local v183           #result:I
    :cond_6
    const/16 v16, 0x0

    goto :goto_7

    .line 216
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #callingPackage:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/os/IBinder;
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v13           #startFlags:I
    .end local v27           #config:Landroid/content/res/Configuration;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 218
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 219
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/IntentSender;

    .line 220
    .local v8, intent:Landroid/content/IntentSender;
    const/16 v31, 0x0

    .line 221
    .local v31, fillInIntent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 222
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .end local v31           #fillInIntent:Landroid/content/Intent;
    check-cast v31, Landroid/content/Intent;

    .line 224
    .restart local v31       #fillInIntent:Landroid/content/Intent;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 225
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 226
    .restart local v10       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 227
    .restart local v11       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 228
    .restart local v12       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 229
    .local v36, flagsMask:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 230
    .local v37, flagsValues:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .restart local v16       #options:Landroid/os/Bundle;
    :goto_8
    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    move/from16 v35, v12

    move-object/from16 v38, v16

    .line 232
    invoke-virtual/range {v28 .. v38}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v183

    .line 235
    .restart local v183       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    move-object/from16 v0, p3

    move/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 230
    .end local v16           #options:Landroid/os/Bundle;
    .end local v183           #result:I
    :cond_8
    const/16 v16, 0x0

    goto :goto_8

    .line 242
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #intent:Landroid/content/IntentSender;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/os/IBinder;
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v31           #fillInIntent:Landroid/content/Intent;
    .end local v36           #flagsMask:I
    .end local v37           #flagsValues:I
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v125

    .line 244
    .local v125, callingActivity:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 245
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 247
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v125

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v183

    .line 248
    .local v183, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v183, :cond_a

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 245
    .end local v16           #options:Landroid/os/Bundle;
    .end local v183           #result:Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_9

    .line 249
    .restart local v16       #options:Landroid/os/Bundle;
    .restart local v183       #result:Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    .line 254
    .end local v8           #intent:Landroid/content/Intent;
    .end local v16           #options:Landroid/os/Bundle;
    .end local v125           #callingActivity:Landroid/os/IBinder;
    .end local v183           #result:Z
    :pswitch_7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 256
    .local v52, token:Landroid/os/IBinder;
    const/16 v44, 0x0

    .line 257
    .local v44, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 258
    .local v43, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 259
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    .end local v44           #resultData:Landroid/content/Intent;
    check-cast v44, Landroid/content/Intent;

    .line 261
    .restart local v44       #resultData:Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v43

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v181

    .line 262
    .local v181, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v181, :cond_c

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 263
    :cond_c
    const/4 v5, 0x0

    goto :goto_b

    .line 268
    .end local v43           #resultCode:I
    .end local v44           #resultData:Landroid/content/Intent;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v181           #res:Z
    :pswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 270
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 271
    .restart local v11       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 272
    .restart local v12       #requestCode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v11, v12}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 278
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 280
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v181

    .line 281
    .restart local v181       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v181, :cond_d

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 282
    :cond_d
    const/4 v5, 0x0

    goto :goto_c

    .line 287
    .end local v52           #token:Landroid/os/IBinder;
    .end local v181           #res:Z
    :pswitch_a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 289
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v181

    .line 290
    .restart local v181       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v181, :cond_e

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 291
    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 297
    .end local v52           #token:Landroid/os/IBinder;
    .end local v181           #res:Z
    :pswitch_b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 299
    .restart local v120       #b:Landroid/os/IBinder;
    if-eqz v120, :cond_f

    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 301
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 302
    .local v20, packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 303
    if-eqz v120, :cond_10

    invoke-static/range {v120 .. v120}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 305
    .local v21, rec:Landroid/content/IIntentReceiver;
    :goto_f
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/IntentFilter;

    .line 306
    .local v22, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 307
    .local v23, perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v18, p0

    move-object/from16 v19, v6

    move/from16 v24, v17

    .line 308
    invoke-virtual/range {v18 .. v24}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 309
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v8, :cond_11

    .line 311
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 316
    :goto_10
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 299
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v17           #userId:I
    .end local v20           #packageName:Ljava/lang/String;
    .end local v21           #rec:Landroid/content/IIntentReceiver;
    .end local v22           #filter:Landroid/content/IntentFilter;
    .end local v23           #perm:Ljava/lang/String;
    :cond_f
    const/4 v6, 0x0

    goto :goto_e

    .line 303
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v20       #packageName:Ljava/lang/String;
    :cond_10
    const/16 v21, 0x0

    goto :goto_f

    .line 314
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v17       #userId:I
    .restart local v21       #rec:Landroid/content/IIntentReceiver;
    .restart local v22       #filter:Landroid/content/IntentFilter;
    .restart local v23       #perm:Ljava/lang/String;
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 321
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v17           #userId:I
    .end local v20           #packageName:Ljava/lang/String;
    .end local v21           #rec:Landroid/content/IIntentReceiver;
    .end local v22           #filter:Landroid/content/IntentFilter;
    .end local v23           #perm:Ljava/lang/String;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 323
    .restart local v120       #b:Landroid/os/IBinder;
    if-nez v120, :cond_12

    .line 324
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 326
    :cond_12
    invoke-static/range {v120 .. v120}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 327
    .restart local v21       #rec:Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 334
    .end local v21           #rec:Landroid/content/IIntentReceiver;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 336
    .restart local v120       #b:Landroid/os/IBinder;
    if-eqz v120, :cond_13

    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 338
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_11
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 339
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 340
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 341
    if-eqz v120, :cond_14

    invoke-static/range {v120 .. v120}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v10

    .line 343
    .local v10, resultTo:Landroid/content/IIntentReceiver;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 344
    .restart local v43       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 345
    .local v44, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v45

    .line 346
    .local v45, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 347
    .restart local v23       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 348
    .local v47, appOp:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v48, 0x1

    .line 349
    .local v48, serialized:Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v49, 0x1

    .line 350
    .local v49, sticky:Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v38, p0

    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v42, v10

    move-object/from16 v46, v23

    move/from16 v50, v17

    .line 351
    invoke-virtual/range {v38 .. v50}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    move-result v181

    .line 354
    .local v181, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 336
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/content/IIntentReceiver;
    .end local v17           #userId:I
    .end local v23           #perm:Ljava/lang/String;
    .end local v43           #resultCode:I
    .end local v44           #resultData:Ljava/lang/String;
    .end local v45           #resultExtras:Landroid/os/Bundle;
    .end local v47           #appOp:I
    .end local v48           #serialized:Z
    .end local v49           #sticky:Z
    .end local v181           #res:I
    :cond_13
    const/4 v6, 0x0

    goto :goto_11

    .line 341
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #resolvedType:Ljava/lang/String;
    :cond_14
    const/4 v10, 0x0

    goto :goto_12

    .line 348
    .restart local v10       #resultTo:Landroid/content/IIntentReceiver;
    .restart local v23       #perm:Ljava/lang/String;
    .restart local v43       #resultCode:I
    .restart local v44       #resultData:Ljava/lang/String;
    .restart local v45       #resultExtras:Landroid/os/Bundle;
    .restart local v47       #appOp:I
    :cond_15
    const/16 v48, 0x0

    goto :goto_13

    .line 349
    .restart local v48       #serialized:Z
    :cond_16
    const/16 v49, 0x0

    goto :goto_14

    .line 361
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/content/IIntentReceiver;
    .end local v23           #perm:Ljava/lang/String;
    .end local v43           #resultCode:I
    .end local v44           #resultData:Ljava/lang/String;
    .end local v45           #resultExtras:Landroid/os/Bundle;
    .end local v47           #appOp:I
    .end local v48           #serialized:Z
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 363
    .restart local v120       #b:Landroid/os/IBinder;
    if-eqz v120, :cond_17

    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 364
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_15
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 365
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 366
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v8, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 363
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v17           #userId:I
    :cond_17
    const/4 v6, 0x0

    goto :goto_15

    .line 372
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v42

    .line 374
    .local v42, who:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 375
    .restart local v43       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 376
    .restart local v44       #resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v45

    .line 377
    .restart local v45       #resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v46, 0x1

    .line 378
    .local v46, resultAbort:Z
    :goto_16
    if-eqz v42, :cond_18

    move-object/from16 v41, p0

    .line 379
    invoke-virtual/range {v41 .. v46}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 381
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 377
    .end local v46           #resultAbort:Z
    :cond_19
    const/16 v46, 0x0

    goto :goto_16

    .line 386
    .end local v42           #who:Landroid/os/IBinder;
    .end local v43           #resultCode:I
    .end local v44           #resultData:Ljava/lang/String;
    .end local v45           #resultExtras:Landroid/os/Bundle;
    :pswitch_10
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 389
    .restart local v6       #app:Landroid/app/IApplicationThread;
    if-eqz v6, :cond_1a

    .line 390
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 392
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 397
    .end local v6           #app:Landroid/app/IApplicationThread;
    :pswitch_11
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 399
    .restart local v52       #token:Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 400
    .restart local v27       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 401
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #config:Landroid/content/res/Configuration;
    check-cast v27, Landroid/content/res/Configuration;

    .line 403
    .restart local v27       #config:Landroid/content/res/Configuration;
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v189, 0x1

    .line 404
    .local v189, stopProfiling:Z
    :goto_17
    if-eqz v52, :cond_1c

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v27

    move/from16 v3, v189

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 407
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 403
    .end local v189           #stopProfiling:Z
    :cond_1d
    const/16 v189, 0x0

    goto :goto_17

    .line 412
    .end local v27           #config:Landroid/content/res/Configuration;
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_12
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 414
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 420
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_13
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 422
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 428
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_14
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 430
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v152

    .line 431
    .local v152, map:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v196, v5

    .line 433
    .local v196, thumbnail:Landroid/graphics/Bitmap;
    :goto_18
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v131

    check-cast v131, Ljava/lang/CharSequence;

    .line 434
    .local v131, description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v152

    move-object/from16 v3, v196

    move-object/from16 v4, v131

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 431
    .end local v131           #description:Ljava/lang/CharSequence;
    .end local v196           #thumbnail:Landroid/graphics/Bitmap;
    :cond_1e
    const/16 v196, 0x0

    goto :goto_18

    .line 440
    .end local v52           #token:Landroid/os/IBinder;
    .end local v152           #map:Landroid/os/Bundle;
    :pswitch_15
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 442
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 448
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_16
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 450
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 456
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_17
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 458
    .restart local v52       #token:Landroid/os/IBinder;
    if-eqz v52, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v181

    .line 459
    .local v181, res:Ljava/lang/String;
    :goto_19
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    move-object/from16 v0, p3

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 458
    .end local v181           #res:Ljava/lang/String;
    :cond_1f
    const/16 v181, 0x0

    goto :goto_19

    .line 465
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_18
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 467
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v128

    .line 468
    .local v128, cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    move-object/from16 v0, v128

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 470
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 474
    .end local v52           #token:Landroid/os/IBinder;
    .end local v128           #cn:Landroid/content/ComponentName;
    :pswitch_19
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v154

    .line 476
    .local v154, maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 477
    .local v62, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v177

    .line 478
    .local v177, receiverBinder:Landroid/os/IBinder;
    if-eqz v177, :cond_20

    invoke-static/range {v177 .. v177}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v176

    .line 481
    .local v176, receiver:Landroid/app/IThumbnailReceiver;
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v154

    move/from16 v2, v62

    move-object/from16 v3, v176

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v147

    .line 482
    .local v147, list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    if-eqz v147, :cond_21

    invoke-interface/range {v147 .. v147}, Ljava/util/List;->size()I

    move-result v111

    .line 484
    .local v111, N:I
    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/16 v138, 0x0

    .local v138, i:I
    :goto_1c
    move/from16 v0, v138

    move/from16 v1, v111

    if-ge v0, v1, :cond_22

    .line 487
    move-object/from16 v0, v147

    move/from16 v1, v138

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v141

    check-cast v141, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 489
    .local v141, info:Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v141

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 486
    add-int/lit8 v138, v138, 0x1

    goto :goto_1c

    .line 478
    .end local v111           #N:I
    .end local v138           #i:I
    .end local v141           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v147           #list:Ljava/util/List;
    .end local v176           #receiver:Landroid/app/IThumbnailReceiver;
    :cond_20
    const/16 v176, 0x0

    goto :goto_1a

    .line 483
    .restart local v147       #list:Ljava/util/List;
    .restart local v176       #receiver:Landroid/app/IThumbnailReceiver;
    :cond_21
    const/16 v111, -0x1

    goto :goto_1b

    .line 491
    .restart local v111       #N:I
    .restart local v138       #i:I
    :cond_22
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 495
    .end local v62           #fl:I
    .end local v111           #N:I
    .end local v138           #i:I
    .end local v147           #list:Ljava/util/List;
    .end local v154           #maxNum:I
    .end local v176           #receiver:Landroid/app/IThumbnailReceiver;
    .end local v177           #receiverBinder:Landroid/os/IBinder;
    :pswitch_1a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v154

    .line 497
    .restart local v154       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 498
    .restart local v62       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 499
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move/from16 v1, v154

    move/from16 v2, v62

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    move-result-object v149

    .line 501
    .local v149, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    move-object/from16 v0, p3

    move-object/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 503
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 507
    .end local v17           #userId:I
    .end local v62           #fl:I
    .end local v149           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v154           #maxNum:I
    :pswitch_1b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 509
    .local v53, id:I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v123

    .line 510
    .local v123, bm:Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    if-eqz v123, :cond_23

    .line 512
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    const/4 v5, 0x0

    move-object/from16 v0, v123

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$TaskThumbnails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 517
    :goto_1d
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 515
    :cond_23
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 521
    .end local v53           #id:I
    .end local v123           #bm:Landroid/app/ActivityManager$TaskThumbnails;
    :pswitch_1c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 523
    .restart local v53       #id:I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v123

    .line 524
    .local v123, bm:Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    if-eqz v123, :cond_24

    .line 526
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v5, 0x0

    move-object/from16 v0, v123

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 531
    :goto_1e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 529
    :cond_24
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 535
    .end local v53           #id:I
    .end local v123           #bm:Landroid/graphics/Bitmap;
    :pswitch_1d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v154

    .line 537
    .restart local v154       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 538
    .restart local v62       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v154

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v147

    .line 539
    .restart local v147       #list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    if-eqz v147, :cond_25

    invoke-interface/range {v147 .. v147}, Ljava/util/List;->size()I

    move-result v111

    .line 541
    .restart local v111       #N:I
    :goto_1f
    move-object/from16 v0, p3

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    const/16 v138, 0x0

    .restart local v138       #i:I
    :goto_20
    move/from16 v0, v138

    move/from16 v1, v111

    if-ge v0, v1, :cond_26

    .line 544
    move-object/from16 v0, v147

    move/from16 v1, v138

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v141

    check-cast v141, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 546
    .local v141, info:Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v141

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 543
    add-int/lit8 v138, v138, 0x1

    goto :goto_20

    .line 540
    .end local v111           #N:I
    .end local v138           #i:I
    .end local v141           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_25
    const/16 v111, -0x1

    goto :goto_1f

    .line 548
    .restart local v111       #N:I
    .restart local v138       #i:I
    :cond_26
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 552
    .end local v62           #fl:I
    .end local v111           #N:I
    .end local v138           #i:I
    .end local v147           #list:Ljava/util/List;
    .end local v154           #maxNum:I
    :pswitch_1e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v148

    .line 554
    .local v148, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    move-object/from16 v0, p3

    move-object/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 556
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 560
    .end local v148           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_1f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v150

    .line 562
    .local v150, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    move-object/from16 v0, p3

    move-object/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 564
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 568
    .end local v150           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_20
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v151

    .line 570
    .local v151, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    move-object/from16 v0, p3

    move-object/from16 v1, v151

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 572
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 576
    .end local v151           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_21
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v194

    .line 578
    .local v194, task:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 579
    .restart local v62       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 581
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v194

    move/from16 v2, v62

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 579
    .end local v16           #options:Landroid/os/Bundle;
    :cond_27
    const/16 v16, 0x0

    goto :goto_21

    .line 587
    .end local v62           #fl:I
    .end local v194           #task:I
    :pswitch_22
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v194

    .line 589
    .restart local v194       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v194

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 595
    .end local v194           #task:I
    :pswitch_23
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 597
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    const/16 v160, 0x1

    .line 598
    .local v160, nonRoot:Z
    :goto_22
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v160

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v181

    .line 599
    .local v181, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    if-eqz v181, :cond_29

    const/4 v5, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 597
    .end local v160           #nonRoot:Z
    .end local v181           #res:Z
    :cond_28
    const/16 v160, 0x0

    goto :goto_22

    .line 600
    .restart local v160       #nonRoot:Z
    .restart local v181       #res:Z
    :cond_29
    const/4 v5, 0x0

    goto :goto_23

    .line 605
    .end local v52           #token:Landroid/os/IBinder;
    .end local v160           #nonRoot:Z
    .end local v181           #res:Z
    :pswitch_24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v194

    .line 607
    .restart local v194       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v194

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 613
    .end local v194           #task:I
    :pswitch_25
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 615
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v162, 0x1

    .line 616
    .local v162, onlyRoot:Z
    :goto_24
    if-eqz v52, :cond_2b

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v162

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v181

    .line 618
    .local v181, res:I
    :goto_25
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 615
    .end local v162           #onlyRoot:Z
    .end local v181           #res:I
    :cond_2a
    const/16 v162, 0x0

    goto :goto_24

    .line 616
    .restart local v162       #onlyRoot:Z
    :cond_2b
    const/16 v181, -0x1

    goto :goto_25

    .line 624
    .end local v52           #token:Landroid/os/IBinder;
    .end local v162           #onlyRoot:Z
    :pswitch_26
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 626
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v196, v5

    .line 628
    .restart local v196       #thumbnail:Landroid/graphics/Bitmap;
    :goto_26
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v131

    check-cast v131, Ljava/lang/CharSequence;

    .line 629
    .restart local v131       #description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v196

    move-object/from16 v3, v131

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 626
    .end local v131           #description:Ljava/lang/CharSequence;
    .end local v196           #thumbnail:Landroid/graphics/Bitmap;
    :cond_2c
    const/16 v196, 0x0

    goto :goto_26

    .line 635
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_27
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 637
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 638
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 639
    .local v84, name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 640
    .restart local v17       #userId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2d

    const/16 v187, 0x1

    .line 641
    .local v187, stable:Z
    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move/from16 v2, v17

    move/from16 v3, v187

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v130

    .line 642
    .local v130, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    if-eqz v130, :cond_2e

    .line 644
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    const/4 v5, 0x0

    move-object/from16 v0, v130

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 649
    :goto_28
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 640
    .end local v130           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v187           #stable:Z
    :cond_2d
    const/16 v187, 0x0

    goto :goto_27

    .line 647
    .restart local v130       #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v187       #stable:Z
    :cond_2e
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .line 653
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v17           #userId:I
    .end local v84           #name:Ljava/lang/String;
    .end local v120           #b:Landroid/os/IBinder;
    .end local v130           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v187           #stable:Z
    :pswitch_28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 655
    .restart local v84       #name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 656
    .restart local v17       #userId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 657
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move/from16 v2, v17

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v130

    .line 658
    .restart local v130       #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    if-eqz v130, :cond_2f

    .line 660
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    const/4 v5, 0x0

    move-object/from16 v0, v130

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 665
    :goto_29
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 663
    :cond_2f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 669
    .end local v17           #userId:I
    .end local v52           #token:Landroid/os/IBinder;
    .end local v84           #name:Ljava/lang/String;
    .end local v130           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    :pswitch_29
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 671
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 672
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v172

    .line 674
    .local v172, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v172

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 680
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v120           #b:Landroid/os/IBinder;
    .end local v172           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_2a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 682
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v187

    .line 683
    .local v187, stable:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v198

    .line 684
    .local v198, unstable:I
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move/from16 v2, v187

    move/from16 v3, v198

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v181

    .line 685
    .local v181, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    if-eqz v181, :cond_30

    const/4 v5, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 686
    :cond_30
    const/4 v5, 0x0

    goto :goto_2a

    .line 691
    .end local v120           #b:Landroid/os/IBinder;
    .end local v181           #res:Z
    .end local v187           #stable:I
    .end local v198           #unstable:I
    :pswitch_2b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 693
    .restart local v120       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 699
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_2c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 701
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    const/16 v187, 0x1

    .line 702
    .local v187, stable:Z
    :goto_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move/from16 v2, v187

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 701
    .end local v187           #stable:Z
    :cond_31
    const/16 v187, 0x0

    goto :goto_2b

    .line 708
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_2d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 710
    .restart local v84       #name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 711
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 717
    .end local v52           #token:Landroid/os/IBinder;
    .end local v84           #name:Ljava/lang/String;
    :pswitch_2e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v129

    check-cast v129, Landroid/content/ComponentName;

    .line 719
    .local v129, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v166

    .line 720
    .local v166, pi:Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    move-object/from16 v0, v166

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 722
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 726
    .end local v129           #comp:Landroid/content/ComponentName;
    .end local v166           #pi:Landroid/app/PendingIntent;
    :pswitch_2f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 728
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 729
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 730
    .local v59, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 731
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 732
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v128

    .line 733
    .restart local v128       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    move-object/from16 v0, v128

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 735
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 739
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v17           #userId:I
    .end local v59           #service:Landroid/content/Intent;
    .end local v120           #b:Landroid/os/IBinder;
    .end local v128           #cn:Landroid/content/ComponentName;
    :pswitch_30
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 741
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 742
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 743
    .restart local v59       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 744
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 745
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v9, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v181

    .line 746
    .local v181, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 752
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v17           #userId:I
    .end local v59           #service:Landroid/content/Intent;
    .end local v120           #b:Landroid/os/IBinder;
    .end local v181           #res:I
    :pswitch_31
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 754
    .local v51, className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 755
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v188

    .line 756
    .local v188, startId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move/from16 v3, v188

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v181

    .line 757
    .local v181, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    if-eqz v181, :cond_32

    const/4 v5, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 758
    :cond_32
    const/4 v5, 0x0

    goto :goto_2c

    .line 763
    .end local v51           #className:Landroid/content/ComponentName;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v181           #res:Z
    .end local v188           #startId:I
    :pswitch_32
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 765
    .restart local v51       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 766
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 767
    .restart local v53       #id:I
    const/16 v54, 0x0

    .line 768
    .local v54, notification:Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_33

    .line 769
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    .end local v54           #notification:Landroid/app/Notification;
    check-cast v54, Landroid/app/Notification;

    .line 771
    .restart local v54       #notification:Landroid/app/Notification;
    :cond_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34

    const/16 v55, 0x1

    .local v55, removeNotification:Z
    :goto_2d
    move-object/from16 v50, p0

    .line 772
    invoke-virtual/range {v50 .. v55}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 771
    .end local v55           #removeNotification:Z
    :cond_34
    const/16 v55, 0x0

    goto :goto_2d

    .line 778
    .end local v51           #className:Landroid/content/ComponentName;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v53           #id:I
    .end local v54           #notification:Landroid/app/Notification;
    :pswitch_33
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 780
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 781
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 782
    .restart local v52       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 783
    .restart local v59       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 784
    .restart local v9       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 786
    .restart local v62       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 787
    .restart local v17       #userId:I
    invoke-static/range {v120 .. v120}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v61

    .local v61, conn:Landroid/app/IServiceConnection;
    move-object/from16 v56, p0

    move-object/from16 v57, v6

    move-object/from16 v58, v52

    move-object/from16 v60, v9

    move/from16 v63, v17

    .line 788
    invoke-virtual/range {v56 .. v63}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v181

    .line 789
    .local v181, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 795
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v17           #userId:I
    .end local v52           #token:Landroid/os/IBinder;
    .end local v59           #service:Landroid/content/Intent;
    .end local v61           #conn:Landroid/app/IServiceConnection;
    .end local v62           #fl:I
    .end local v120           #b:Landroid/os/IBinder;
    .end local v181           #res:I
    :pswitch_34
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 797
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v61

    .line 798
    .restart local v61       #conn:Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v181

    .line 799
    .local v181, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    if-eqz v181, :cond_35

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 800
    :cond_35
    const/4 v5, 0x0

    goto :goto_2e

    .line 805
    .end local v61           #conn:Landroid/app/IServiceConnection;
    .end local v120           #b:Landroid/os/IBinder;
    .end local v181           #res:Z
    :pswitch_35
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 807
    .restart local v52       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 808
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v59

    .line 809
    .local v59, service:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 815
    .end local v8           #intent:Landroid/content/Intent;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v59           #service:Landroid/os/IBinder;
    :pswitch_36
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 817
    .restart local v52       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 818
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    const/16 v133, 0x1

    .line 819
    .local v133, doRebind:Z
    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v133

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 818
    .end local v133           #doRebind:Z
    :cond_36
    const/16 v133, 0x0

    goto :goto_2f

    .line 825
    .end local v8           #intent:Landroid/content/Intent;
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_37
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 827
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 828
    .local v71, type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v188

    .line 829
    .restart local v188       #startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v181

    .line 830
    .local v181, res:I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v71

    move/from16 v3, v188

    move/from16 v4, v181

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 836
    .end local v52           #token:Landroid/os/IBinder;
    .end local v71           #type:I
    .end local v181           #res:I
    .end local v188           #startId:I
    :pswitch_38
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 838
    .restart local v51       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 839
    .restart local v14       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 840
    .restart local v62       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v67

    .line 841
    .local v67, arguments:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 842
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v68

    .line 843
    .local v68, w:Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 844
    invoke-static/range {v120 .. v120}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v69

    .line 845
    .local v69, c:Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v63, p0

    move-object/from16 v64, v51

    move-object/from16 v65, v14

    move/from16 v66, v62

    move/from16 v70, v17

    .line 846
    invoke-virtual/range {v63 .. v70}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;I)Z

    move-result v181

    .line 847
    .local v181, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    if-eqz v181, :cond_37

    const/4 v5, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 848
    :cond_37
    const/4 v5, 0x0

    goto :goto_30

    .line 854
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v17           #userId:I
    .end local v51           #className:Landroid/content/ComponentName;
    .end local v62           #fl:I
    .end local v67           #arguments:Landroid/os/Bundle;
    .end local v68           #w:Landroid/app/IInstrumentationWatcher;
    .end local v69           #c:Landroid/app/IUiAutomationConnection;
    .end local v120           #b:Landroid/os/IBinder;
    .end local v181           #res:Z
    :pswitch_39
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 856
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 857
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 858
    .restart local v43       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v184

    .line 859
    .local v184, results:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v184

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 865
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v43           #resultCode:I
    .end local v120           #b:Landroid/os/IBinder;
    .end local v184           #results:Landroid/os/Bundle;
    :pswitch_3a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    .line 867
    .restart local v27       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 869
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 873
    .end local v27           #config:Landroid/content/res/Configuration;
    :pswitch_3b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 875
    .restart local v27       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 881
    .end local v27           #config:Landroid/content/res/Configuration;
    :pswitch_3c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 883
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v180

    .line 884
    .local v180, requestedOrientation:I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v180

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 885
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 890
    .end local v52           #token:Landroid/os/IBinder;
    .end local v180           #requestedOrientation:I
    :pswitch_3d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 892
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v178

    .line 893
    .local v178, req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    move-object/from16 v0, p3

    move/from16 v1, v178

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 899
    .end local v52           #token:Landroid/os/IBinder;
    .end local v178           #req:I
    :pswitch_3e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 901
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v128

    .line 902
    .restart local v128       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    move-object/from16 v0, v128

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 904
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 908
    .end local v52           #token:Landroid/os/IBinder;
    .end local v128           #cn:Landroid/content/ComponentName;
    :pswitch_3f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 910
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 912
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 916
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_40
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 918
    .restart local v71       #type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 919
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 920
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 921
    .restart local v11       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 924
    .restart local v12       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    .line 925
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v76

    check-cast v76, [Landroid/content/Intent;

    .line 926
    .local v76, requestIntents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v77

    .line 931
    .local v77, requestResolvedTypes:[Ljava/lang/String;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 932
    .restart local v62       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_39

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 934
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v70, p0

    move-object/from16 v72, v20

    move-object/from16 v73, v52

    move-object/from16 v74, v11

    move/from16 v75, v12

    move/from16 v78, v62

    move-object/from16 v79, v16

    move/from16 v80, v17

    .line 935
    invoke-virtual/range {v70 .. v80}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v181

    .line 938
    .local v181, res:Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    if-eqz v181, :cond_3a

    invoke-interface/range {v181 .. v181}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 940
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 928
    .end local v16           #options:Landroid/os/Bundle;
    .end local v17           #userId:I
    .end local v62           #fl:I
    .end local v76           #requestIntents:[Landroid/content/Intent;
    .end local v77           #requestResolvedTypes:[Ljava/lang/String;
    .end local v181           #res:Landroid/content/IIntentSender;
    :cond_38
    const/16 v76, 0x0

    .line 929
    .restart local v76       #requestIntents:[Landroid/content/Intent;
    const/16 v77, 0x0

    .restart local v77       #requestResolvedTypes:[Ljava/lang/String;
    goto :goto_31

    .line 932
    .restart local v62       #fl:I
    :cond_39
    const/16 v16, 0x0

    goto :goto_32

    .line 939
    .restart local v16       #options:Landroid/os/Bundle;
    .restart local v17       #userId:I
    .restart local v181       #res:Landroid/content/IIntentSender;
    :cond_3a
    const/4 v5, 0x0

    goto :goto_33

    .line 944
    .end local v11           #resultWho:Ljava/lang/String;
    .end local v12           #requestCode:I
    .end local v16           #options:Landroid/os/Bundle;
    .end local v17           #userId:I
    .end local v20           #packageName:Ljava/lang/String;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v62           #fl:I
    .end local v71           #type:I
    .end local v76           #requestIntents:[Landroid/content/Intent;
    .end local v77           #requestResolvedTypes:[Ljava/lang/String;
    .end local v181           #res:Landroid/content/IIntentSender;
    :pswitch_41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v174

    .line 947
    .local v174, r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 953
    .end local v174           #r:Landroid/content/IIntentSender;
    :pswitch_42
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v174

    .line 956
    .restart local v174       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v181

    .line 957
    .local v181, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    move-object/from16 v0, p3

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 963
    .end local v174           #r:Landroid/content/IIntentSender;
    .end local v181           #res:Ljava/lang/String;
    :pswitch_43
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v174

    .line 966
    .restart local v174       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v181

    .line 967
    .local v181, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 973
    .end local v174           #r:Landroid/content/IIntentSender;
    .end local v181           #res:I
    :pswitch_44
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 975
    .local v79, callingPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 976
    .local v80, callingUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 977
    .restart local v17       #userId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b

    const/16 v82, 0x1

    .line 978
    .local v82, allowAll:Z
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    const/16 v83, 0x1

    .line 979
    .local v83, requireFull:Z
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 980
    .restart local v84       #name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .local v85, callerPackage:Ljava/lang/String;
    move-object/from16 v78, p0

    move/from16 v81, v17

    .line 981
    invoke-virtual/range {v78 .. v85}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v181

    .line 983
    .restart local v181       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 977
    .end local v82           #allowAll:Z
    .end local v83           #requireFull:Z
    .end local v84           #name:Ljava/lang/String;
    .end local v85           #callerPackage:Ljava/lang/String;
    .end local v181           #res:I
    :cond_3b
    const/16 v82, 0x0

    goto :goto_34

    .line 978
    .restart local v82       #allowAll:Z
    :cond_3c
    const/16 v83, 0x0

    goto :goto_35

    .line 989
    .end local v17           #userId:I
    .end local v79           #callingPid:I
    .end local v80           #callingUid:I
    .end local v82           #allowAll:Z
    :pswitch_45
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v153

    .line 991
    .local v153, max:I
    move-object/from16 v0, p0

    move/from16 v1, v153

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 997
    .end local v153           #max:I
    :pswitch_46
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v146

    .line 999
    .local v146, limit:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    move-object/from16 v0, p3

    move/from16 v1, v146

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1005
    .end local v146           #limit:I
    :pswitch_47
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1007
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v167

    .line 1008
    .local v167, pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d

    const/16 v144, 0x1

    .line 1009
    .local v144, isForeground:Z
    :goto_36
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v167

    move/from16 v3, v144

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1008
    .end local v144           #isForeground:Z
    :cond_3d
    const/16 v144, 0x0

    goto :goto_36

    .line 1015
    .end local v52           #token:Landroid/os/IBinder;
    .end local v167           #pid:I
    :pswitch_48
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1017
    .restart local v23       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v167

    .line 1018
    .restart local v167       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v197

    .line 1019
    .local v197, uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v167

    move/from16 v3, v197

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v181

    .line 1020
    .restart local v181       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1022
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1026
    .end local v23           #perm:Ljava/lang/String;
    .end local v167           #pid:I
    .end local v181           #res:I
    .end local v197           #uid:I
    :pswitch_49
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1028
    .local v97, uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v167

    .line 1029
    .restart local v167       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v197

    .line 1030
    .restart local v197       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1031
    .local v98, mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v167

    move/from16 v3, v197

    move/from16 v4, v98

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v181

    .line 1032
    .restart local v181       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1038
    .end local v97           #uri:Landroid/net/Uri;
    .end local v98           #mode:I
    .end local v167           #pid:I
    .end local v181           #res:I
    .end local v197           #uid:I
    :pswitch_4a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1040
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v161

    .line 1042
    .local v161, observer:Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1043
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v161

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v181

    .line 1044
    .local v181, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    if-eqz v181, :cond_3e

    const/4 v5, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1045
    :cond_3e
    const/4 v5, 0x0

    goto :goto_37

    .line 1050
    .end local v17           #userId:I
    .end local v20           #packageName:Ljava/lang/String;
    .end local v161           #observer:Landroid/content/pm/IPackageDataObserver;
    .end local v181           #res:Z
    :pswitch_4b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1052
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1053
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1054
    .local v96, targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1055
    .restart local v97       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1056
    .restart local v98       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v97

    move/from16 v3, v98

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1057
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1062
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v96           #targetPkg:Ljava/lang/String;
    .end local v97           #uri:Landroid/net/Uri;
    .end local v98           #mode:I
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_4c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1064
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1065
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1066
    .restart local v97       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1067
    .restart local v98       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v98

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 1068
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1073
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v97           #uri:Landroid/net/Uri;
    .end local v98           #mode:I
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_4d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1075
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1076
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f

    const/16 v202, 0x1

    .line 1077
    .local v202, waiting:Z
    :goto_38
    move-object/from16 v0, p0

    move/from16 v1, v202

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1076
    .end local v202           #waiting:Z
    :cond_3f
    const/16 v202, 0x0

    goto :goto_38

    .line 1083
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_4e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    new-instance v156, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v156 .. v156}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1085
    .local v156, mi:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    const/4 v5, 0x0

    move-object/from16 v0, v156

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1088
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1092
    .end local v156           #mi:Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_4f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1099
    :pswitch_50
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v97

    .line 1101
    .restart local v97       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v165

    .line 1102
    .local v165, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    if-eqz v165, :cond_40

    .line 1104
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    const/4 v5, 0x1

    move-object/from16 v0, v165

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1109
    :goto_39
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1107
    :cond_40
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_39

    .line 1113
    .end local v97           #uri:Landroid/net/Uri;
    .end local v165           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_51
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 1115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1120
    :pswitch_52
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 1122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1127
    :pswitch_53
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x1

    :goto_3a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1128
    :cond_41
    const/4 v5, 0x0

    goto :goto_3a

    .line 1134
    :pswitch_54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v170

    .line 1136
    .local v170, pn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_42

    const/16 v204, 0x1

    .line 1137
    .local v204, wfd:Z
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_43

    const/16 v164, 0x1

    .line 1138
    .local v164, per:Z
    :goto_3c
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move/from16 v2, v204

    move/from16 v3, v164

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1136
    .end local v164           #per:Z
    .end local v204           #wfd:Z
    :cond_42
    const/16 v204, 0x0

    goto :goto_3b

    .line 1137
    .restart local v204       #wfd:Z
    :cond_43
    const/16 v164, 0x0

    goto :goto_3c

    .line 1144
    .end local v170           #pn:Ljava/lang/String;
    .end local v204           #wfd:Z
    :pswitch_55
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_44

    const/16 v134, 0x1

    .line 1146
    .local v134, enabled:Z
    :goto_3d
    move-object/from16 v0, p0

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1145
    .end local v134           #enabled:Z
    :cond_44
    const/16 v134, 0x0

    goto :goto_3d

    .line 1152
    :pswitch_56
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v203

    .line 1155
    .local v203, watcher:Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v203

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1161
    .end local v203           #watcher:Landroid/app/IActivityController;
    :pswitch_57
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1168
    :pswitch_58
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v143

    .line 1171
    .local v143, is:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1177
    .end local v143           #is:Landroid/content/IIntentSender;
    :pswitch_59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v168

    .line 1179
    .local v168, pids:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v175

    .line 1180
    .local v175, reason:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_45

    const/16 v185, 0x1

    .line 1181
    .local v185, secure:Z
    :goto_3e
    move-object/from16 v0, p0

    move-object/from16 v1, v168

    move-object/from16 v2, v175

    move/from16 v3, v185

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v181

    .line 1182
    .restart local v181       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    if-eqz v181, :cond_46

    const/4 v5, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1180
    .end local v181           #res:Z
    .end local v185           #secure:Z
    :cond_45
    const/16 v185, 0x0

    goto :goto_3e

    .line 1183
    .restart local v181       #res:Z
    .restart local v185       #secure:Z
    :cond_46
    const/4 v5, 0x0

    goto :goto_3f

    .line 1188
    .end local v168           #pids:[I
    .end local v175           #reason:Ljava/lang/String;
    .end local v181           #res:Z
    .end local v185           #secure:Z
    :pswitch_5a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v175

    .line 1190
    .restart local v175       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v181

    .line 1191
    .restart local v181       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    if-eqz v181, :cond_47

    const/4 v5, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1192
    :cond_47
    const/4 v5, 0x0

    goto :goto_40

    .line 1197
    .end local v175           #reason:Ljava/lang/String;
    .end local v181           #res:Z
    :pswitch_5b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v169

    .line 1199
    .local v169, pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1200
    .local v127, cls:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 1201
    .local v113, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 1202
    .local v140, indata:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    move-object/from16 v2, v127

    move-object/from16 v3, v113

    move-object/from16 v4, v140

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1208
    .end local v113           #action:Ljava/lang/String;
    .end local v127           #cls:Ljava/lang/String;
    .end local v140           #indata:Ljava/lang/String;
    .end local v169           #pkg:Ljava/lang/String;
    :pswitch_5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1210
    .local v6, app:Landroid/os/IBinder;
    new-instance v126, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v126

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1211
    .local v126, ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1217
    .end local v6           #app:Landroid/os/IBinder;
    .end local v126           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_5d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1219
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v192

    .line 1220
    .local v192, tag:Ljava/lang/String;
    new-instance v126, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v126

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1221
    .restart local v126       #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v192

    move-object/from16 v2, v126

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v181

    .line 1222
    .restart local v181       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    if-eqz v181, :cond_48

    const/4 v5, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1224
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1223
    :cond_48
    const/4 v5, 0x0

    goto :goto_41

    .line 1228
    .end local v6           #app:Landroid/os/IBinder;
    .end local v126           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v181           #res:Z
    .end local v192           #tag:Ljava/lang/String;
    :pswitch_5e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1230
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v201

    .line 1231
    .local v201, violationMask:I
    new-instance v141, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v141

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1232
    .local v141, info:Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v201

    move-object/from16 v2, v141

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1238
    .end local v6           #app:Landroid/os/IBinder;
    .end local v141           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v201           #violationMask:I
    :pswitch_5f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v186

    .line 1240
    .local v186, sig:I
    move-object/from16 v0, p0

    move/from16 v1, v186

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1246
    .end local v186           #sig:I
    :pswitch_60
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1248
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1249
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1255
    .end local v17           #userId:I
    .end local v20           #packageName:Ljava/lang/String;
    :pswitch_61
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1262
    :pswitch_62
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1264
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1265
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1271
    .end local v17           #userId:I
    .end local v20           #packageName:Ljava/lang/String;
    :pswitch_63
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    new-instance v141, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v141 .. v141}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1274
    .local v141, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    const/4 v5, 0x0

    move-object/from16 v0, v141

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1277
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1281
    .end local v141           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_64
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v27

    .line 1283
    .local v27, config:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1284
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1285
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1289
    .end local v27           #config:Landroid/content/pm/ConfigurationInfo;
    :pswitch_65
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v87

    .line 1291
    .local v87, process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1292
    .restart local v17       #userId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49

    const/16 v89, 0x1

    .line 1293
    .local v89, start:Z
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v92

    .line 1294
    .local v92, profileType:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 1295
    .local v90, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4a

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v91

    .local v91, fd:Landroid/os/ParcelFileDescriptor;
    :goto_43
    move-object/from16 v86, p0

    move/from16 v88, v17

    .line 1297
    invoke-virtual/range {v86 .. v92}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v181

    .line 1298
    .restart local v181       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    if-eqz v181, :cond_4b

    const/4 v5, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1292
    .end local v89           #start:Z
    .end local v90           #path:Ljava/lang/String;
    .end local v91           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v92           #profileType:I
    .end local v181           #res:Z
    :cond_49
    const/16 v89, 0x0

    goto :goto_42

    .line 1295
    .restart local v89       #start:Z
    .restart local v90       #path:Ljava/lang/String;
    .restart local v92       #profileType:I
    :cond_4a
    const/16 v91, 0x0

    goto :goto_43

    .line 1299
    .restart local v91       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v181       #res:Z
    :cond_4b
    const/4 v5, 0x0

    goto :goto_44

    .line 1304
    .end local v17           #userId:I
    .end local v87           #process:Ljava/lang/String;
    .end local v89           #start:Z
    .end local v90           #path:Ljava/lang/String;
    .end local v91           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v92           #profileType:I
    .end local v181           #res:Z
    :pswitch_66
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v181

    .line 1306
    .restart local v181       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    if-eqz v181, :cond_4c

    const/4 v5, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1307
    :cond_4c
    const/4 v5, 0x0

    goto :goto_45

    .line 1312
    .end local v181           #res:Z
    :pswitch_67
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1319
    :pswitch_68
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1326
    :pswitch_69
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 1328
    .local v59, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1329
    .restart local v9       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v9}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v122

    .line 1330
    .local v122, binder:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    move-object/from16 v0, p3

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1332
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1336
    .end local v9           #resolvedType:Ljava/lang/String;
    .end local v59           #service:Landroid/content/Intent;
    .end local v122           #binder:Landroid/os/IBinder;
    :pswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v141

    check-cast v141, Landroid/content/pm/ApplicationInfo;

    .line 1338
    .local v141, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v121

    .line 1339
    .local v121, backupRestoreMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v141

    move/from16 v2, v121

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v191

    .line 1340
    .local v191, success:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    if-eqz v191, :cond_4d

    const/4 v5, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1341
    :cond_4d
    const/4 v5, 0x0

    goto :goto_46

    .line 1346
    .end local v121           #backupRestoreMode:I
    .end local v141           #info:Landroid/content/pm/ApplicationInfo;
    .end local v191           #success:Z
    :pswitch_6b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1348
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v114

    .line 1349
    .local v114, agent:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1355
    .end local v20           #packageName:Ljava/lang/String;
    .end local v114           #agent:Landroid/os/IBinder;
    :pswitch_6c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1356
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v141

    check-cast v141, Landroid/content/pm/ApplicationInfo;

    .line 1357
    .restart local v141       #info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1359
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1363
    .end local v141           #info:Landroid/content/pm/ApplicationInfo;
    :pswitch_6d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v169

    .line 1365
    .restart local v169       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 1366
    .local v117, appid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    move/from16 v2, v117

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;I)V

    .line 1367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1372
    .end local v117           #appid:I
    .end local v169           #pkg:Ljava/lang/String;
    :pswitch_6e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v175

    .line 1374
    .restart local v175       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1380
    .end local v175           #reason:Ljava/lang/String;
    :pswitch_6f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v168

    .line 1382
    .restart local v168       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v181

    .line 1383
    .local v181, res:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1384
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v181

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1385
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1389
    .end local v168           #pids:[I
    .end local v181           #res:[Landroid/os/Debug$MemoryInfo;
    :pswitch_70
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v171

    .line 1391
    .local v171, processName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v197

    .line 1392
    .restart local v197       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    move/from16 v2, v197

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1398
    .end local v171           #processName:Ljava/lang/String;
    .end local v197           #uid:I
    :pswitch_71
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1400
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1401
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 1402
    .local v135, enterAnim:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 1403
    .local v136, exitAnim:I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v20

    move/from16 v3, v135

    move/from16 v4, v136

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1409
    .end local v20           #packageName:Ljava/lang/String;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v135           #enterAnim:I
    .end local v136           #exitAnim:I
    :pswitch_72
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v118

    .line 1411
    .local v118, areThey:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    if-eqz v118, :cond_4e

    const/4 v5, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1413
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1412
    :cond_4e
    const/4 v5, 0x0

    goto :goto_47

    .line 1417
    .end local v118           #areThey:Z
    :pswitch_73
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_4f

    const/16 v158, 0x1

    .line 1419
    .local v158, monkey:Z
    :goto_48
    move-object/from16 v0, p0

    move/from16 v1, v158

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1418
    .end local v158           #monkey:Z
    :cond_4f
    const/16 v158, 0x0

    goto :goto_48

    .line 1425
    :pswitch_74
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1426
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1432
    :pswitch_75
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1434
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v145

    .line 1435
    .local v145, isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    if-eqz v145, :cond_50

    const/4 v5, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1436
    :cond_50
    const/4 v5, 0x0

    goto :goto_49

    .line 1441
    .end local v52           #token:Landroid/os/IBinder;
    .end local v145           #isit:Z
    :pswitch_76
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1443
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_51

    const/16 v139, 0x1

    .line 1444
    .local v139, imm:Z
    :goto_4a
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v139

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1443
    .end local v139           #imm:Z
    :cond_51
    const/16 v139, 0x0

    goto :goto_4a

    .line 1450
    .end local v52           #token:Landroid/os/IBinder;
    :pswitch_77
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1451
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v145

    .line 1452
    .restart local v145       #isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    if-eqz v145, :cond_52

    const/4 v5, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1454
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1453
    :cond_52
    const/4 v5, 0x0

    goto :goto_4b

    .line 1458
    .end local v145           #isit:Z
    :pswitch_78
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v197

    .line 1460
    .restart local v197       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v142

    .line 1461
    .local v142, initialPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1462
    .restart local v20       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v155

    .line 1463
    .local v155, message:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v197

    move/from16 v2, v142

    move-object/from16 v3, v20

    move-object/from16 v4, v155

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1465
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1469
    .end local v20           #packageName:Ljava/lang/String;
    .end local v142           #initialPid:I
    .end local v155           #message:Ljava/lang/String;
    .end local v197           #uid:I
    :pswitch_79
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1470
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1471
    .restart local v97       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1472
    .restart local v17       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v71

    .line 1473
    .local v71, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1474
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1475
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1479
    .end local v17           #userId:I
    .end local v71           #type:Ljava/lang/String;
    .end local v97           #uri:Landroid/net/Uri;
    :pswitch_7a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 1481
    .restart local v84       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    .line 1482
    .local v23, perm:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1483
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1484
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1488
    .end local v23           #perm:Landroid/os/IBinder;
    .end local v84           #name:Ljava/lang/String;
    :pswitch_7b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v94

    .line 1490
    .local v94, owner:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v95

    .line 1491
    .local v95, fromUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1492
    .restart local v96       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1493
    .restart local v97       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .restart local v98       #mode:I
    move-object/from16 v93, p0

    .line 1494
    invoke-virtual/range {v93 .. v98}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1500
    .end local v94           #owner:Landroid/os/IBinder;
    .end local v95           #fromUid:I
    .end local v96           #targetPkg:Ljava/lang/String;
    .end local v97           #uri:Landroid/net/Uri;
    .end local v98           #mode:I
    :pswitch_7c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v94

    .line 1502
    .restart local v94       #owner:Landroid/os/IBinder;
    const/16 v97, 0x0

    .line 1503
    .restart local v97       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_53

    .line 1504
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1506
    :cond_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1507
    .restart local v98       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v97

    move/from16 v3, v98

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1513
    .end local v94           #owner:Landroid/os/IBinder;
    .end local v97           #uri:Landroid/net/Uri;
    .end local v98           #mode:I
    :pswitch_7d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 1515
    .restart local v80       #callingUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1516
    .restart local v96       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1517
    .restart local v97       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 1518
    .local v157, modeFlags:I
    move-object/from16 v0, p0

    move/from16 v1, v80

    move-object/from16 v2, v96

    move-object/from16 v3, v97

    move/from16 v4, v157

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I

    move-result v181

    .line 1519
    .local v181, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1521
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1525
    .end local v80           #callingUid:I
    .end local v96           #targetPkg:Ljava/lang/String;
    .end local v97           #uri:Landroid/net/Uri;
    .end local v157           #modeFlags:I
    .end local v181           #res:I
    :pswitch_7e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v87

    .line 1527
    .restart local v87       #process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1528
    .restart local v17       #userId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_54

    const/16 v102, 0x1

    .line 1529
    .local v102, managed:Z
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 1530
    .restart local v90       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_55

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v91

    .restart local v91       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_4d
    move-object/from16 v99, p0

    move-object/from16 v100, v87

    move/from16 v101, v17

    move-object/from16 v103, v90

    move-object/from16 v104, v91

    .line 1532
    invoke-virtual/range {v99 .. v104}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v181

    .line 1533
    .local v181, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1534
    if-eqz v181, :cond_56

    const/4 v5, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1535
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1528
    .end local v90           #path:Ljava/lang/String;
    .end local v91           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v102           #managed:Z
    .end local v181           #res:Z
    :cond_54
    const/16 v102, 0x0

    goto :goto_4c

    .line 1530
    .restart local v90       #path:Ljava/lang/String;
    .restart local v102       #managed:Z
    :cond_55
    const/16 v91, 0x0

    goto :goto_4d

    .line 1534
    .restart local v91       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v181       #res:Z
    :cond_56
    const/4 v5, 0x0

    goto :goto_4e

    .line 1540
    .end local v17           #userId:I
    .end local v87           #process:Ljava/lang/String;
    .end local v90           #path:Ljava/lang/String;
    .end local v91           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v102           #managed:Z
    .end local v181           #res:Z
    :pswitch_7f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1542
    .restart local v120       #b:Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1543
    .local v6, app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1544
    .restart local v7       #callingPackage:Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v106

    check-cast v106, [Landroid/content/Intent;

    .line 1545
    .local v106, intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v107

    .line 1546
    .local v107, resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 1547
    .local v10, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_57

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 1549
    .restart local v16       #options:Landroid/os/Bundle;
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17       #userId:I
    move-object/from16 v103, p0

    move-object/from16 v104, v6

    move-object/from16 v105, v7

    move-object/from16 v108, v10

    move-object/from16 v109, v16

    move/from16 v110, v17

    .line 1550
    invoke-virtual/range {v103 .. v110}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v183

    .line 1552
    .local v183, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    move-object/from16 v0, p3

    move/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1547
    .end local v16           #options:Landroid/os/Bundle;
    .end local v17           #userId:I
    .end local v183           #result:I
    :cond_57
    const/16 v16, 0x0

    goto :goto_4f

    .line 1559
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #callingPackage:Ljava/lang/String;
    .end local v10           #resultTo:Landroid/os/IBinder;
    .end local v106           #intents:[Landroid/content/Intent;
    .end local v107           #resolvedTypes:[Ljava/lang/String;
    .end local v120           #b:Landroid/os/IBinder;
    :pswitch_80
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v98

    .line 1561
    .restart local v98       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1563
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1568
    .end local v98           #mode:I
    :pswitch_81
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1570
    .restart local v98       #mode:I
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1578
    .end local v98           #mode:I
    :pswitch_82
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v169

    .line 1580
    .restart local v169       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v98

    .line 1581
    .restart local v98       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1582
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1583
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1588
    .end local v98           #mode:I
    .end local v169           #pkg:Ljava/lang/String;
    :pswitch_83
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v169

    .line 1590
    .restart local v169       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1591
    .restart local v98       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    move/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1597
    .end local v98           #mode:I
    .end local v169           #pkg:Ljava/lang/String;
    :pswitch_84
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v200

    .line 1599
    .local v200, userid:I
    move-object/from16 v0, p0

    move/from16 v1, v200

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v183

    .line 1600
    .local v183, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    if-eqz v183, :cond_58

    const/4 v5, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1602
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1601
    :cond_58
    const/4 v5, 0x0

    goto :goto_50

    .line 1606
    .end local v183           #result:Z
    .end local v200           #userid:I
    :pswitch_85
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v200

    .line 1608
    .restart local v200       #userid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v124

    .line 1610
    .local v124, callback:Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v200

    move-object/from16 v2, v124

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v183

    .line 1611
    .local v183, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    move-object/from16 v0, p3

    move/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1613
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1617
    .end local v124           #callback:Landroid/app/IStopUserCallback;
    .end local v183           #result:I
    .end local v200           #userid:I
    :pswitch_86
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v199

    .line 1619
    .local v199, userInfo:Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    const/4 v5, 0x0

    move-object/from16 v0, v199

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1621
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1625
    .end local v199           #userInfo:Landroid/content/pm/UserInfo;
    :pswitch_87
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v200

    .line 1627
    .restart local v200       #userid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_59

    const/16 v163, 0x1

    .line 1628
    .local v163, orStopping:Z
    :goto_51
    move-object/from16 v0, p0

    move/from16 v1, v200

    move/from16 v2, v163

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    move-result v183

    .line 1629
    .local v183, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    if-eqz v183, :cond_5a

    const/4 v5, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1631
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1627
    .end local v163           #orStopping:Z
    .end local v183           #result:Z
    :cond_59
    const/16 v163, 0x0

    goto :goto_51

    .line 1630
    .restart local v163       #orStopping:Z
    .restart local v183       #result:Z
    :cond_5a
    const/4 v5, 0x0

    goto :goto_52

    .line 1635
    .end local v163           #orStopping:Z
    .end local v183           #result:Z
    .end local v200           #userid:I
    :pswitch_88
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1636
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v183

    .line 1637
    .local v183, result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1638
    move-object/from16 v0, p3

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1639
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1644
    .end local v183           #result:[I
    :pswitch_89
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v195

    .line 1646
    .local v195, taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v190

    .line 1647
    .local v190, subTaskIndex:I
    move-object/from16 v0, p0

    move/from16 v1, v195

    move/from16 v2, v190

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeSubTask(II)Z

    move-result v183

    .line 1648
    .local v183, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    if-eqz v183, :cond_5b

    const/4 v5, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1650
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1649
    :cond_5b
    const/4 v5, 0x0

    goto :goto_53

    .line 1655
    .end local v183           #result:Z
    .end local v190           #subTaskIndex:I
    .end local v195           #taskId:I
    :pswitch_8a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v195

    .line 1657
    .restart local v195       #taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 1658
    .restart local v62       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v195

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v183

    .line 1659
    .restart local v183       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1660
    if-eqz v183, :cond_5c

    const/4 v5, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1661
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1660
    :cond_5c
    const/4 v5, 0x0

    goto :goto_54

    .line 1665
    .end local v62           #fl:I
    .end local v183           #result:Z
    .end local v195           #taskId:I
    :pswitch_8b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v161

    .line 1668
    .local v161, observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1669
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1673
    .end local v161           #observer:Landroid/app/IProcessObserver;
    :pswitch_8c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v161

    .line 1676
    .restart local v161       #observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1677
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1682
    .end local v161           #observer:Landroid/app/IProcessObserver;
    :pswitch_8d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v169

    .line 1684
    .restart local v169       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v119

    .line 1685
    .local v119, ask:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1686
    if-eqz v119, :cond_5d

    const/4 v5, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1687
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1686
    :cond_5d
    const/4 v5, 0x0

    goto :goto_55

    .line 1692
    .end local v119           #ask:Z
    .end local v169           #pkg:Ljava/lang/String;
    :pswitch_8e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v169

    .line 1694
    .restart local v169       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5e

    const/16 v119, 0x1

    .line 1695
    .restart local v119       #ask:Z
    :goto_56
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    move/from16 v2, v119

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1697
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1694
    .end local v119           #ask:Z
    :cond_5e
    const/16 v119, 0x0

    goto :goto_56

    .line 1701
    .end local v169           #pkg:Ljava/lang/String;
    :pswitch_8f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v174

    .line 1704
    .restart local v174       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v181

    .line 1705
    .restart local v181       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1706
    if-eqz v181, :cond_5f

    const/4 v5, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1707
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1706
    :cond_5f
    const/4 v5, 0x0

    goto :goto_57

    .line 1711
    .end local v174           #r:Landroid/content/IIntentSender;
    .end local v181           #res:Z
    :pswitch_90
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v174

    .line 1714
    .restart local v174       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v181

    .line 1715
    .restart local v181       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1716
    if-eqz v181, :cond_60

    const/4 v5, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1717
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1716
    :cond_60
    const/4 v5, 0x0

    goto :goto_58

    .line 1721
    .end local v174           #r:Landroid/content/IIntentSender;
    .end local v181           #res:Z
    :pswitch_91
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v174

    .line 1724
    .restart local v174       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v8

    .line 1725
    .restart local v8       #intent:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1726
    if-eqz v8, :cond_61

    .line 1727
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1728
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1732
    :goto_59
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1730
    :cond_61
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_59

    .line 1736
    .end local v8           #intent:Landroid/content/Intent;
    .end local v174           #r:Landroid/content/IIntentSender;
    :pswitch_92
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1737
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 1738
    .local v27, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1740
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1744
    .end local v27           #config:Landroid/content/res/Configuration;
    :pswitch_93
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v168

    .line 1746
    .restart local v168       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v168

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v173

    .line 1747
    .local v173, pss:[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    move-object/from16 v0, p3

    move-object/from16 v1, v173

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1749
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1753
    .end local v168           #pids:[I
    .end local v173           #pss:[J
    :pswitch_94
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v159

    check-cast v159, Ljava/lang/CharSequence;

    .line 1755
    .local v159, msg:Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_62

    const/16 v116, 0x1

    .line 1756
    .local v116, always:Z
    :goto_5a
    move-object/from16 v0, p0

    move-object/from16 v1, v159

    move/from16 v2, v116

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 1757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1755
    .end local v116           #always:Z
    :cond_62
    const/16 v116, 0x0

    goto :goto_5a

    .line 1762
    .end local v159           #msg:Ljava/lang/CharSequence;
    :pswitch_95
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1763
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->dismissKeyguardOnNextActivity()V

    .line 1764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1765
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1769
    :pswitch_96
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1771
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v132

    .line 1772
    .local v132, destAffinity:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v132

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->targetTaskAffinityMatchesActivity(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v181

    .line 1773
    .restart local v181       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    if-eqz v181, :cond_63

    const/4 v5, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1775
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1774
    :cond_63
    const/4 v5, 0x0

    goto :goto_5b

    .line 1779
    .end local v52           #token:Landroid/os/IBinder;
    .end local v132           #destAffinity:Ljava/lang/String;
    .end local v181           #res:Z
    :pswitch_97
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1781
    .restart local v52       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v193

    check-cast v193, Landroid/content/Intent;

    .line 1782
    .local v193, target:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1783
    .restart local v43       #resultCode:I
    const/16 v44, 0x0

    .line 1784
    .local v44, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_64

    .line 1785
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    .end local v44           #resultData:Landroid/content/Intent;
    check-cast v44, Landroid/content/Intent;

    .line 1787
    .restart local v44       #resultData:Landroid/content/Intent;
    :cond_64
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v193

    move/from16 v3, v43

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v181

    .line 1788
    .restart local v181       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    if-eqz v181, :cond_65

    const/4 v5, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1790
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1789
    :cond_65
    const/4 v5, 0x0

    goto :goto_5c

    .line 1794
    .end local v43           #resultCode:I
    .end local v44           #resultData:Landroid/content/Intent;
    .end local v52           #token:Landroid/os/IBinder;
    .end local v181           #res:Z
    .end local v193           #target:Landroid/content/Intent;
    :pswitch_98
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1796
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v181

    .line 1797
    .local v181, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    move-object/from16 v0, p3

    move/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1803
    .end local v52           #token:Landroid/os/IBinder;
    .end local v181           #res:I
    :pswitch_99
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1805
    .restart local v52       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v181

    .line 1806
    .local v181, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1807
    move-object/from16 v0, p3

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1808
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1812
    .end local v52           #token:Landroid/os/IBinder;
    .end local v181           #res:Ljava/lang/String;
    :pswitch_9a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v161

    .line 1815
    .local v161, observer:Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1816
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1817
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1821
    .end local v161           #observer:Landroid/app/IUserSwitchObserver;
    :pswitch_9b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v161

    .line 1824
    .restart local v161       #observer:Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1825
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1830
    .end local v161           #observer:Landroid/app/IUserSwitchObserver;
    :pswitch_9c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1831
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    .line 1832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1833
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1837
    :pswitch_9d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v167

    .line 1839
    .restart local v167       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_66

    const/16 v112, 0x1

    .line 1840
    .local v112, aboveSystem:Z
    :goto_5d
    move-object/from16 v0, p0

    move/from16 v1, v167

    move/from16 v2, v112

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZ)J

    move-result-wide v181

    .line 1841
    .local v181, res:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1842
    move-object/from16 v0, p3

    move-wide/from16 v1, v181

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1843
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1839
    .end local v112           #aboveSystem:Z
    .end local v181           #res:J
    :cond_66
    const/16 v112, 0x0

    goto :goto_5d

    .line 1847
    .end local v167           #pid:I
    :pswitch_9e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v179

    .line 1849
    .local v179, requestType:I
    move-object/from16 v0, p0

    move/from16 v1, v179

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTopActivityExtras(I)Landroid/os/Bundle;

    move-result-object v181

    .line 1850
    .local v181, res:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1851
    move-object/from16 v0, p3

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1852
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1856
    .end local v179           #requestType:I
    .end local v181           #res:Landroid/os/Bundle;
    :pswitch_9f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1858
    .restart local v52       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v137

    .line 1859
    .local v137, extras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->reportTopActivityExtras(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1861
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1865
    .end local v52           #token:Landroid/os/IBinder;
    .end local v137           #extras:Landroid/os/Bundle;
    :pswitch_a0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v197

    .line 1867
    .restart local v197       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v175

    .line 1868
    .restart local v175       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v197

    move-object/from16 v2, v175

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killUid(ILjava/lang/String;)V

    .line 1869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1870
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1874
    .end local v175           #reason:Ljava/lang/String;
    .end local v197           #uid:I
    :pswitch_a1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v42

    .line 1876
    .restart local v42       #who:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_67

    const/16 v115, 0x1

    .line 1877
    .local v115, allowRestart:Z
    :goto_5e
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v115

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 1878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1876
    .end local v115           #allowRestart:Z
    :cond_67
    const/16 v115, 0x0

    goto :goto_5e

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_5c
        :pswitch_1
        :pswitch_4f
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_21
        :pswitch_22
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_29
        :pswitch_2a
        :pswitch_8
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_12
        :pswitch_51
        :pswitch_52
        :pswitch_54
        :pswitch_55
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_31
        :pswitch_3e
        :pswitch_3f
        :pswitch_45
        :pswitch_46
        :pswitch_48
        :pswitch_49
        :pswitch_4b
        :pswitch_4c
        :pswitch_56
        :pswitch_4d
        :pswitch_5f
        :pswitch_1a
        :pswitch_37
        :pswitch_16
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_57
        :pswitch_6
        :pswitch_58
        :pswitch_2c
        :pswitch_3c
        :pswitch_3d
        :pswitch_36
        :pswitch_47
        :pswitch_32
        :pswitch_23
        :pswitch_4e
        :pswitch_1e
        :pswitch_4a
        :pswitch_62
        :pswitch_59
        :pswitch_1d
        :pswitch_1b
        :pswitch_1f
        :pswitch_64
        :pswitch_69
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_43
        :pswitch_44
        :pswitch_1c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_5
        :pswitch_71
        :pswitch_5d
        :pswitch_60
        :pswitch_72
        :pswitch_3
        :pswitch_a
        :pswitch_4
        :pswitch_20
        :pswitch_74
        :pswitch_5e
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_87
        :pswitch_15
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_8d
        :pswitch_8e
        :pswitch_84
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8f
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_61
        :pswitch_28
        :pswitch_2d
        :pswitch_63
        :pswitch_5a
        :pswitch_86
        :pswitch_96
        :pswitch_97
        :pswitch_53
        :pswitch_9
        :pswitch_98
        :pswitch_2b
        :pswitch_90
        :pswitch_2
        :pswitch_85
        :pswitch_9a
        :pswitch_9b
        :pswitch_88
        :pswitch_9c
        :pswitch_9d
        :pswitch_0
        :pswitch_91
        :pswitch_9e
        :pswitch_9f
        :pswitch_99
        :pswitch_a0
        :pswitch_73
        :pswitch_a1
    .end packed-switch
.end method
