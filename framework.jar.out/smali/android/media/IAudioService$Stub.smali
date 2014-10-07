.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x28

.field static final TRANSACTION_adjustLocalOrRemoteStreamVolume:I = 0x2

.field static final TRANSACTION_adjustMasterVolume:I = 0x5

.field static final TRANSACTION_adjustStreamVolume:I = 0x4

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x3

.field static final TRANSACTION_adjustVolume:I = 0x1

.field static final TRANSACTION_dispatchMediaKeyEvent:I = 0x2a

.field static final TRANSACTION_dispatchMediaKeyEventUnderWakelock:I = 0x2b

.field static final TRANSACTION_forceVolumeControlStream:I = 0x3e

.field static final TRANSACTION_getLastAudibleMasterVolume:I = 0x13

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0x12

.field static final TRANSACTION_getMasterMaxVolume:I = 0x11

.field static final TRANSACTION_getMasterStreamType:I = 0x41

.field static final TRANSACTION_getMasterVolume:I = 0xf

.field static final TRANSACTION_getMode:I = 0x1a

.field static final TRANSACTION_getRemoteStreamMaxVolume:I = 0x39

.field static final TRANSACTION_getRemoteStreamVolume:I = 0x3a

.field static final TRANSACTION_getRingerMode:I = 0x15

.field static final TRANSACTION_getRingtonePlayer:I = 0x40

.field static final TRANSACTION_getStreamMaxVolume:I = 0x10

.field static final TRANSACTION_getStreamVolume:I = 0xe

.field static final TRANSACTION_getVibrateSetting:I = 0x17

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x25

.field static final TRANSACTION_isBluetoothScoOn:I = 0x23

.field static final TRANSACTION_isCameraSoundForced:I = 0x45

.field static final TRANSACTION_isMasterMute:I = 0xd

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x21

.field static final TRANSACTION_isStreamMute:I = 0xb

.field static final TRANSACTION_loadSoundEffects:I = 0x1d

.field static final TRANSACTION_playSoundEffect:I = 0x1b

.field static final TRANSACTION_playSoundEffectVolume:I = 0x1c

.field static final TRANSACTION_registerMediaButtonEventReceiverForCalls:I = 0x2e

.field static final TRANSACTION_registerMediaButtonIntent:I = 0x2c

.field static final TRANSACTION_registerRemoteControlClient:I = 0x35

.field static final TRANSACTION_registerRemoteControlDisplay:I = 0x30

.field static final TRANSACTION_registerRemoteVolumeObserverForRcc:I = 0x3b

.field static final TRANSACTION_reloadAudioSettings:I = 0x1f

.field static final TRANSACTION_remoteControlDisplayUsesBitmapSize:I = 0x32

.field static final TRANSACTION_remoteControlDisplayWantsPlaybackPositionSync:I = 0x33

.field static final TRANSACTION_requestAudioFocus:I = 0x27

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x43

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x24

.field static final TRANSACTION_setBluetoothScoOn:I = 0x22

.field static final TRANSACTION_setMasterMute:I = 0xc

.field static final TRANSACTION_setMasterVolume:I = 0x8

.field static final TRANSACTION_setMode:I = 0x19

.field static final TRANSACTION_setParameters:I = 0x46

.field static final TRANSACTION_setPlaybackInfoForRcc:I = 0x37

.field static final TRANSACTION_setPlaybackStateForRcc:I = 0x38

.field static final TRANSACTION_setRemoteControlClientPlaybackPosition:I = 0x34

.field static final TRANSACTION_setRemoteStreamVolume:I = 0x7

.field static final TRANSACTION_setRemoteSubmixOn:I = 0x26

.field static final TRANSACTION_setRingerMode:I = 0x14

.field static final TRANSACTION_setRingtonePlayer:I = 0x3f

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x20

.field static final TRANSACTION_setStreamMute:I = 0xa

.field static final TRANSACTION_setStreamSolo:I = 0x9

.field static final TRANSACTION_setStreamVolume:I = 0x6

.field static final TRANSACTION_setVibrateSetting:I = 0x16

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x42

.field static final TRANSACTION_shouldVibrate:I = 0x18

.field static final TRANSACTION_startBluetoothSco:I = 0x3c

.field static final TRANSACTION_startWatchingRoutes:I = 0x44

.field static final TRANSACTION_stopBluetoothSco:I = 0x3d

.field static final TRANSACTION_unloadSoundEffects:I = 0x1e

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x29

.field static final TRANSACTION_unregisterMediaButtonEventReceiverForCalls:I = 0x2f

.field static final TRANSACTION_unregisterMediaButtonIntent:I = 0x2d

.field static final TRANSACTION_unregisterRemoteControlClient:I = 0x36

