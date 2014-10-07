.class public abstract Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardActivityLauncher;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
.source "BaiduKeyguardActivityLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardActivityLauncher;->getCallbackForBaidu()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCallbackForBaidu()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardActivityLauncher;->getContextForBaidu()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContextForBaidu()Landroid/content/Context;
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardActivityLauncher;->getLockPatternUtilsForBaidu()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLockPatternUtilsForBaidu()Lcom/android/internal/widget/LockPatternUtils;
.end method
