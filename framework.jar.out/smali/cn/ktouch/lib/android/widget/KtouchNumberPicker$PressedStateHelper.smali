.class Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;
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
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;


# direct methods
.method constructor <init>(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)V
    .locals 1
    .parameter

    .prologue
    .line 2065
    iput-object p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2069
    const/4 v0, 0x1

    iput v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 2070
    const/4 v0, 0x2

    iput v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 3
    .parameter "button"

    .prologue
    .line 2090
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->cancel()V

    .line 2091
    const/4 v0, 0x1

    iput v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->mMode:I

    .line 2092
    iput p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2093
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2094
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .parameter "button"

    .prologue
    .line 2097
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->cancel()V

    .line 2098
    const/4 v0, 0x2

    iput v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->mMode:I

    .line 2099
    iput p1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2100
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-virtual {v0, p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2101
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2076
    iput v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->mMode:I

    .line 2077
    iput v4, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2078
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-virtual {v0, p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2079
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1300(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2080
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #setter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1302(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Z)Z

    .line 2081
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1400(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I
    invoke-static {v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1500(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottom:I
    invoke-static {v3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1600(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate(IIII)V

    .line 2083
    :cond_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #setter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1702(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Z)Z

    .line 2084
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1700(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2085
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I
    invoke-static {v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1800(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1900(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate(IIII)V

    .line 2087
    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2105
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2139
    :goto_0
    return-void

    .line 2107
    :pswitch_0
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2109
    :pswitch_1
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #setter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1302(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Z)Z

    .line 2110
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1400(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I
    invoke-static {v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$2000(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottom:I
    invoke-static {v3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$2100(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2113
    :pswitch_2
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #setter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1702(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;Z)Z

    .line 2114
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I
    invoke-static {v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$2200(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1900(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2119
    :pswitch_3
    iget v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2121
    :pswitch_4
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1300(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2125
    :cond_0
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-static {v0, v3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1380(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;I)Z

    .line 2126
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1400(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I
    invoke-static {v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$2300(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mBottom:I
    invoke-static {v3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$2400(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2129
    :pswitch_5
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1700(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2130
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2133
    :cond_1
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    invoke-static {v0, v3}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1780(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;I)Z

    .line 2134
    iget-object v0, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    iget-object v1, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mRight:I
    invoke-static {v1}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$2500(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$PressedStateHelper;->this$0:Lcn/ktouch/lib/android/widget/KtouchNumberPicker;

    #getter for: Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->access$1900(Lcn/ktouch/lib/android/widget/KtouchNumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker;->invalidate(IIII)V

    goto/16 :goto_0

    .line 2105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2107
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2119
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
