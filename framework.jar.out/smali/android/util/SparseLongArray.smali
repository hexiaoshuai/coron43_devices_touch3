.class public Landroid/util/SparseLongArray;
.super Ljava/lang/Object;
.source "SparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseLongArray;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result p1

    .line 47
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 48
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 50
    return-void
.end method

.method private static binarySearch([IIIJ)I
    .locals 5
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    .line 227
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .line 229
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 230
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 232
    .local v0, guess:I
    aget v3, p0, v0

    int-to-long v3, v3

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    .line 233
    move v2, v0

    goto :goto_0

    .line 235
    :cond_0
    move v1, v0

    goto :goto_0

    .line 238
    .end local v0           #guess:I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    .line 239
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 243
    .end local v1           #high:I
    :cond_2
    :goto_1
    return v1

    .line 240
    .restart local v1       #high:I
    :cond_3
    aget v3, p0, v1

    int-to-long v3, v3

    cmp-long v3, v3, p3

    if-eqz v3, :cond_2

    .line 243
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private growKeyAndValueArrays(I)V
    .locals 6
    .parameter "minNeededSize"

    .prologue
    const/4 v5, 0x0

    .line 214
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result v0

    .line 216
    .local v0, n:I
    new-array v1, v0, [I

    .line 217
    .local v1, nkeys:[I
    new-array v2, v0, [J

    .line 219
    .local v2, nvalues:[J
    iget-object v3, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget-object v4, p0, Landroid/util/SparseLongArray;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v3, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget-object v4, p0, Landroid/util/SparseLongArray;->mValues:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iput-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 223
    iput-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    .line 224
    return-void
.end method


# virtual methods
.method public append(IJ)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 198
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_0

    .line 199
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 211
    :goto_0
    return-void

    .line 203
    :cond_0
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 204
    .local v0, pos:I
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 205
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/util/SparseLongArray;->growKeyAndValueArrays(I)V

    .line 208
    :cond_1
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aput p1, v1, v0

    .line 209
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v1, v0

    .line 210
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/util/SparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 191
    return-void
.end method

.method public clone()Landroid/util/SparseLongArray;
    .locals 3

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, clone:Landroid/util/SparseLongArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseLongArray;

    move-object v1, v0

    .line 57
    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/util/SparseLongArray;->mKeys:[I

    .line 58
    iget-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Landroid/util/SparseLongArray;->mValues:[J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clone()Landroid/util/SparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 6
    .parameter "key"

    .prologue
    .line 91
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    int-to-long v4, p1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/util/SparseLongArray;->binarySearch([IIIJ)I

    move-result v0

    .line 93
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public get(I)J
    .locals 2
    .parameter "key"

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(IJ)J
    .locals 6
    .parameter "key"
    .parameter "valueIfKeyNotFound"

    .prologue
    .line 78
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    int-to-long v4, p1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/util/SparseLongArray;->binarySearch([IIIJ)I

    move-result v0

    .line 80
    .local v0, i:I
    if-gez v0, :cond_0

    .line 83
    .end local p2
    :goto_0
    return-wide p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide p2, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 5
    .parameter "key"

    .prologue
    .line 167
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    int-to-long v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/SparseLongArray;->binarySearch([IIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(J)I
    .locals 3
    .parameter "value"

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 183
    .end local v0           #i:I
    :goto_1
    return v0

    .line 179
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 149
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(IJ)V
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 113
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    int-to-long v4, p1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/util/SparseLongArray;->binarySearch([IIIJ)I

    move-result v0

    .line 115
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 116
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v1, v0

    .line 133
    :goto_0
    return-void

    .line 118
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 120
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 121
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Landroid/util/SparseLongArray;->growKeyAndValueArrays(I)V

    .line 124
    :cond_1
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    :cond_2
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aput p1, v1, v0

    .line 130
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v1, v0

    .line 131
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 105
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return v0
.end method

.method public valueAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 158
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
