.class Lcn/ktouch/lib/android/widget/KtouchNumberPicker$1;
.super Ljava/lang/Object;
.source "KtouchNumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 644
    iput-object p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$1;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 646
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$1;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #calls: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->hideSoftInput()V
    invoke-static {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$000(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V

    .line 647
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$1;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$100(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 648
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020327

    if-ne v0, v1, :cond_0

    .line 649
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$1;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    const/4 v1, 0x1

    #calls: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$200(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Z)V

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$1;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    const/4 v1, 0x0

    #calls: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$200(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Z)V

    goto :goto_0
.end method
