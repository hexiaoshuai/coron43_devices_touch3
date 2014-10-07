.class final Lcom/android/server/firewall/SenderFilter$2;
.super Ljava/lang/Object;
.source "SenderFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "ifw"
    .parameter "intent"
    .parameter "callerApp"
    .parameter "callerUid"
    .parameter "callerPid"
    .parameter "resolvedType"
    .parameter "resolvedApp"

    .prologue
    .line 72
    if-nez p3, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget v0, p7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p4, v0}, Lcom/android/server/firewall/IntentFirewall;->signaturesMatch(II)Z

    move-result v0

    goto :goto_0
.end method
