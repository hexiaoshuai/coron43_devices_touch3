.class public Landroid/seccap/TYSupportGroup;
.super Ljava/lang/Object;
.source "TYSupportGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/seccap/TYSupportGroup$Restriction;
    }
.end annotation


# static fields
.field private static final CALLS_MSG_PRIVACY:[Ljava/lang/String; = null

.field private static final CALLS_MSG_PRIVACY_ACT:[I = null

.field private static final DEVICE_SAFETY:[Ljava/lang/String; = null

.field private static final DEVICE_SAFETY_ACT:[I = null

.field private static final FILTEROUT_PACKAGE:[Ljava/lang/String; = null

.field public static final GROUP_CALLS_MSG_PRIVACY:I = 0x1

.field public static final GROUP_DEVICE_SAFETY:I = 0x0

.field public static final GROUP_OTHER:I = 0x3

.field public static final GROUP_PERSONAL_PRIVACY:I = 0x2

.field public static INVALID:I

.field private static final OTHER:[Ljava/lang/String;

.field private static final OTHER_ACT:[I

.field private static final PERSONAL_PRIVACY:[Ljava/lang/String;

.field private static final PERSONAL_PRIVACY_ACT:[I

.field private static final SecCapPermissionTab:[Landroid/seccap/TYSupportGroup$Restriction;

.field private static sInstance:Landroid/seccap/TYSupportGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    const/4 v0, -0x1

    sput v0, Landroid/seccap/TYSupportGroup;->INVALID:I

    .line 41
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android"

    aput-object v1, v0, v3

    const-string v1, "com.android.development"

    aput-object v1, v0, v4

    const-string v1, "com.android.inputmethod.latin"

    aput-object v1, v0, v5

    const-string v1, "com.android.ktcit"

    aput-object v1, v0, v6

    const-string v1, "com.android.systemui"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.location.fused"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.providers.drm"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.simmelock"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.mediatek.MediatekDM"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.mediatek.lbs.em"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.mediatek.connectivity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mediatek.mtklogger"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.mediatek.op01.plugin"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.mediatek.apst.target"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.mediatek.atci.service"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.mediatek.batterywarning"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.mediatek.engineermode"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.mediatek.ygps"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.mediatek.smsreg"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.ktouch.seccap"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "cn.ktouch.tyspss"

    aput-object v2, v0, v1

    sput-object v0, Landroid/seccap/TYSupportGroup;->FILTEROUT_PACKAGE:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    aput-object v1, v0, v4

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    aput-object v1, v0, v5

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v6

    const-string v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "ty.permission.SEND_MMS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ty.permission.SEND_EMAIL"

    aput-object v2, v0, v1

    sput-object v0, Landroid/seccap/TYSupportGroup;->DEVICE_SAFETY:[Ljava/lang/String;

    .line 75
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/seccap/TYSupportGroup;->DEVICE_SAFETY_ACT:[I

    .line 85
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_CONTACTS"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ty.permission.READ_SMS"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ty.permission.READ_MMS"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ty.permission.WRITE_SMS"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "ty.permission.WRITE_MMS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.READ_CALL_LOG"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.WRITE_CALL_LOG"

    aput-object v2, v0, v1

    sput-object v0, Landroid/seccap/TYSupportGroup;->CALLS_MSG_PRIVACY:[Ljava/lang/String;

    .line 95
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/seccap/TYSupportGroup;->CALLS_MSG_PRIVACY_ACT:[I

    .line 106
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v3

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v4

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v5

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v6

    sput-object v0, Landroid/seccap/TYSupportGroup;->PERSONAL_PRIVACY:[Ljava/lang/String;

    .line 112
    new-array v0, v7, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/seccap/TYSupportGroup;->PERSONAL_PRIVACY_ACT:[I

    .line 120
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v1, v0, v3

    sput-object v0, Landroid/seccap/TYSupportGroup;->OTHER:[Ljava/lang/String;

    .line 123
    new-array v0, v4, [I

    aput v3, v0, v3

    sput-object v0, Landroid/seccap/TYSupportGroup;->OTHER_ACT:[I

    .line 137
    new-array v0, v7, [Landroid/seccap/TYSupportGroup$Restriction;

    new-instance v1, Landroid/seccap/TYSupportGroup$Restriction;

    const v2, 0x10405a9

    invoke-direct {v1, v3, v2}, Landroid/seccap/TYSupportGroup$Restriction;-><init>(II)V

    sget-object v2, Landroid/seccap/TYSupportGroup;->DEVICE_SAFETY:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/seccap/TYSupportGroup$Restriction;->setValues([Ljava/lang/String;)Landroid/seccap/TYSupportGroup$Restriction;

    move-result-object v1

    sget-object v2, Landroid/seccap/TYSupportGroup;->DEVICE_SAFETY_ACT:[I

    invoke-virtual {v1, v2}, Landroid/seccap/TYSupportGroup$Restriction;->setActString([I)Landroid/seccap/TYSupportGroup$Restriction;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Landroid/seccap/TYSupportGroup$Restriction;

    const v2, 0x10405aa

    invoke-direct {v1, v4, v2}, Landroid/seccap/TYSupportGroup$Restriction;-><init>(II)V

    sget-object v2, Landroid/seccap/TYSupportGroup;->CALLS_MSG_PRIVACY:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/seccap/TYSupportGroup$Restriction;->setValues([Ljava/lang/String;)Landroid/seccap/TYSupportGroup$Restriction;

    move-result-object v1

    sget-object v2, Landroid/seccap/TYSupportGroup;->CALLS_MSG_PRIVACY_ACT:[I

    invoke-virtual {v1, v2}, Landroid/seccap/TYSupportGroup$Restriction;->setActString([I)Landroid/seccap/TYSupportGroup$Restriction;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Landroid/seccap/TYSupportGroup$Restriction;

    const v2, 0x10405ab

    invoke-direct {v1, v5, v2}, Landroid/seccap/TYSupportGroup$Restriction;-><init>(II)V

    sget-object v2, Landroid/seccap/TYSupportGroup;->PERSONAL_PRIVACY:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/seccap/TYSupportGroup$Restriction;->setValues([Ljava/lang/String;)Landroid/seccap/TYSupportGroup$Restriction;

    move-result-object v1

    sget-object v2, Landroid/seccap/TYSupportGroup;->PERSONAL_PRIVACY_ACT:[I

    invoke-virtual {v1, v2}, Landroid/seccap/TYSupportGroup$Restriction;->setActString([I)Landroid/seccap/TYSupportGroup$Restriction;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Landroid/seccap/TYSupportGroup$Restriction;

    const v2, 0x10405ac

    invoke-direct {v1, v6, v2}, Landroid/seccap/TYSupportGroup$Restriction;-><init>(II)V

    sget-object v2, Landroid/seccap/TYSupportGroup;->OTHER:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/seccap/TYSupportGroup$Restriction;->setValues([Ljava/lang/String;)Landroid/seccap/TYSupportGroup$Restriction;

    move-result-object v1

    sget-object v2, Landroid/seccap/TYSupportGroup;->OTHER_ACT:[I

    invoke-virtual {v1, v2}, Landroid/seccap/TYSupportGroup$Restriction;->setActString([I)Landroid/seccap/TYSupportGroup$Restriction;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Landroid/seccap/TYSupportGroup;->SecCapPermissionTab:[Landroid/seccap/TYSupportGroup$Restriction;

    return-void

    .line 75
    :array_0
    .array-data 0x4
        0xb7t 0x5t 0x4t 0x1t
        0xb8t 0x5t 0x4t 0x1t
        0xb9t 0x5t 0x4t 0x1t
        0xc7t 0x5t 0x4t 0x1t
        0xc6t 0x5t 0x4t 0x1t
        0xc8t 0x5t 0x4t 0x1t
        0xc9t 0x5t 0x4t 0x1t
    .end array-data

    .line 95
    :array_1
    .array-data 0x4
        0xbat 0x5t 0x4t 0x1t
        0xbbt 0x5t 0x4t 0x1t
        0xbct 0x5t 0x4t 0x1t
        0xbet 0x5t 0x4t 0x1t
        0xbdt 0x5t 0x4t 0x1t
        0xbft 0x5t 0x4t 0x1t
        0xc0t 0x5t 0x4t 0x1t
        0xc1t 0x5t 0x4t 0x1t
    .end array-data

    .line 112
    :array_2
    .array-data 0x4
        0xc2t 0x5t 0x4t 0x1t
        0xc2t 0x5t 0x4t 0x1t
        0xc3t 0x5t 0x4t 0x1t
        0xc5t 0x5t 0x4t 0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static getTYSupportGroup()Landroid/seccap/TYSupportGroup;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Landroid/seccap/TYSupportGroup;->sInstance:Landroid/seccap/TYSupportGroup;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/seccap/TYSupportGroup;

    invoke-direct {v0}, Landroid/seccap/TYSupportGroup;-><init>()V

    sput-object v0, Landroid/seccap/TYSupportGroup;->sInstance:Landroid/seccap/TYSupportGroup;

    .line 134
    :cond_0
    sget-object v0, Landroid/seccap/TYSupportGroup;->sInstance:Landroid/seccap/TYSupportGroup;

    return-object v0
.end method


# virtual methods
.method public CheckSupportPackage(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    const/4 v0, 0x1

    .line 246
    .local v0, bSupport:Z
    const-string/jumbo v5, "ro.ty_cta.support"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "android.permission.SEND_SMS"

    invoke-virtual {p0, p1, v4}, Landroid/seccap/TYSupportGroup;->isSmsReg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    const/4 v0, 0x1

    goto :goto_0

    .line 250
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    sget-object v4, Landroid/seccap/TYSupportGroup;->FILTEROUT_PACKAGE:[Ljava/lang/String;

    array-length v2, v4

    .local v2, len:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 251
    sget-object v4, Landroid/seccap/TYSupportGroup;->FILTEROUT_PACKAGE:[Ljava/lang/String;

    aget-object v3, v4, v1

    .line 252
    .local v3, sp:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 250
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 255
    :cond_4
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 256
    const/4 v0, 0x0

    .line 257
    goto :goto_0
.end method

.method public CheckSupportValues(Ljava/lang/String;)I
    .locals 6
    .parameter "permission"

    .prologue
    .line 279
    sget v2, Landroid/seccap/TYSupportGroup;->INVALID:I

    .line 280
    .local v2, index:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v3, keyvalues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    sget-object v5, Landroid/seccap/TYSupportGroup;->SecCapPermissionTab:[Landroid/seccap/TYSupportGroup$Restriction;

    array-length v4, v5

    .local v4, len:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 282
    sget-object v5, Landroid/seccap/TYSupportGroup;->SecCapPermissionTab:[Landroid/seccap/TYSupportGroup$Restriction;

    aget-object v0, v5, v1

    .line 283
    .local v0, curRestriction:Landroid/seccap/TYSupportGroup$Restriction;
    if-nez v0, :cond_1

    .line 281
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v0, p1}, Landroid/seccap/TYSupportGroup$Restriction;->findSupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/seccap/TYSupportGroup$Restriction;->getIndex()I

    move-result v2

    .line 291
    .end local v0           #curRestriction:Landroid/seccap/TYSupportGroup$Restriction;
    :cond_2
    return v2
.end method

.method public getActionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "permission"

    .prologue
    const/4 v6, 0x0

    .line 155
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-object v6

    .line 159
    :cond_1
    const/4 v5, 0x0

    .line 160
    .local v5, permissionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 161
    .local v0, actString:[I
    const/4 v3, -0x1

    .line 162
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    sget-object v7, Landroid/seccap/TYSupportGroup;->SecCapPermissionTab:[Landroid/seccap/TYSupportGroup$Restriction;

    array-length v4, v7

    .local v4, len:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 163
    sget-object v7, Landroid/seccap/TYSupportGroup;->SecCapPermissionTab:[Landroid/seccap/TYSupportGroup$Restriction;

    aget-object v1, v7, v2

    .line 164
    .local v1, curRestriction:Landroid/seccap/TYSupportGroup$Restriction;
    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {v1}, Landroid/seccap/TYSupportGroup$Restriction;->getValues()Ljava/util/List;

    move-result-object v5

    .line 166
    invoke-virtual {v1}, Landroid/seccap/TYSupportGroup$Restriction;->getActString()[I

    move-result-object v0

    .line 167
    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 168
    invoke-interface {v5, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 169
    if-ltz v3, :cond_2

    aget v7, v0, v3

    if-eqz v7, :cond_2

    .line 170
    aget v6, v0, v3

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 162
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getAdditionSmsReg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "pkgName"
    .parameter "ukpms"

    .prologue
    .line 234
    const-string v0, ""

    .line 235
    .local v0, addi:Ljava/lang/String;
    invoke-virtual {p0, p2, p3}, Landroid/seccap/TYSupportGroup;->isSmsReg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const v1, 0x10405ca

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_0
    return-object v0
.end method

.method public getDefaultWay(ZLjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "isSystem"
    .parameter "packagename"
    .parameter "permission"

    .prologue
    .line 215
    const/4 v0, 0x2

    .line 216
    .local v0, defaultWay:I
    invoke-virtual {p0, p2, p3}, Landroid/seccap/TYSupportGroup;->isSmsReg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    const/4 v0, 0x2

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    const-string v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    :cond_2
    if-eqz p1, :cond_3

    .line 221
    const/4 v0, 0x0

    goto :goto_0

    .line 223
    :cond_3
    invoke-static {}, Landroid/seccap/TYSecCapManager;->getSecCapSupportValue()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, way:Ljava/lang/String;
    const-string v2, "3rd_permit"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :cond_4
    const-string v2, "3rd_reject"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPermissionGroupName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "groupIndex"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    sget-object v1, Landroid/seccap/TYSupportGroup;->SecCapPermissionTab:[Landroid/seccap/TYSupportGroup$Restriction;

    array-length v1, v1

    if-lt p2, v1, :cond_1

    .line 148
    :cond_0
    const/4 v1, 0x0

    .line 151
    :goto_0
    return-object v1

    .line 150
    :cond_1
    sget-object v1, Landroid/seccap/TYSupportGroup;->SecCapPermissionTab:[Landroid/seccap/TYSupportGroup$Restriction;

    aget-object v0, v1, p2

    .line 151
    .local v0, curRestriction:Landroid/seccap/TYSupportGroup$Restriction;
    invoke-virtual {v0}, Landroid/seccap/TYSupportGroup$Restriction;->getResid()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTyUkpms(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "permission"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "android.permission.READ_SMS"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    const-string/jumbo v1, "ty.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const-string/jumbo v1, "ty.permission.READ_MMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    const-string v1, "android.permission.WRITE_SMS"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const-string/jumbo v1, "ty.permission.WRITE_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    const-string/jumbo v1, "ty.permission.WRITE_MMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getUkpmsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "ukpms"

    .prologue
    .line 180
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    :cond_0
    const/4 v0, 0x0

    .line 198
    :cond_1
    :goto_0
    return-object v0

    .line 184
    :cond_2
    const-string v0, ""

    .line 185
    .local v0, name:Ljava/lang/String;
    const-string/jumbo v1, "ty.permission.SEND_MMS"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    const v1, 0x10405ad

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_3
    const-string/jumbo v1, "ty.permission.SEND_EMAIL"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    const v1, 0x10405ae

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_4
    const-string/jumbo v1, "ty.permission.READ_SMS"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    const v1, 0x10405af

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_5
    const-string/jumbo v1, "ty.permission.READ_MMS"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 192
    const v1, 0x10405b0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_6
    const-string/jumbo v1, "ty.permission.WRITE_SMS"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 194
    const v1, 0x10405b1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_7
    const-string/jumbo v1, "ty.permission.WRITE_MMS"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    const v1, 0x10405b2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isSmsReg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "pkgName"
    .parameter "ukpms"

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    const-string v1, "android.permission.SEND_SMS"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const-string v1, "com.mediatek.smsreg"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const/4 v0, 0x1

    goto :goto_0
.end method