.field static final TRANSACTION_unregisterRemoteControlDisplay:I = 0x31


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/media/IAudioService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 798
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 54
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 55
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->adjustVolume(II)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/4 v3, 0x1

    goto :goto_0

    .line 61
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_2
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 65
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 66
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->adjustLocalOrRemoteStreamVolume(II)V

    .line 67
    const/4 v3, 0x1

    goto :goto_0

    .line 71
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_3
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 75
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 77
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 78
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(III)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    const/4 v3, 0x1

    goto :goto_0

    .line 84
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_4
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 88
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 90
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 91
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(III)V

    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    const/4 v3, 0x1

    goto :goto_0

    .line 97
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_5
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 101
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 102
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->adjustMasterVolume(II)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 108
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_6
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 112
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 114
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 115
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setStreamVolume(III)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 121
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_7
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 124
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setRemoteStreamVolume(I)V

    .line 125
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 129
    .end local v4           #_arg0:I
    :sswitch_8
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 133
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 134
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->setMasterVolume(II)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 140
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_9
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 144
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    .line 146
    .local v5, _arg1:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 147
    .local v6, _arg2:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setStreamSolo(IZLandroid/os/IBinder;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 144
    .end local v5           #_arg1:Z
    .end local v6           #_arg2:Landroid/os/IBinder;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 153
    .end local v4           #_arg0:I
    :sswitch_a
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 157
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 159
    .restart local v5       #_arg1:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 160
    .restart local v6       #_arg2:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 157
    .end local v5           #_arg1:Z
    .end local v6           #_arg2:Landroid/os/IBinder;
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 166
    .end local v4           #_arg0:I
    :sswitch_b
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v18

    .line 170
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v18, :cond_2

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 171
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 176
    .end local v4           #_arg0:I
    .end local v18           #_result:Z
    :sswitch_c
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    .line 180
    .local v4, _arg0:Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 182
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 183
    .restart local v6       #_arg2:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILandroid/os/IBinder;)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 178
    .end local v4           #_arg0:Z
    .end local v5           #_arg1:I
    .end local v6           #_arg2:Landroid/os/IBinder;
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 189
    :sswitch_d
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v18

    .line 191
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v18, :cond_4

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 192
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 197
    .end local v18           #_result:Z
    :sswitch_e
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 200
    .local v4, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v18

    .line 201
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 207
    .end local v4           #_arg0:I
    .end local v18           #_result:I
    :sswitch_f
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMasterVolume()I

    move-result v18

    .line 209
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 215
    .end local v18           #_result:I
    :sswitch_10
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 218
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v18

    .line 219
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 225
    .end local v4           #_arg0:I
    .end local v18           #_result:I
    :sswitch_11
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMasterMaxVolume()I

    move-result v18

    .line 227
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 233
    .end local v18           #_result:I
    :sswitch_12
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 236
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v18

    .line 237
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 243
    .end local v4           #_arg0:I
    .end local v18           #_result:I
    :sswitch_13
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getLastAudibleMasterVolume()I

    move-result v18

    .line 245
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 251
    .end local v18           #_result:I
    :sswitch_14
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 254
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setRingerMode(I)V

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 260
    .end local v4           #_arg0:I
    :sswitch_15
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerMode()I

    move-result v18

    .line 262
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 268
    .end local v18           #_result:I
    :sswitch_16
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 272
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 273
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 279
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_17
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 282
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v18

    .line 283
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 289
    .end local v4           #_arg0:I
    .end local v18           #_result:I
    :sswitch_18
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 292
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v18

    .line 293
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v18, :cond_5

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 294
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 299
    .end local v4           #_arg0:I
    .end local v18           #_result:Z
    :sswitch_19
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 303
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 304
    .local v5, _arg1:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;)V

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 310
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Landroid/os/IBinder;
    :sswitch_1a
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v18

    .line 312
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 318
    .end local v18           #_result:I
    :sswitch_1b
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 321
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    .line 322
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 326
    .end local v4           #_arg0:I
    :sswitch_1c
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 330
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 331
    .local v5, _arg1:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 332
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 336
    .end local v4           #_arg0:I
    .end local v5           #_arg1:F
    :sswitch_1d
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v18

    .line 338
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    if-eqz v18, :cond_6

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 339
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 344
    .end local v18           #_result:Z
    :sswitch_1e
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 346
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 350
    :sswitch_1f
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 352
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 356
    :sswitch_20
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v4, 0x1

    .line 359
    .local v4, _arg0:Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 358
    .end local v4           #_arg0:Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 365
    :sswitch_21
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v18

    .line 367
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    if-eqz v18, :cond_8

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 368
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 373
    .end local v18           #_result:Z
    :sswitch_22
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    .line 376
    .restart local v4       #_arg0:Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 375
    .end local v4           #_arg0:Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 382
    :sswitch_23
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v18

    .line 384
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz v18, :cond_a

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 385
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 390
    .end local v18           #_result:Z
    :sswitch_24
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    const/4 v4, 0x1

    .line 393
    .restart local v4       #_arg0:Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 392
    .end local v4           #_arg0:Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 399
    :sswitch_25
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v18

    .line 401
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    if-eqz v18, :cond_c

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 402
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 407
    .end local v18           #_result:Z
    :sswitch_26
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    .line 411
    .restart local v4       #_arg0:Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 412
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->setRemoteSubmixOn(ZI)V

    .line 413
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 409
    .end local v4           #_arg0:Z
    .end local v5           #_arg1:I
    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    .line 417
    :sswitch_27
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 421
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 423
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 425
    .restart local v6       #_arg2:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v7

    .line 427
    .local v7, _arg3:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 429
    .local v8, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg5:Ljava/lang/String;
    move-object/from16 v3, p0

    .line 430
    invoke-virtual/range {v3 .. v9}, Landroid/media/IAudioService$Stub;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 431
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 437
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:Landroid/os/IBinder;
    .end local v7           #_arg3:Landroid/media/IAudioFocusDispatcher;
    .end local v8           #_arg4:Ljava/lang/String;
    .end local v9           #_arg5:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_28
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v4

    .line 441
    .local v4, _arg0:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v18

    .line 443
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 449
    .end local v4           #_arg0:Landroid/media/IAudioFocusDispatcher;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_29
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 458
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_2a
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 461
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    .line 466
    .local v4, _arg0:Landroid/view/KeyEvent;
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 467
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 464
    .end local v4           #_arg0:Landroid/view/KeyEvent;
    :cond_e
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/view/KeyEvent;
    goto :goto_f

    .line 471
    .end local v4           #_arg0:Landroid/view/KeyEvent;
    :sswitch_2b
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 474
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    .line 479
    .restart local v4       #_arg0:Landroid/view/KeyEvent;
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 477
    .end local v4           #_arg0:Landroid/view/KeyEvent;
    :cond_f
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/view/KeyEvent;
    goto :goto_10

    .line 485
    .end local v4           #_arg0:Landroid/view/KeyEvent;
    :sswitch_2c
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 488
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 494
    .local v4, _arg0:Landroid/app/PendingIntent;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 495
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 501
    .local v5, _arg1:Landroid/content/ComponentName;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 502
    .restart local v6       #_arg2:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 491
    .end local v4           #_arg0:Landroid/app/PendingIntent;
    .end local v5           #_arg1:Landroid/content/ComponentName;
    .end local v6           #_arg2:Landroid/os/IBinder;
    :cond_10
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/app/PendingIntent;
    goto :goto_11

    .line 498
    :cond_11
    const/4 v5, 0x0

    .restart local v5       #_arg1:Landroid/content/ComponentName;
    goto :goto_12

    .line 508
    .end local v4           #_arg0:Landroid/app/PendingIntent;
    .end local v5           #_arg1:Landroid/content/ComponentName;
    :sswitch_2d
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 511
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 516
    .restart local v4       #_arg0:Landroid/app/PendingIntent;
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 517
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 514
    .end local v4           #_arg0:Landroid/app/PendingIntent;
    :cond_12
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/app/PendingIntent;
    goto :goto_13

    .line 521
    .end local v4           #_arg0:Landroid/app/PendingIntent;
    :sswitch_2e
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 524
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 529
    .local v4, _arg0:Landroid/content/ComponentName;
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 530
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 527
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :cond_13
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/content/ComponentName;
    goto :goto_14

    .line 534
    .end local v4           #_arg0:Landroid/content/ComponentName;
    :sswitch_2f
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unregisterMediaButtonEventReceiverForCalls()V

    .line 536
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 540
    :sswitch_30
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    .line 544
    .local v4, _arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 546
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 547
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 548
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 552
    .end local v4           #_arg0:Landroid/media/IRemoteControlDisplay;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_31
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    .line 555
    .restart local v4       #_arg0:Landroid/media/IRemoteControlDisplay;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 556
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 560
    .end local v4           #_arg0:Landroid/media/IRemoteControlDisplay;
    :sswitch_32
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    .line 564
    .restart local v4       #_arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 566
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 567
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 568
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 572
    .end local v4           #_arg0:Landroid/media/IRemoteControlDisplay;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_33
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    .line 576
    .restart local v4       #_arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    const/4 v5, 0x1

    .line 577
    .local v5, _arg1:Z
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 578
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 576
    .end local v5           #_arg1:Z
    :cond_14
    const/4 v5, 0x0

    goto :goto_15

    .line 582
    .end local v4           #_arg0:Landroid/media/IRemoteControlDisplay;
    :sswitch_34
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 586
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 587
    .local v16, _arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/IAudioService$Stub;->setRemoteControlClientPlaybackPosition(IJ)V

    .line 588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 593
    .end local v4           #_arg0:I
    .end local v16           #_arg1:J
    :sswitch_35
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 596
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 602
    .local v4, _arg0:Landroid/app/PendingIntent;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v5

    .line 604
    .local v5, _arg1:Landroid/media/IRemoteControlClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 605
    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    move-result v18

    .line 606
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 599
    .end local v4           #_arg0:Landroid/app/PendingIntent;
    .end local v5           #_arg1:Landroid/media/IRemoteControlClient;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v18           #_result:I
    :cond_15
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/app/PendingIntent;
    goto :goto_16

    .line 612
    .end local v4           #_arg0:Landroid/app/PendingIntent;
    :sswitch_36
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    .line 615
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 621
    .restart local v4       #_arg0:Landroid/app/PendingIntent;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v5

    .line 622
    .restart local v5       #_arg1:Landroid/media/IRemoteControlClient;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V

    .line 623
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 618
    .end local v4           #_arg0:Landroid/app/PendingIntent;
    .end local v5           #_arg1:Landroid/media/IRemoteControlClient;
    :cond_16
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/app/PendingIntent;
    goto :goto_17

    .line 627
    .end local v4           #_arg0:Landroid/app/PendingIntent;
    :sswitch_37
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 631
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 633
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 634
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setPlaybackInfoForRcc(III)V

    .line 635
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 639
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_38
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 643
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 645
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 647
    .local v13, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .local v7, _arg3:F
    move-object/from16 v10, p0

    move v11, v4

    move v12, v5

    move v15, v7

    .line 648
    invoke-virtual/range {v10 .. v15}, Landroid/media/IAudioService$Stub;->setPlaybackStateForRcc(IIJF)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 654
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v7           #_arg3:F
    .end local v13           #_arg2:J
    :sswitch_39
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRemoteStreamMaxVolume()I

    move-result v18

    .line 656
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 662
    .end local v18           #_result:I
    :sswitch_3a
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRemoteStreamVolume()I

    move-result v18

    .line 664
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 670
    .end local v18           #_result:I
    :sswitch_3b
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 674
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRemoteVolumeObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteVolumeObserver;

    move-result-object v5

    .line 675
    .local v5, _arg1:Landroid/media/IRemoteVolumeObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    .line 676
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 680
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Landroid/media/IRemoteVolumeObserver;
    :sswitch_3c
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 684
    .local v4, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 685
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 691
    .end local v4           #_arg0:Landroid/os/IBinder;
    .end local v5           #_arg1:I
    :sswitch_3d
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 694
    .restart local v4       #_arg0:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 700
    .end local v4           #_arg0:Landroid/os/IBinder;
    :sswitch_3e
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 704
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 705
    .local v5, _arg1:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 711
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Landroid/os/IBinder;
    :sswitch_3f
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v4

    .line 714
    .local v4, _arg0:Landroid/media/IRingtonePlayer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 715
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 720
    .end local v4           #_arg0:Landroid/media/IRingtonePlayer;
    :sswitch_40
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v18

    .line 722
    .local v18, _result:Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    if-eqz v18, :cond_17

    invoke-interface/range {v18 .. v18}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 724
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 723
    :cond_17
    const/4 v3, 0x0

    goto :goto_18

    .line 728
    .end local v18           #_result:Landroid/media/IRingtonePlayer;
    :sswitch_41
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMasterStreamType()I

    move-result v18

    .line 730
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 736
    .end local v18           #_result:I
    :sswitch_42
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 740
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 742
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 743
    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 749
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_43
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    .line 752
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 758
    .local v4, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 759
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v18

    .line 760
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 755
    .end local v4           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #_arg1:I
    .end local v18           #_result:I
    :cond_18
    const/4 v4, 0x0

    .restart local v4       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_19

    .line 766
    .end local v4           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_44
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v4

    .line 769
    .local v4, _arg0:Landroid/media/IAudioRoutesObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v18

    .line 770
    .local v18, _result:Landroid/media/AudioRoutesInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    if-eqz v18, :cond_19

    .line 772
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 778
    :goto_1a
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 776
    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 782
    .end local v4           #_arg0:Landroid/media/IAudioRoutesObserver;
    .end local v18           #_result:Landroid/media/AudioRoutesInfo;
    :sswitch_45
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v18

    .line 784
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    if-eqz v18, :cond_1a

    const/4 v3, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 785
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 790
    .end local v18           #_result:Z
    :sswitch_46
    const-string v3, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 793
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/IAudioService$Stub;->setParameters(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
