.class public Lcom/hxs/settings/MyListViewActivity;
.super Landroid/preference/PreferenceActivity;
.source "MyListViewActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field flag1:Z

.field private mListViewAnimation:Landroid/preference/ListPreference;

.field private mListViewInterpolator:Landroid/preference/ListPreference;

.field private mStatusBarTraffic:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static filesStatus(Ljava/lang/String;)Z
    .locals 5
    .parameter "string"

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "File not exist:"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, i:I
    const/4 v1, 0x0

    .end local v2           #i:I
    .local v1, flag:Z
    :goto_0
    return v1

    .end local v1           #flag:Z
    :cond_0
    const-string v4, "File exist:"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .local v3, j:I
    const/4 v1, 0x1

    .restart local v1       #flag:Z
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lcom/hxs/settings/MyListViewActivity;->addPreferencesFromResource(I)V

    const-string v3, "listview_animation"

    invoke-virtual {p0, v3}, Lcom/hxs/settings/MyListViewActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewAnimation:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/hxs/settings/MyListViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "listview_animation"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, listviewanimation:I
    iget-object v3, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewAnimation:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewAnimation:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "listview_interpolator"

    invoke-virtual {p0, v3}, Lcom/hxs/settings/MyListViewActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewInterpolator:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/hxs/settings/MyListViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "listview_interpolator"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, listviewinterpolator:I
    iget-object v3, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewInterpolator:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewInterpolator:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewInterpolator:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewInterpolator:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    const-string v4, "listview_animation"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, listviewanimation:I
    iget-object v4, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewAnimation:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .local v0, index:I
    invoke-virtual {p0}, Lcom/hxs/settings/MyListViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "listview_animation"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewAnimation:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v4, v5

    .end local v0           #index:I
    .end local v2           #listviewanimation:I
    :goto_0
    return v4

    .restart local p2
    :cond_0
    const-string v4, "listview_interpolator"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, listviewinterpolator:I
    iget-object v4, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewInterpolator:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #index:I
    invoke-virtual {p0}, Lcom/hxs/settings/MyListViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "listview_interpolator"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewInterpolator:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/hxs/settings/MyListViewActivity;->mListViewInterpolator:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v4, v5

    goto :goto_0

    .end local v0           #index:I
    .end local v3           #listviewinterpolator:I
    .restart local p2
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
