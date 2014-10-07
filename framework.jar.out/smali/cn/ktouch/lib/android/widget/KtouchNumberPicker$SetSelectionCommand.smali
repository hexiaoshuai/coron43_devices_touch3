.class Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "KtouchNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/ktouch/lib/android/widget/KtouchNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;


# direct methods
.method constructor <init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 2145
    iput-object p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$602(Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2145
    iput p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$702(Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2145
    iput p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2151
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$100(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 2152
    return-void
.end method
