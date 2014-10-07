.class Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;


# direct methods
.method constructor <init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 2158
    iput-object p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2158
    invoke-direct {p0, p1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 2162
    iput-boolean p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2163
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2167
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    iget-boolean v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    #calls: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$200(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Z)V

    .line 2168
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mLongPressUpdateInterval:J
    invoke-static {v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$2600(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2169
    return-void
.end method
