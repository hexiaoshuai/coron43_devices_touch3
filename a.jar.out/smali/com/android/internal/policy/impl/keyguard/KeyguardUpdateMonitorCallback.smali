.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onAirplaneModeChanged(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 159
    return-void
.end method

.method onBootCompleted()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method onKeyguardVisibilityChanged(Z)V
    .locals 0
    .parameter "showing"

    .prologue
    .line 72
    return-void
.end method

.method onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V
    .locals 0
    .parameter "clientGeneration"
    .parameter "clearing"
    .parameter "intent"

    .prologue
    .line 128
    return-void
.end method

.method public onMusicPlaybackStateChanged(IJ)V
    .locals 0
    .parameter "playbackState"
    .parameter "eventTime"

    .prologue
    .line 135
    return-void
.end method

.method onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 66
    return-void
.end method

.method onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 37
    return-void
.end method

.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 51
    return-void
.end method

.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 152
    return-void
.end method

.method onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 58
    return-void
.end method

.method onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 105
    return-void
.end method

.method onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 142
    return-void
.end method

.method onTimeChanged()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method onUserInfoChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 115
    return-void
.end method

.method onUserRemoved(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 110
    return-void
.end method

.method onUserSwitchComplete(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 99
    return-void
.end method

.method onUserSwitching(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 94
    return-void
.end method
