.class Lcom/android/server/firewall/SenderFilter;
.super Ljava/lang/Object;
.source "SenderFilter.java"


# static fields
.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory; = null

.field private static final SIGNATURE:Lcom/android/server/firewall/Filter; = null

.field private static final SYSTEM:Lcom/android/server/firewall/Filter; = null

.field private static final SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter; = null

.field private static final USER_ID:Lcom/android/server/firewall/Filter; = null

.field private static final VAL_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final VAL_SYSTEM:Ljava/lang/String; = "system"

.field private static final VAL_SYSTEM_OR_SIGNATURE:Ljava/lang/String; = "system|signature"

.field private static final VAL_USER_ID:Ljava/lang/String; = "userId"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/android/server/firewall/SenderFilter$1;

    const-string v1, "sender"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    .line 68
    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$2;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    .line 79
    new-instance v0, Lcom/android/server/firewall/SenderFilter$3;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$3;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    .line 91
    new-instance v0, Lcom/android/server/firewall/SenderFilter$4;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$4;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    .line 100
    new-instance v0, Lcom/android/server/firewall/SenderFilter$5;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$5;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/firewall/Filter;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/server/firewall/Filter;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/server/firewall/Filter;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/server/firewall/Filter;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static isSystemApp(Landroid/content/pm/ApplicationInfo;II)Z
    .locals 3
    .parameter "callerApp"
    .parameter "callerUid"
    .parameter "callerPid"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    if-nez p0, :cond_2

    move v0, v1

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
