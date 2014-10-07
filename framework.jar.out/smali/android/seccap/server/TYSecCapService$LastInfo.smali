.class final Landroid/seccap/server/TYSecCapService$LastInfo;
.super Ljava/lang/Object;
.source "TYSecCapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/seccap/server/TYSecCapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LastInfo"
.end annotation


# instance fields
.field public mPmsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public packagename:Ljava/lang/String;

.field final synthetic this$0:Landroid/seccap/server/TYSecCapService;


# direct methods
.method public constructor <init>(Landroid/seccap/server/TYSecCapService;)V
    .locals 0
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Landroid/seccap/server/TYSecCapService$LastInfo;->this$0:Landroid/seccap/server/TYSecCapService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastInfo : [mPmsMap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/seccap/server/TYSecCapService$LastInfo;->mPmsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",packagename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/seccap/server/TYSecCapService$LastInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method
