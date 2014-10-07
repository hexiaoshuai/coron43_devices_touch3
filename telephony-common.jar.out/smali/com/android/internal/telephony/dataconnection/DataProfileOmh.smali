.class public Lcom/android/internal/telephony/dataconnection/DataProfileOmh;
.super Lcom/android/internal/telephony/dataconnection/DataProfile;
.source "DataProfileOmh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    }
.end annotation


# static fields
.field private static PROFILE_TYPE:Ljava/lang/String;


# instance fields
.field private DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

.field private DATA_PROFILE_OMH_PRIORITY_LOWEST:I

.field private mDataProfileModem:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

.field private mPriority:I

.field private serviceTypeMasks:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string v0, "DataProfileOmh"

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->PROFILE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 125
    const-string v2, ""

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->PROFILE_TYPE:Ljava/lang/String;

    const/4 v6, 0x3

    const-string v8, "IP"

    const-string v9, "IP"

    move-object v0, p0

    move-object v5, v4

    move-object v7, v4

    move v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mProfileId:I

    .line 130
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    .line 131
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "profileId"
    .parameter "priority"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;-><init>()V

    .line 135
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mProfileId:I

    .line 136
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    .line 137
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->types:[Ljava/lang/String;

    .line 138
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "id"
    .parameter "numeric"
    .parameter "name"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "protocol"
    .parameter "roamingProtocol"
    .parameter "bearer"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct/range {p0 .. p10}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    .line 102
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    .line 106
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    .line 109
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    .line 117
    return-void
.end method

.method private isValidPriority(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 200
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addServiceType(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V
    .locals 7
    .parameter "modemProfile"

    .prologue
    .line 218
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    .line 221
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v4, serviceTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->values()[Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 223
    .local v1, dpt:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 224
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataServiceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v1           #dpt:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->types:[Ljava/lang/String;

    .line 228
    return-void
.end method

.method public canHandleType(Ljava/lang/String;)Z
    .locals 2
    .parameter "serviceType"

    .prologue
    .line 142
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataProfileType()Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;->PROFILE_TYPE_OMH:Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;

    return-object v0
.end method

.method public getDataProfileTypeModem()Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mDataProfileModem:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    return v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mProfileId:I

    return v0
.end method

.method public getServiceTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, dummy:[Ljava/lang/String;
    return-object v0
.end method

.method public isPriorityHigher(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPriorityLower(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidPriority()Z
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    return v0
.end method

.method public setDataProfileTypeModem(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V
    .locals 0
    .parameter "modemProfile"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mDataProfileModem:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    .line 174
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 181
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    .line 182
    return-void
.end method

.method public toHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "DataProfile OMH"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
