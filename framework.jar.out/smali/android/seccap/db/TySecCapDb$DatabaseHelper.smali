.class Landroid/seccap/db/TySecCapDb$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TySecCapDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/seccap/db/TySecCapDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    const-string v0, "TySecCap.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 83
    iput-object p1, p0, Landroid/seccap/db/TySecCapDb$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private buildData(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ContentValues;
    .locals 6
    .parameter "permission"
    .parameter "packagename"
    .parameter "uid"
    .parameter "isSystem"

    .prologue
    const/4 v3, 0x1

    .line 160
    const-string v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne p4, v3, :cond_1

    .line 162
    const/4 v2, 0x0

    .line 176
    :cond_0
    :goto_0
    return-object v2

    .line 164
    :cond_1
    const/4 v2, 0x0

    .line 165
    .local v2, value:Landroid/content/ContentValues;
    sget v0, Landroid/seccap/TYSupportGroup;->INVALID:I

    .line 166
    .local v0, groupIndex:I
    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v1

    .line 167
    .local v1, tspg:Landroid/seccap/TYSupportGroup;
    invoke-virtual {v1, p1}, Landroid/seccap/TYSupportGroup;->CheckSupportValues(Ljava/lang/String;)I

    move-result v0

    sget v4, Landroid/seccap/TYSupportGroup;->INVALID:I

    if-eq v0, v4, :cond_0

    .line 168
    new-instance v2, Landroid/content/ContentValues;

    .end local v2           #value:Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .restart local v2       #value:Landroid/content/ContentValues;
    const-string/jumbo v4, "permission"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v4, "packagename"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v4, "issystem"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string/jumbo v4, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v4, "groupindex"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string/jumbo v4, "waycode"

    if-ne p4, v3, :cond_2

    :goto_1
    invoke-virtual {v1, v3, p2, p1}, Landroid/seccap/TYSupportGroup;->getDefaultWay(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method initDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22
    .parameter "db"

    .prologue
    .line 129
    invoke-static {}, Landroid/seccap/TYSupportGroup;->getTYSupportGroup()Landroid/seccap/TYSupportGroup;

    move-result-object v15

    .line 130
    .local v15, tspg:Landroid/seccap/TYSupportGroup;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v17, value:Landroid/content/ContentValues;
    const-string v18, "deftime"

    const/16 v19, 0x14

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string/jumbo v18, "overtimeway"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v18, "def3rdway"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/seccap/TYSupportGroup;->getDefaultWay(ZLjava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string/jumbo v18, "settings"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 136
    const/4 v9, 0x0

    .line 137
    .local v9, isSystem:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/seccap/db/TySecCapDb$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 138
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    const/16 v18, 0x1000

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v11

    .line 139
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/16 v16, 0x0

    .line 140
    .local v16, tylist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    .line 141
    .local v13, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/seccap/TYSupportGroup;->CheckSupportPackage(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 142
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v9, v18, 0x1

    .line 143
    iget-object v4, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v10, v4

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v7           #i$:I
    .local v8, i$:I
    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v12, v4, v8

    .line 144
    .local v12, p:Ljava/lang/String;
    invoke-virtual {v15, v12}, Landroid/seccap/TYSupportGroup;->getTyUkpms(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 145
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_1

    .line 146
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v8           #i$:I
    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 149
    .local v5, dp:Ljava/lang/String;
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v5, v1, v2, v9}, Landroid/seccap/db/TySecCapDb$DatabaseHelper;->buildData(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v17

    .line 150
    if-eqz v17, :cond_2

    .line 151
    const-string/jumbo v18, "permisrelate"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 143
    .end local v5           #dp:Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v8, 0x1

    .local v7, i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_0

    .line 157
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v12           #p:Ljava/lang/String;
    .end local v13           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 88
    const-string v0, "CREATE TABLE permisrelate (_id INTEGER PRIMARY KEY,permission TEXT,packagename TEXT,issystem INTEGER,uid INTEGER,groupindex INTEGER,waycode INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v0, "CREATE TABLE settings (_id INTEGER PRIMARY KEY,deftime INTEGER,overtimeway INTEGER,def3rdway INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    const-string v0, "CREATE TABLE remotesafe (_id INTEGER PRIMARY KEY,bindphone TEXT,password TEXT,phone_sim_ccid TEXT,first_phone_sim_ccid TEXT,second_phone_sim_ccid TEXT,first_run INTEGER,keep_screen_on INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1}, Landroid/seccap/db/TySecCapDb$DatabaseHelper;->initDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 116
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 120
    if-le p3, p2, :cond_0

    .line 121
    const-string v0, "DROP TABLE IF EXISTS permisrelate"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    const-string v0, "DROP TABLE IF EXISTS settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "DROP TABLE IF EXISTS remotesafe"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1}, Landroid/seccap/db/TySecCapDb$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    :cond_0
    return-void
.end method
