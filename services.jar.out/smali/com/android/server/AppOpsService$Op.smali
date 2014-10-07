.class public final Lcom/android/server/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Op"
.end annotation


# instance fields
.field public final defaultMode:I

.field public dialogResult:Lcom/android/server/PermissionDialogResult;

.field public duration:I

.field public mode:I

.field public nesting:I

.field public final op:I

.field public rejectTime:J

.field public tempNesting:I

.field public time:J


# direct methods
.method public constructor <init>(IZ)V
    .locals 1
    .parameter "_op"
    .parameter "strict"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lcom/android/server/AppOpsService$Op;->op:I

    .line 130
    if-nez p2, :cond_0

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 135
    :goto_0
    new-instance v0, Lcom/android/server/PermissionDialogResult;

    invoke-direct {v0}, Lcom/android/server/PermissionDialogResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->dialogResult:Lcom/android/server/PermissionDialogResult;

    .line 136
    iget v0, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->defaultMode:I

    .line 137
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    goto :goto_0
.end method
