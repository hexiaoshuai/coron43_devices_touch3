.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private mCurrentIndent:[C

.field private mCurrentLength:I

.field private mEmptyLine:Z

.field private mIndentBuilder:Ljava/lang/StringBuilder;

.field private final mSingleIndent:Ljava/lang/String;

.field private final mWrapLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "singleIndent"

    .prologue
    .line 48
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 1
    .parameter "writer"
    .parameter "singleIndent"
    .parameter "wrapLength"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 53
    iput-object p2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    .line 54
    iput p3, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    .line 55
    return-void
.end method

.method private maybeWriteIndent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_1

    .line 117
    iput-boolean v2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 118
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    array-length v1, v1

    invoke-super {p0, v0, v2, v1}, Ljava/io/PrintWriter;->write([CII)V

    .line 125
    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseIndent()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 65
    return-void
.end method

.method public increaseIndent()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 60
    return-void
.end method

.method public printPair(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public write([CII)V
    .locals 11
    .parameter "buf"
    .parameter "offset"
    .parameter "count"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xa

    const/4 v8, 0x1

    .line 73
    iget-object v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 74
    .local v2, indentLength:I
    add-int v0, p2, p3

    .line 75
    .local v0, bufferEnd:I
    move v5, p2

    .line 76
    .local v5, lineStart:I
    move v3, p2

    .local v3, lineEnd:I
    move v4, v3

    .line 79
    .end local v3           #lineEnd:I
    .local v4, lineEnd:I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 80
    add-int/lit8 v3, v4, 0x1

    .end local v4           #lineEnd:I
    .restart local v3       #lineEnd:I
    aget-char v1, p1, v4

    .line 81
    .local v1, ch:C
    iget v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    .line 82
    if-ne v1, v9, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 84
    sub-int v6, v3, v5

    invoke-super {p0, p1, v5, v6}, Ljava/io/PrintWriter;->write([CII)V

    .line 85
    move v5, v3

    .line 86
    iput-boolean v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 87
    iput v10, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    .line 91
    :cond_0
    iget v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    iget v7, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    sub-int/2addr v7, v2

    if-lt v6, v7, :cond_1

    .line 92
    iget-boolean v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-nez v6, :cond_2

    .line 94
    invoke-super {p0, v9}, Ljava/io/PrintWriter;->write(I)V

    .line 95
    iput-boolean v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 96
    sub-int v6, v3, v5

    iput v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    :cond_1
    :goto_1
    move v4, v3

    .line 107
    .end local v3           #lineEnd:I
    .restart local v4       #lineEnd:I
    goto :goto_0

    .line 99
    .end local v4           #lineEnd:I
    .restart local v3       #lineEnd:I
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 100
    sub-int v6, v3, v5

    invoke-super {p0, p1, v5, v6}, Ljava/io/PrintWriter;->write([CII)V

    .line 101
    invoke-super {p0, v9}, Ljava/io/PrintWriter;->write(I)V

    .line 102
    iput-boolean v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 103
    move v5, v3

    .line 104
    iput v10, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    goto :goto_1

    .line 109
    .end local v1           #ch:C
    .end local v3           #lineEnd:I
    .restart local v4       #lineEnd:I
    :cond_3
    if-eq v5, v4, :cond_4

    .line 110
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 111
    sub-int v6, v4, v5

    invoke-super {p0, p1, v5, v6}, Ljava/io/PrintWriter;->write([CII)V

    .line 113
    :cond_4
    return-void
.end method
