.class public Landroid/provider/LocalGroups$Group;
.super Ljava/lang/Object;
.source "LocalGroups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/LocalGroups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation


# instance fields
.field private count:I

.field private id:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static restoreGroup(Landroid/database/Cursor;)Landroid/provider/LocalGroups$Group;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 91
    new-instance v0, Landroid/provider/LocalGroups$Group;

    invoke-direct {v0}, Landroid/provider/LocalGroups$Group;-><init>()V

    .line 92
    .local v0, group:Landroid/provider/LocalGroups$Group;
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/provider/LocalGroups$Group;->setId(J)V

    .line 93
    const-string/jumbo v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/provider/LocalGroups$Group;->setTitle(Ljava/lang/String;)V

    .line 94
    const-string v1, "count"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/provider/LocalGroups$Group;->setCount(I)V

    .line 95
    return-object v0
.end method

.method public static restoreGroupById(Landroid/content/ContentResolver;J)Landroid/provider/LocalGroups$Group;
    .locals 8
    .parameter "cr"
    .parameter "groupId"

    .prologue
    const/4 v7, 0x0

    .line 132
    sget-object v0, Landroid/provider/LocalGroups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 133
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 135
    .local v6, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-static {v6}, Landroid/provider/LocalGroups$Group;->restoreGroup(Landroid/database/Cursor;)Landroid/provider/LocalGroups$Group;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 139
    if-eqz v6, :cond_0

    .line 140
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 139
    :cond_1
    if-eqz v6, :cond_2

    .line 140
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v7

    .line 142
    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 140
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public delete(Landroid/content/ContentResolver;)Z
    .locals 7
    .parameter "cr"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mimetype=? and data1=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "vnd.android.cursor.item/local-groups"

    aput-object v5, v4, v1

    invoke-virtual {p0}, Landroid/provider/LocalGroups$Group;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    sget-object v2, Landroid/provider/LocalGroups;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v0, [Ljava/lang/String;

    iget-wide v5, p0, Landroid/provider/LocalGroups$Group;->id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroid/provider/LocalGroups$Group;->count:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Landroid/provider/LocalGroups$Group;->id:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/provider/LocalGroups$Group;->title:Ljava/lang/String;

    return-object v0
.end method

.method public save(Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "cr"

    .prologue
    .line 106
    sget-object v1, Landroid/provider/LocalGroups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/provider/LocalGroups$Group;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 107
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 108
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/provider/LocalGroups$Group;->setId(J)V

    .line 109
    const/4 v1, 0x1

    .line 111
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 87
    iput p1, p0, Landroid/provider/LocalGroups$Group;->count:I

    .line 88
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 71
    iput-wide p1, p0, Landroid/provider/LocalGroups$Group;->id:J

    .line 72
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 79
    iput-object p1, p0, Landroid/provider/LocalGroups$Group;->title:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Landroid/provider/LocalGroups$Group;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "count"

    invoke-virtual {p0}, Landroid/provider/LocalGroups$Group;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    return-object v0
.end method

.method public update(Landroid/content/ContentResolver;)Z
    .locals 8
    .parameter "cr"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    sget-object v2, Landroid/provider/LocalGroups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/provider/LocalGroups$Group;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "_id=?"

    new-array v5, v0, [Ljava/lang/String;

    iget-wide v6, p0, Landroid/provider/LocalGroups$Group;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
