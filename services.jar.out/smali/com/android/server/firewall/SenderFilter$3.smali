.class final Lcom/android/server/firewall/SenderFilter$3;
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
    .line 79
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
    .line 83
    if-nez p3, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    invoke-static {p3, p4, p5}, Lcom/android/server/firewall/SenderFilter;->isSystemApp(Landroid/content/pm/ApplicationInfo;II)Z

    move-result v0

    goto :goto_0
.end method
