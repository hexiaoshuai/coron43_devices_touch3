.class public abstract Landroid/seccap/ITYSecCapManager$Stub;
.super Landroid/os/Binder;
.source "ITYSecCapManager.java"

# interfaces
.implements Landroid/seccap/ITYSecCapManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/seccap/ITYSecCapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/seccap/ITYSecCapManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.seccap.ITYSecCapManager"

.field static final TRANSACTION_checkPermissionSync:I = 0x1

.field static final TRANSACTION_checkUnknownPermissionSync:I = 0x2

.field static final TRANSACTION_cleanLastInfoMap:I = 0xc

.field static final TRANSACTION_deleteRemountSafeInfo:I = 0x13

.field static final TRANSACTION_getActivityTaskPkgName:I = 0xb

.field static final TRANSACTION_getActstring:I = 0xd

.field static final TRANSACTION_getEnforceGrantRevoke:I = 0x9

.field static final TRANSACTION_getPkgName:I = 0xa

.field static final TRANSACTION_getRemountSafeInfo:I = 0x12

.field static final TRANSACTION_getSecCapBindPhones:I = 0xe

.field static final TRANSACTION_getSecCapInfo:I = 0x3

.field static final TRANSACTION_getSecCapServiceMessenger:I = 0x8

.field static final TRANSACTION_getSecCapSettings:I = 0x6

.field static final TRANSACTION_putRemountSafeInfo:I = 0x11

.field static final TRANSACTION_putSecCapBindPhone:I = 0xf

.field static final TRANSACTION_setAllAppsWay:I = 0x5

.field static final TRANSACTION_setRemoteSafeOpen:I = 0x10

.field static final TRANSACTION_update2SecCapInfo:I = 0x4

