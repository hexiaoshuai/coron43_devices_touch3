.class public Landroid/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .locals 1
    .parameter "rs"
    .parameter "e"

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x1

    iput v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 239
    invoke-virtual {p2}, Landroid/renderscript/Element;->checkValid()V

    .line 240
    iput-object p1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 241
    iput-object p2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    .line 242
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Type;
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 310
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-lez v0, :cond_2

    .line 311
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v0, v1, :cond_1

    .line 312
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Both X and Y dimension required when Z is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_1
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v0, :cond_2

    .line 315
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps not supported with 3D types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_2
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lez v0, :cond_3

    .line 319
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-ge v0, v1, :cond_3

    .line 320
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "X dimension required when Y is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_3
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v0, :cond_4

    .line 324
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v0, v1, :cond_4

    .line 325
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps require 2D Types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_4
    iget v0, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    if-eqz v0, :cond_6

    .line 330
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    if-eqz v0, :cond_6

    .line 331
    :cond_5
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "YUV only supports basic 2D."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_6
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iget v3, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v5, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v6, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iget v7, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->nTypeCreate(IIIIZZI)I

    move-result v8

    .line 337
    .local v8, id:I
    new-instance v9, Landroid/renderscript/Type;

    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v9, v8, v0}, Landroid/renderscript/Type;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 338
    .local v9, t:Landroid/renderscript/Type;
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iput-object v0, v9, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 339
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iput v0, v9, Landroid/renderscript/Type;->mDimX:I

    .line 340
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iput v0, v9, Landroid/renderscript/Type;->mDimY:I

    .line 341
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iput v0, v9, Landroid/renderscript/Type;->mDimZ:I

    .line 342
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v0, v9, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 343
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v0, v9, Landroid/renderscript/Type;->mDimFaces:Z

    .line 344
    iget v0, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    iput v0, v9, Landroid/renderscript/Type;->mDimYuv:I

    .line 346
    invoke-virtual {v9}, Landroid/renderscript/Type;->calcElementCount()V

    .line 347
    return-object v9
.end method

.method public setFaces(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .parameter "value"

    .prologue
    .line 280
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    .line 281
    return-object p0
.end method

.method public setMipmaps(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .parameter "value"

    .prologue
    .line 275
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 276
    return-object p0
.end method

.method public setX(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 251
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 252
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 255
    return-object p0
.end method

.method public setY(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 259
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 260
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    .line 263
    return-object p0
.end method

.method public setYuvFormat(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "yuvFormat"

    .prologue
    .line 290
    sparse-switch p1, :sswitch_data_0

    .line 296
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only NV21 and YV12 are supported.."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :sswitch_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    .line 300
    return-object p0

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public setZ(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 267
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 268
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    .line 271
    return-object p0
.end method
