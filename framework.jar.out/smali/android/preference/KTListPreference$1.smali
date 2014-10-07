.class Landroid/preference/KTListPreference$1;
.super Ljava/lang/Object;
.source "KTListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/KTListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/KTListPreference;


# direct methods
.method constructor <init>(Landroid/preference/KTListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Landroid/preference/KTListPreference$1;->this$0:Landroid/preference/KTListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 241
    iget-object v0, p0, Landroid/preference/KTListPreference$1;->this$0:Landroid/preference/KTListPreference;

    #setter for: Landroid/preference/KTListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Landroid/preference/KTListPreference;->access$002(Landroid/preference/KTListPreference;I)I

    .line 246
    return-void
.end method
