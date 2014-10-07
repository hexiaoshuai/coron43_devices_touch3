.class Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthesisToFileOutputStreamSpeechItem"
.end annotation


# instance fields
.field private final mFileOutputStream:Ljava/io/FileOutputStream;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/io/FileOutputStream;)V
    .locals 0
    .parameter
    .parameter "callerIdentity"
    .parameter "callerUid"
    .parameter "callerPid"
    .parameter "params"
    .parameter "text"
    .parameter "fileOutputStream"

    .prologue
    .line 664
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 665
    invoke-direct/range {p0 .. p6}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    .line 666
    iput-object p7, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 667
    return-void
.end method


# virtual methods
.method protected createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .locals 2

    .prologue
    .line 671
    new-instance v0, Landroid/speech/tts/FileSynthesisCallback;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/FileSynthesisCallback;-><init>(Ljava/nio/channels/FileChannel;)V

    return-object v0
.end method

.method protected playImpl()I
    .locals 4

    .prologue
    .line 676
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->dispatchOnStart()V

    .line 677
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->playImpl()I

    move-result v1

    .line 678
    .local v1, status:I
    if-nez v1, :cond_0

    .line 679
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->dispatchOnDone()V

    .line 684
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_1
    return v1

    .line 681
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;->dispatchOnError()V

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TextToSpeechService"

    const-string v3, "Failed to close output file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
