.class Landroid/seccap/TYSupportGroup$Restriction;
.super Ljava/lang/Object;
.source "TYSupportGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/seccap/TYSupportGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Restriction"
.end annotation


# instance fields
.field private mActString:[I

.field private mIndex:I

.field private mResid:I

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "index"
    .parameter "resid"

    .prologue
    const/4 v1, 0x0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    sget v0, Landroid/seccap/TYSupportGroup;->INVALID:I

    iput v0, p0, Landroid/seccap/TYSupportGroup$Restriction;->mIndex:I

    .line 296
    iput-object v1, p0, Landroid/seccap/TYSupportGroup$Restriction;->mValues:Ljava/util/List;

    .line 297
    iput-object v1, p0, Landroid/seccap/TYSupportGroup$Restriction;->mActString:[I

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Landroid/seccap/TYSupportGroup$Restriction;->mResid:I

    .line 301
    iput p1, p0, Landroid/seccap/TYSupportGroup$Restriction;->mIndex:I

    .line 302
    iput p2, p0, Landroid/seccap/TYSupportGroup$Restriction;->mResid:I

    .line 303
    return-void
.end method


# virtual methods
.method public findSupported(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, supported:Ljava/lang/String;
    iget-object v1, p0, Landroid/seccap/TYSupportGroup$Restriction;->mValues:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/seccap/TYSupportGroup$Restriction;->mValues:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    move-object v0, p1

    .line 343
    :cond_0
    return-object v0
.end method

.method public getActString()[I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/seccap/TYSupportGroup$Restriction;->mActString:[I

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Landroid/seccap/TYSupportGroup$Restriction;->mIndex:I

    return v0
.end method

.method public getResid()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Landroid/seccap/TYSupportGroup$Restriction;->mResid:I

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Landroid/seccap/TYSupportGroup$Restriction;->mValues:Ljava/util/List;

    return-object v0
.end method

.method public setActString([I)Landroid/seccap/TYSupportGroup$Restriction;
    .locals 0
    .parameter "actString"

    .prologue
    .line 331
    if-eqz p1, :cond_0

    .line 332
    iput-object p1, p0, Landroid/seccap/TYSupportGroup$Restriction;->mActString:[I

    .line 334
    :cond_0
    return-object p0
.end method

.method public varargs setValues([Ljava/lang/String;)Landroid/seccap/TYSupportGroup$Restriction;
    .locals 5
    .parameter "values"

    .prologue
    .line 317
    if-eqz p1, :cond_0

    .line 318
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/seccap/TYSupportGroup$Restriction;->mValues:Ljava/util/List;

    .line 319
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 320
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Landroid/seccap/TYSupportGroup$Restriction;->mValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    return-object p0
.end method
