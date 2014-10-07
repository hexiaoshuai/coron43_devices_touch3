.class Lcn/ktouch/lib/android/widget/KtouchNumberPicker$2;
.super Ljava/lang/Object;
.source "KtouchNumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 656
    iput-object p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$2;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 658
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$2;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #calls: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->hideSoftInput()V
    invoke-static {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$000(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V

    .line 659
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$2;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$100(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020327

    if-ne v0, v1, :cond_0

    .line 661
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$2;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #calls: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v2, v3, v4}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$300(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;ZJ)V

    .line 665
    :goto_0
    return v2

    .line 663
    :cond_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$2;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    const/4 v1, 0x0

    #calls: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v1, v3, v4}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$300(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;ZJ)V

    goto :goto_0
.end method
