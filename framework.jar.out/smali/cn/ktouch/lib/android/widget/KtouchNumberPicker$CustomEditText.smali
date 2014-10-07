.class public Lcn/ktouch/lib/android/widget/KtouchNumberPicker$CustomEditText;
.super Landroid/widget/EditText;
.source "KtouchNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/ktouch/lib/android/widget/KtouchNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEditText"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2178
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2179
    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .locals 1
    .parameter "actionCode"

    .prologue
    .line 2183
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 2184
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2185
    invoke-virtual {p0}, Lcn/ktouch/lib/android/widget/KtouchNumberPicker$CustomEditText;->clearFocus()V

    .line 2187
    :cond_0
    return-void
.end method
