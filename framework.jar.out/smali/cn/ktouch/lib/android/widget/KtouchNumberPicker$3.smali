.class Lcn/ktouch/lib/android/widget/KtouchNumberPicker$3;
.super Ljava/lang/Object;
.source "KtouchNumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/ktouch/lib/android/widget/KtouchNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;


# direct methods
.method constructor <init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$3;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v1, 0x0

    .line 692
    if-eqz p2, :cond_0

    .line 693
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$3;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$100(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 698
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$3;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$100(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 696
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$3;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #calls: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->validateInputTextView(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$400(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Landroid/view/View;)V

    goto :goto_0
.end method
