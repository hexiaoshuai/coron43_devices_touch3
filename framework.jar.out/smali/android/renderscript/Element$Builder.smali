.class public Landroid/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArraySizes:[I

.field mCount:I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mSkipPadding:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 2
    .parameter "rs"

    .prologue
    const/16 v1, 0x8

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput-object p1, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 1009
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 1010
    new-array v0, v1, [Landroid/renderscript/Element;

    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 1011
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 1012
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    .line 1013
    return-void
.end method


# virtual methods
.method public add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;
    .locals 1
    .parameter "element"
    .parameter "name"

    .prologue
    .line 1066
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;
    .locals 7
    .parameter "element"
    .parameter "name"
    .parameter "arraySize"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1023
    if-ge p3, v6, :cond_0

    .line 1024
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Array size cannot be less than 1."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1028
    :cond_0
    iget v3, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    if-eqz v3, :cond_1

    .line 1029
    const-string v3, "#padding_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1030
    iput v5, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    .line 1056
    :goto_0
    return-object p0

    .line 1035
    :cond_1
    iget v3, p1, Landroid/renderscript/Element;->mVectorSize:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 1036
    iput v6, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    .line 1041
    :goto_1
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    iget-object v4, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 1042
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v1, v3, [Landroid/renderscript/Element;

    .line 1043
    .local v1, e:[Landroid/renderscript/Element;
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v2, v3, [Ljava/lang/String;

    .line 1044
    .local v2, s:[Ljava/lang/String;
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v0, v3, [I

    .line 1045
    .local v0, as:[I
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1046
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1047
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1048
    iput-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 1049
    iput-object v2, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 1050
    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    .line 1052
    .end local v0           #as:[I
    .end local v1           #e:[Landroid/renderscript/Element;
    .end local v2           #s:[Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput-object p1, v3, v4

    .line 1053
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput-object p2, v3, v4

    .line 1054
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput p3, v3, v4

    .line 1055
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    goto :goto_0

    .line 1038
    :cond_3
    iput v5, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    goto :goto_1
.end method

.method public create()Landroid/renderscript/Element;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1076
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1077
    iget v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v3, v0, [Landroid/renderscript/Element;

    .line 1078
    .local v3, ein:[Landroid/renderscript/Element;
    iget v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v4, v0, [Ljava/lang/String;

    .line 1079
    .local v4, sin:[Ljava/lang/String;
    iget v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v5, v0, [I

    .line 1080
    .local v5, asin:[I
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v0, v8, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1081
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v0, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1082
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v0, v8, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1084
    array-length v0, v3

    new-array v7, v0, [I

    .line 1085
    .local v7, ids:[I
    const/4 v6, 0x0

    .local v6, ct:I
    :goto_0
    array-length v0, v3

    if-ge v6, v0, :cond_0

    .line 1086
    aget-object v0, v3, v6

    iget-object v2, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v0

    aput v0, v7, v6

    .line 1085
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1088
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v7, v4, v5}, Landroid/renderscript/RenderScript;->nElementCreate2([I[Ljava/lang/String;[I)I

    move-result v1

    .line 1089
    .local v1, id:I
    new-instance v0, Landroid/renderscript/Element;

    iget-object v2, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V

    return-object v0
.end method
