.class public final Landroid/security/KeyPairGeneratorSpec$Builder;
.super Ljava/lang/Object;
.source "KeyPairGeneratorSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyPairGeneratorSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEndDate:Ljava/util/Date;

.field private mFlags:I

.field private mKeystoreAlias:Ljava/lang/String;

.field private mSerialNumber:Ljava/math/BigInteger;

.field private mStartDate:Ljava/util/Date;

.field private mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mContext:Landroid/content/Context;

    .line 233
    return-void
.end method


# virtual methods
.method public build()Landroid/security/KeyPairGeneratorSpec;
    .locals 8

    .prologue
    .line 314
    new-instance v0, Landroid/security/KeyPairGeneratorSpec;

    iget-object v1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iget-object v3, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    iget-object v4, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSerialNumber:Ljava/math/BigInteger;

    iget-object v5, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mEndDate:Ljava/util/Date;

    iget v7, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mFlags:I

    invoke-direct/range {v0 .. v7}, Landroid/security/KeyPairGeneratorSpec;-><init>(Landroid/content/Context;Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;I)V

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .parameter "alias"

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public setEncryptionRequired()Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mFlags:I

    .line 304
    return-object p0
.end method

.method public setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .parameter "endDate"

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endDate == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mEndDate:Ljava/util/Date;

    .line 293
    return-object p0
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .parameter "serialNumber"

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSerialNumber:Ljava/math/BigInteger;

    .line 269
    return-object p0
.end method

.method public setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .parameter "startDate"

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "startDate == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mStartDate:Ljava/util/Date;

    .line 281
    return-object p0
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .parameter "subject"

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 254
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subject == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    .line 257
    return-object p0
.end method
