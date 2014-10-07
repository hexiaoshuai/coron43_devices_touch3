.class Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;
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
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;


# direct methods
.method constructor <init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 2193
    iput-object p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2197
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #calls: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->showSoftInput()V
    invoke-static {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$2700(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V

    .line 2198
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    const/4 v1, 0x1

    #setter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIngonreMoveEvents:Z
    invoke-static {v0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$2802(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Z)Z

    .line 2199
    return-void
.end method
