.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"


# instance fields
.field private mTitleResource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mTitleResource:Ljava/lang/String;

    return-void
.end method

.method private getTitleFromResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "titleResource"

    .prologue
    const/4 v9, 0x0

    .line 89
    const-string v7, ":string/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 93
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 94
    .local v1, packageIndex:I
    if-lez v1, :cond_0

    .line 95
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 97
    .local v4, res:Landroid/content/res/Resources;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, p1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 98
    .local v5, resourcId:I
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, title:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 102
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mTitleResource:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v1           #packageIndex:I
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v5           #resourcId:I
    .end local v6           #title:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 106
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v9, p0, Lcom/android/internal/app/ChooserActivity;->mTitleResource:Ljava/lang/String;

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    move-object v6, p1

    .line 113
    goto :goto_0

    .line 108
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v0

    .line 109
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iput-object v9, p0, Lcom/android/internal/app/ChooserActivity;->mTitleResource:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 39
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .line 40
    .local v10, targetParcelable:Landroid/os/Parcelable;
    instance-of v0, v10, Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 41
    const-string v0, "ChooseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target is not an intent: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 70
    :goto_0
    return-void

    :cond_0
    move-object v2, v10

    .line 45
    check-cast v2, Landroid/content/Intent;

    .line 46
    .local v2, target:Landroid/content/Intent;
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    .local v3, title:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040405

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3           #title:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 55
    .restart local v3       #title:Ljava/lang/String;
    :goto_1
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 56
    .local v9, pa:[Landroid/os/Parcelable;
    const/4 v4, 0x0

    .line 57
    .local v4, initialIntents:[Landroid/content/Intent;
    if-eqz v9, :cond_3

    .line 58
    array-length v0, v9

    new-array v4, v0, [Landroid/content/Intent;

    .line 59
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v0, v9

    if-ge v7, v0, :cond_3

    .line 60
    aget-object v0, v9, v7

    instance-of v0, v0, Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 61
    const-string v0, "ChooseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial intent #"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " not an Intent: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v5, v9, v7

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    goto :goto_0

    .line 53
    .end local v4           #initialIntents:[Landroid/content/Intent;
    .end local v7           #i:I
    .end local v9           #pa:[Landroid/os/Parcelable;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/app/ChooserActivity;->getTitleFromResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 66
    .restart local v4       #initialIntents:[Landroid/content/Intent;
    .restart local v7       #i:I
    .restart local v9       #pa:[Landroid/os/Parcelable;
    :cond_2
    aget-object v0, v9, v7

    check-cast v0, Landroid/content/Intent;

    aput-object v0, v4, v7

    .line 59
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 69
    .end local v7           #i:I
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onResume()V

    .line 76
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mTitleResource:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mTitleResource:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivity;->getTitleFromResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    return-void
.end method