.field static final TRANSACTION_updateSecCapSettings:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.seccap.ITYSecCapManager"

    invoke-virtual {p0, p0, v0}, Landroid/seccap/ITYSecCapManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/seccap/ITYSecCapManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.seccap.ITYSecCapManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/seccap/ITYSecCapManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/seccap/ITYSecCapManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/seccap/ITYSecCapManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/seccap/ITYSecCapManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 270
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 47
    :sswitch_0
    const-string v8, "android.seccap.ITYSecCapManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v9, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move v3, v7

    .line 61
    .local v3, _arg3:Z
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/seccap/ITYSecCapManager$Stub;->checkPermissionSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 62
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v4, :cond_0

    move v8, v7

    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v3           #_arg3:Z
    .end local v4           #_result:Z
    :cond_1
    move v3, v8

    .line 60
    goto :goto_1

    .line 68
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_2
    const-string v9, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/seccap/ITYSecCapManager$Stub;->checkUnknownPermissionSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 76
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v4, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_3
    const-string v8, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/seccap/ITYSecCapManager$Stub;->getSecCapInfo()Ljava/util/List;

    move-result-object v5

    .line 84
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/seccap/SecCapInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 90
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/seccap/SecCapInfo;>;"
    :sswitch_4
    const-string v9, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    .line 93
    sget-object v9, Landroid/seccap/SecCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/seccap/SecCapInfo;

    .line 98
    .local v0, _arg0:Landroid/seccap/SecCapInfo;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/seccap/ITYSecCapManager$Stub;->update2SecCapInfo(Landroid/seccap/SecCapInfo;)Z

    move-result v4

    .line 99
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v4, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v0           #_arg0:Landroid/seccap/SecCapInfo;
    .end local v4           #_result:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/seccap/SecCapInfo;
    goto :goto_2

    .line 105
    .end local v0           #_arg0:Landroid/seccap/SecCapInfo;
    :sswitch_5
    const-string v9, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    move v0, v7

    .line 109
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/seccap/ITYSecCapManager$Stub;->setAllAppsWay(ZI)Z

    move-result v4

    .line 111
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v4, :cond_5

    move v8, v7

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v4           #_result:Z
    :cond_6
    move v0, v8

    .line 107
    goto :goto_3

    .line 117
    :sswitch_6
    const-string v9, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/seccap/ITYSecCapManager$Stub;->getSecCapSettings()Landroid/seccap/SecCapSettings;

    move-result-object v4

    .line 119
    .local v4, _result:Landroid/seccap/SecCapSettings;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v4, :cond_7

    .line 121
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v4, p3, v7}, Landroid/seccap/SecCapSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 125
    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v4           #_result:Landroid/seccap/SecCapSettings;
    :sswitch_7
    const-string v9, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    .line 134
    sget-object v9, Landroid/seccap/SecCapSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/seccap/SecCapSettings;

    .line 139
    .local v0, _arg0:Landroid/seccap/SecCapSettings;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/seccap/ITYSecCapManager$Stub;->updateSecCapSettings(Landroid/seccap/SecCapSettings;)Z

    move-result v4

    .line 140
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v4, :cond_8

    move v8, v7

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v0           #_arg0:Landroid/seccap/SecCapSettings;
    .end local v4           #_result:Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/seccap/SecCapSettings;
    goto :goto_4

    .line 146
    .end local v0           #_arg0:Landroid/seccap/SecCapSettings;
    :sswitch_8
    const-string v9, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/seccap/ITYSecCapManager$Stub;->getSecCapServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 148
    .local v4, _result:Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v4, :cond_a

    .line 150
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v4, p3, v7}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 154
    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v4           #_result:Landroid/os/Messenger;
    :sswitch_9
    const-string v9, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/seccap/ITYSecCapManager$Stub;->getEnforceGrantRevoke()Z

    move-result v4

    .line 162
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v4, :cond_b

    move v8, v7

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v4           #_result:Z
    :sswitch_a
    const-string v8, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/seccap/ITYSecCapManager$Stub;->getPkgName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v8, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Landroid/seccap/ITYSecCapManager$Stub;->getActivityTaskPkgName()Ljava/lang/String;

    move-result-object v4

    .line 182
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v8, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/seccap/ITYSecCapManager$Stub;->cleanLastInfoMap(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 197
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_d
    const-string v8, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/seccap/ITYSecCapManager$Stub;->getActstring(I)Ljava/lang/String;

    move-result-object v4

    .line 201
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    .end local v0           #_arg0:I
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v8, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/seccap/ITYSecCapManager$Stub;->getSecCapBindPhones()Ljava/util/List;

    move-result-object v6

    .line 209
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/seccap/SecCapRemoteSafe;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 215
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/seccap/SecCapRemoteSafe;>;"
    :sswitch_f
    const-string v9, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 220
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/seccap/ITYSecCapManager$Stub;->putSecCapBindPhone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 221
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v4, :cond_c

    move v8, v7

    :cond_c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 227
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_10
    const-string v9, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    move v0, v7

    .line 230
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/seccap/ITYSecCapManager$Stub;->setRemoteSafeOpen(Z)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_d
    move v0, v8

    .line 229
    goto :goto_5

    .line 236
    :sswitch_11
    const-string v8, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_e

    .line 239
    sget-object v8, Landroid/seccap/SecCapRemoteSafe;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/seccap/SecCapRemoteSafe;

    .line 244
    .local v0, _arg0:Landroid/seccap/SecCapRemoteSafe;
    :goto_6
    invoke-virtual {p0, v0}, Landroid/seccap/ITYSecCapManager$Stub;->putRemountSafeInfo(Landroid/seccap/SecCapRemoteSafe;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 242
    .end local v0           #_arg0:Landroid/seccap/SecCapRemoteSafe;
    :cond_e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/seccap/SecCapRemoteSafe;
    goto :goto_6

    .line 250
    .end local v0           #_arg0:Landroid/seccap/SecCapRemoteSafe;
    :sswitch_12
    const-string v9, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Landroid/seccap/ITYSecCapManager$Stub;->getRemountSafeInfo()Landroid/seccap/SecCapRemoteSafe;

    move-result-object v4

    .line 252
    .local v4, _result:Landroid/seccap/SecCapRemoteSafe;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v4, :cond_f

    .line 254
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    invoke-virtual {v4, p3, v7}, Landroid/seccap/SecCapRemoteSafe;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 258
    :cond_f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 264
    .end local v4           #_result:Landroid/seccap/SecCapRemoteSafe;
    :sswitch_13
    const-string v8, "android.seccap.ITYSecCapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/seccap/ITYSecCapManager$Stub;->deleteRemountSafeInfo()V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 43
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
