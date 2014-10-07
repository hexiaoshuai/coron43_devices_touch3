.class Landroid/app/AppOpsManager$1;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/AppOpsManager;

.field final synthetic val$callback:Landroid/app/AppOpsManager$Callback;


# direct methods
.method constructor <init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$Callback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Landroid/app/AppOpsManager$1;->this$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Landroid/app/AppOpsManager$1;->val$callback:Landroid/app/AppOpsManager$Callback;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "op"
    .parameter "packageName"

    .prologue
    .line 521
    iget-object v0, p0, Landroid/app/AppOpsManager$1;->val$callback:Landroid/app/AppOpsManager$Callback;

    invoke-interface {v0, p1, p2}, Landroid/app/AppOpsManager$Callback;->opChanged(ILjava/lang/String;)V

    .line 522
    return-void
.end method
