.class public Landroid/seccap/db/TySecCapDb;
.super Ljava/lang/Object;
.source "TySecCapDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/seccap/db/TySecCapDb$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.ty.seccap"

.field public static final BINDPHONE:Ljava/lang/String; = "bindphone"

.field private static final DATABASE_NAME:Ljava/lang/String; = "TySecCap.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DEF3RDWAY:Ljava/lang/String; = "def3rdway"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final DEFTIME:Ljava/lang/String; = "deftime"

.field public static final GROUPINDEX:Ljava/lang/String; = "groupindex"

.field public static final ISSYSTEM:Ljava/lang/String; = "issystem"

.field public static final KEY_FIRST_RUN:Ljava/lang/String; = "first_run"

.field public static final KEY_KEEP_SCREEN_ON:Ljava/lang/String; = "keep_screen_on"

.field public static final KEY_MY_FIRST_PHONE:Ljava/lang/String; = "first_phone_sim_ccid"

.field public static final KEY_MY_PHONE:Ljava/lang/String; = "phone_sim_ccid"

.field public static final KEY_MY_SECOND_PHONE:Ljava/lang/String; = "second_phone_sim_ccid"

.field public static final OVERTIMEWAY:Ljava/lang/String; = "overtimeway"

.field public static final PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PERMISSION:Ljava/lang/String; = "permission"

.field public static final PERMISSION_TABLE_NAME:Ljava/lang/String; = "permisrelate"

.field public static final REMOTESAFE_TABLE_NAME:Ljava/lang/String; = "remotesafe"

.field public static final SECCAPSETTINGS_TABLE_NAME:Ljava/lang/String; = "settings"

.field private static final TAG:Ljava/lang/String; = "TySecCapDb"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final WAYCODE:Ljava/lang/String; = "waycode"


# instance fields
.field private mOpenHelper:Landroid/seccap/db/TySecCapDb$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/seccap/db/TySecCapDb$DatabaseHelper;

    invoke-direct {v0, p1}, Landroid/seccap/db/TySecCapDb$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/seccap/db/TySecCapDb;->mOpenHelper:Landroid/seccap/db/TySecCapDb$DatabaseHelper;

    .line 77
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "tab"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, count:I
    iget-object v2, p0, Landroid/seccap/db/TySecCapDb;->mOpenHelper:Landroid/seccap/db/TySecCapDb$DatabaseHelper;

    invoke-virtual {v2}, Landroid/seccap/db/TySecCapDb$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 242
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "permisrelate"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    const-string/jumbo v2, "permisrelate"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    move v2, v0

    .line 249
    :goto_1
    return v2

    .line 244
    :cond_0
    const-string/jumbo v2, "remotesafe"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    const-string/jumbo v2, "remotesafe"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 247
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6
    .parameter "tab"
    .parameter "initialValues"

    .prologue
    const/4 v5, 0x0

    const-wide/16 v2, -0x1

    .line 210
    if-nez p2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-wide v2

    .line 213
    :cond_1
    const/4 v1, 0x0

    .line 214
    .local v1, values:Landroid/content/ContentValues;
    const-string/jumbo v4, "permisrelate"

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    const-string/jumbo v4, "permission"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "packagename"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "issystem"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "uid"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "groupindex"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "waycode"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #values:Landroid/content/ContentValues;
    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 224
    .restart local v1       #values:Landroid/content/ContentValues;
    iget-object v2, p0, Landroid/seccap/db/TySecCapDb;->mOpenHelper:Landroid/seccap/db/TySecCapDb$DatabaseHelper;

    invoke-virtual {v2}, Landroid/seccap/db/TySecCapDb$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 225
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "permisrelate"

    invoke-virtual {v0, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0

    .line 226
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    const-string/jumbo v4, "remotesafe"

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    const-string v4, "bindphone"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "password"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #values:Landroid/content/ContentValues;
    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 232
    .restart local v1       #values:Landroid/content/ContentValues;
    iget-object v2, p0, Landroid/seccap/db/TySecCapDb;->mOpenHelper:Landroid/seccap/db/TySecCapDb$DatabaseHelper;

    invoke-virtual {v2}, Landroid/seccap/db/TySecCapDb$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 233
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "remotesafe"

    invoke-virtual {v0, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "tab"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 183
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 185
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v2, "permisrelate"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    const-string/jumbo v2, "permisrelate"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 197
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    const-string v7, "_id ASC"

    .line 204
    .local v7, orderBy:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Landroid/seccap/db/TySecCapDb;->mOpenHelper:Landroid/seccap/db/TySecCapDb$DatabaseHelper;

    invoke-virtual {v2}, Landroid/seccap/db/TySecCapDb$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 205
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, c:Landroid/database/Cursor;
    move-object v5, v8

    .line 206
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_0
    return-object v5

    .line 187
    :cond_1
    const-string/jumbo v2, "settings"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    const-string/jumbo v2, "settings"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_2
    const-string/jumbo v2, "remotesafe"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    const-string/jumbo v2, "remotesafe"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_3
    move-object v7, p5

    .restart local v7       #orderBy:Ljava/lang/String;
    goto :goto_1
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "tab"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 253
    iget-object v2, p0, Landroid/seccap/db/TySecCapDb;->mOpenHelper:Landroid/seccap/db/TySecCapDb$DatabaseHelper;

    invoke-virtual {v2}, Landroid/seccap/db/TySecCapDb$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 254
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 255
    .local v0, count:I
    const-string/jumbo v2, "permisrelate"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const-string/jumbo v2, "permisrelate"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    move v2, v0

    .line 264
    :goto_1
    return v2

    .line 257
    :cond_0
    const-string/jumbo v2, "settings"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    const-string/jumbo v2, "settings"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 259
    :cond_1
    const-string/jumbo v2, "remotesafe"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    const-string/jumbo v2, "remotesafe"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 262
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method
