.class public Landroid/seccap/db/OperationsManager;
.super Ljava/lang/Object;
.source "OperationsManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OperationsManager"


# instance fields
.field private PERMISSION_PROJECT:[Ljava/lang/String;

.field private REMOUNTSAFE_PROJECT:[Ljava/lang/String;

.field private SETTINGS_PROJECT:[Ljava/lang/String;

.field private mTySecCapDb:Landroid/seccap/db/TySecCapDb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "permission"

    aput-object v1, v0, v3

    const-string/jumbo v1, "packagename"

    aput-object v1, v0, v4

    const-string v1, "issystem"

    aput-object v1, v0, v5

    const-string/jumbo v1, "uid"

    aput-object v1, v0, v6

    const-string v1, "groupindex"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "waycode"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/seccap/db/OperationsManager;->PERMISSION_PROJECT:[Ljava/lang/String;

    .line 44
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "deftime"

    aput-object v1, v0, v4

    const-string/jumbo v1, "overtimeway"

    aput-object v1, v0, v5

    const-string v1, "def3rdway"

    aput-object v1, v0, v6

    iput-object v0, p0, Landroid/seccap/db/OperationsManager;->SETTINGS_PROJECT:[Ljava/lang/String;

    .line 46
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "bindphone"

    aput-object v1, v0, v4

    const-string/jumbo v1, "password"

    aput-object v1, v0, v5

    iput-object v0, p0, Landroid/seccap/db/OperationsManager;->REMOUNTSAFE_PROJECT:[Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/seccap/db/TySecCapDb;

    invoke-direct {v0, p1}, Landroid/seccap/db/TySecCapDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    .line 51
    return-void
.end method


# virtual methods
.method public add2SeccapInfo(Landroid/seccap/SecCapInfo;)Z
    .locals 14
    .parameter "secCapInfo"

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const-string v0, "OperationsManager"

    const-string v1, " add2SeccapInfoDb param is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    .line 124
    :cond_0
    const/4 v10, 0x0

    .line 125
    .local v10, isModify:Z
    const/4 v8, 0x0

    .line 126
    .local v8, dataSum:I
    const-string/jumbo v3, "permission=? AND packagename=?"

    .line 128
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p1, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 131
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 133
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v1, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "permisrelate"

    iget-object v2, p0, Landroid/seccap/db/OperationsManager;->PERMISSION_PROJECT:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/seccap/db/TySecCapDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 140
    .local v7, count:I
    const/4 v0, 0x1

    if-le v7, v0, :cond_1

    .line 141
    const-string v0, "OperationsManager"

    const-string v1, " permission&packagename only not one"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    .end local v7           #count:I
    :catch_0
    move-exception v9

    .line 136
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v7       #count:I
    :cond_1
    const/4 v0, 0x1

    if-ne v7, v0, :cond_4

    .line 144
    const-string v0, "OperationsManager"

    const-string v1, "add2SeccapInfoDb modify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v10, 0x1

    .line 150
    :goto_1
    if-eqz v6, :cond_2

    .line 151
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_2
    if-eqz v10, :cond_6

    .line 155
    invoke-virtual {p0, p1}, Landroid/seccap/db/OperationsManager;->update2SecCapInfo(Landroid/seccap/SecCapInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 147
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 157
    :cond_5
    const-string v0, "OperationsManager"

    const-string v1, "add2SeccapInfoDb update2SeccapInfoDb error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :cond_6
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v13, value:Landroid/content/ContentValues;
    const-string/jumbo v0, "permission"

    iget-object v1, p1, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v0, "packagename"

    iget-object v1, p1, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "issystem"

    iget v1, p1, Landroid/seccap/SecCapInfo;->isSystem:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string/jumbo v0, "uid"

    iget v1, p1, Landroid/seccap/SecCapInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v0, "groupindex"

    iget v1, p1, Landroid/seccap/SecCapInfo;->groupIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string/jumbo v0, "waycode"

    iget v1, p1, Landroid/seccap/SecCapInfo;->waycode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    :try_start_1
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v1, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "permisrelate"

    invoke-virtual {v0, v1, v13}, Landroid/seccap/db/TySecCapDb;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 170
    .local v11, rowid:J
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-gtz v0, :cond_3

    .line 171
    const-string v0, "OperationsManager"

    const-string v1, "add2SeccapInfoDb insert error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 174
    .end local v11           #rowid:J
    :catch_1
    move-exception v9

    .line 175
    .restart local v9       #e:Landroid/database/sqlite/SQLiteFullException;
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public delAllSecCapInfo()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 255
    :try_start_0
    iget-object v2, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v3, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v3, "permisrelate"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/seccap/db/TySecCapDb;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 256
    const-string v2, "OperationsManager"

    const-string v3, " delAllSeccapInfo4Db error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return v1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 262
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public delSeCcapInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "permission"
    .parameter "packagename"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v6, "permission"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v6, "packagename"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, where:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    .line 228
    .local v1, selectionArgs:[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v6, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v6, "permisrelate"

    invoke-virtual {v5, v6, v2, v1}, Landroid/seccap/db/TySecCapDb;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-gtz v5, :cond_0

    .line 236
    :goto_0
    return v3

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    move v3, v4

    .line 236
    goto :goto_0
.end method

.method public delSeCcapInfoByPackage(Ljava/lang/String;)Z
    .locals 7
    .parameter "packagename"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v6, "packagename"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, where:Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    .line 243
    .local v1, selectionArgs:[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v6, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v6, "permisrelate"

    invoke-virtual {v5, v6, v2, v1}, Landroid/seccap/db/TySecCapDb;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-gtz v5, :cond_0

    .line 250
    :goto_0
    return v3

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    move v3, v4

    .line 250
    goto :goto_0
.end method

.method public deleteRemountSafeInfo()V
    .locals 4

    .prologue
    .line 542
    :try_start_0
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "remotesafe"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/seccap/db/TySecCapDb;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getRemountSafeInfo()Landroid/seccap/SecCapRemoteSafe;
    .locals 9

    .prologue
    .line 466
    const/4 v7, 0x0

    .line 468
    .local v7, info:Landroid/seccap/SecCapRemoteSafe;
    :try_start_0
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "remotesafe"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/seccap/db/TySecCapDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 470
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    new-instance v8, Landroid/seccap/SecCapRemoteSafe;

    invoke-direct {v8}, Landroid/seccap/SecCapRemoteSafe;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .end local v7           #info:Landroid/seccap/SecCapRemoteSafe;
    .local v8, info:Landroid/seccap/SecCapRemoteSafe;
    :try_start_1
    const-string v0, "bindphone"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/seccap/SecCapRemoteSafe;->bindphone:Ljava/lang/String;

    .line 475
    const-string/jumbo v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/seccap/SecCapRemoteSafe;->password:Ljava/lang/String;

    .line 477
    const-string/jumbo v0, "phone_sim_ccid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/seccap/SecCapRemoteSafe;->phone_sim_ccid:Ljava/lang/String;

    .line 479
    const-string v0, "first_phone_sim_ccid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/seccap/SecCapRemoteSafe;->first_phone_sim_ccid:Ljava/lang/String;

    .line 481
    const-string/jumbo v0, "second_phone_sim_ccid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/seccap/SecCapRemoteSafe;->second_phone_sim_ccid:Ljava/lang/String;

    .line 483
    const-string v0, "first_run"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/seccap/SecCapRemoteSafe;->first_run:I

    .line 485
    const-string v0, "keep_screen_on"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/seccap/SecCapRemoteSafe;->keep_screen_on:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 488
    .end local v8           #info:Landroid/seccap/SecCapRemoteSafe;
    .restart local v7       #info:Landroid/seccap/SecCapRemoteSafe;
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 493
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v7

    .line 490
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v7           #info:Landroid/seccap/SecCapRemoteSafe;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #info:Landroid/seccap/SecCapRemoteSafe;
    :catch_1
    move-exception v0

    move-object v7, v8

    .end local v8           #info:Landroid/seccap/SecCapRemoteSafe;
    .restart local v7       #info:Landroid/seccap/SecCapRemoteSafe;
    goto :goto_0
.end method

.method public getSecCapBindPhones()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/seccap/SecCapRemoteSafe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v6, bindPhoneList:Ljava/util/List;,"Ljava/util/List<Landroid/seccap/SecCapRemoteSafe;>;"
    const/4 v7, 0x0

    .line 385
    .local v7, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 387
    .local v9, rs:Landroid/seccap/SecCapRemoteSafe;
    :try_start_0
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v1, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "remotesafe"

    iget-object v2, p0, Landroid/seccap/db/OperationsManager;->REMOUNTSAFE_PROJECT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/seccap/db/TySecCapDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 392
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    new-instance v9, Landroid/seccap/SecCapRemoteSafe;

    .end local v9           #rs:Landroid/seccap/SecCapRemoteSafe;
    invoke-direct {v9}, Landroid/seccap/SecCapRemoteSafe;-><init>()V

    .line 394
    .restart local v9       #rs:Landroid/seccap/SecCapRemoteSafe;
    const-string v0, "bindphone"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/seccap/SecCapRemoteSafe;->bindphone:Ljava/lang/String;

    .line 395
    const-string/jumbo v0, "password"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/seccap/SecCapRemoteSafe;->password:Ljava/lang/String;

    .line 396
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :catch_0
    move-exception v8

    .line 402
    :cond_0
    :goto_1
    return-object v6

    .line 399
    :cond_1
    if-eqz v7, :cond_0

    .line 400
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public getSecCapInfo()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/seccap/SecCapInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    .local v6, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 58
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/seccap/SecCapInfo;>;"
    :try_start_0
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v1, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "permisrelate"

    iget-object v2, p0, Landroid/seccap/db/OperationsManager;->PERMISSION_PROJECT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/seccap/db/TySecCapDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 65
    .local v9, len:I
    if-lez v9, :cond_0

    .line 66
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Landroid/seccap/SecCapInfo;>;"
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .restart local v10       #list:Ljava/util/List;,"Ljava/util/List<Landroid/seccap/SecCapInfo;>;"
    const/4 v8, 0x0

    .line 68
    .local v8, info:Landroid/seccap/SecCapInfo;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v8, Landroid/seccap/SecCapInfo;

    .end local v8           #info:Landroid/seccap/SecCapInfo;
    invoke-direct {v8}, Landroid/seccap/SecCapInfo;-><init>()V

    .line 70
    .restart local v8       #info:Landroid/seccap/SecCapInfo;
    const-string/jumbo v0, "permission"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "packagename"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    .line 74
    const-string v0, "issystem"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/seccap/SecCapInfo;->isSystem:I

    .line 76
    const-string/jumbo v0, "uid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/seccap/SecCapInfo;->uid:I

    .line 78
    const-string v0, "groupindex"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/seccap/SecCapInfo;->groupIndex:I

    .line 80
    const-string/jumbo v0, "waycode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/seccap/SecCapInfo;->waycode:I

    .line 82
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v8           #info:Landroid/seccap/SecCapInfo;
    .end local v9           #len:I
    :catch_0
    move-exception v7

    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    move-object v0, v11

    .line 89
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :goto_1
    return-object v0

    .line 86
    .restart local v9       #len:I
    :cond_0
    if-eqz v6, :cond_1

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    .line 89
    goto :goto_1
.end method

.method public getSecCapSettings()Landroid/seccap/SecCapSettings;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 304
    const/4 v6, 0x0

    .line 305
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 307
    .local v8, secCapSettings:Landroid/seccap/SecCapSettings;
    :try_start_0
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v1, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "settings"

    iget-object v2, p0, Landroid/seccap/db/OperationsManager;->SETTINGS_PROJECT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/seccap/db/TySecCapDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 312
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v8, Landroid/seccap/SecCapSettings;

    .end local v8           #secCapSettings:Landroid/seccap/SecCapSettings;
    invoke-direct {v8}, Landroid/seccap/SecCapSettings;-><init>()V

    .line 314
    .restart local v8       #secCapSettings:Landroid/seccap/SecCapSettings;
    const-string v0, "deftime"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/seccap/SecCapSettings;->deftime:I

    .line 316
    const-string/jumbo v0, "overtimeway"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/seccap/SecCapSettings;->overtimeway:I

    .line 318
    const-string v0, "def3rdway"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/seccap/SecCapSettings;->def3rdway:I

    goto :goto_0

    .line 309
    :catch_0
    move-exception v7

    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    move-object v0, v9

    .line 325
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :goto_1
    return-object v0

    .line 322
    :cond_0
    if-eqz v6, :cond_1

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v8

    .line 325
    goto :goto_1
.end method

.method public getSeccapInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/seccap/SecCapInfo;
    .locals 10
    .parameter "permission"
    .parameter "packagename"

    .prologue
    const/4 v9, 0x0

    .line 182
    const/4 v8, 0x0

    .line 183
    .local v8, info:Landroid/seccap/SecCapInfo;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 219
    :goto_0
    return-object v0

    .line 188
    :cond_1
    const-string/jumbo v3, "permission=? AND packagename=?"

    .line 190
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    .line 193
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 195
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v1, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "permisrelate"

    iget-object v2, p0, Landroid/seccap/db/OperationsManager;->PERMISSION_PROJECT:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/seccap/db/TySecCapDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    new-instance v8, Landroid/seccap/SecCapInfo;

    .end local v8           #info:Landroid/seccap/SecCapInfo;
    invoke-direct {v8}, Landroid/seccap/SecCapInfo;-><init>()V

    .line 204
    .restart local v8       #info:Landroid/seccap/SecCapInfo;
    iput-object p1, v8, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    .line 205
    iput-object p2, v8, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    .line 206
    const-string v0, "issystem"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/seccap/SecCapInfo;->isSystem:I

    .line 208
    const-string/jumbo v0, "uid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/seccap/SecCapInfo;->uid:I

    .line 210
    const-string v0, "groupindex"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/seccap/SecCapInfo;->groupIndex:I

    .line 212
    const-string/jumbo v0, "waycode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Landroid/seccap/SecCapInfo;->waycode:I

    .line 216
    :cond_2
    if-eqz v6, :cond_3

    .line 217
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    .line 219
    goto :goto_0

    .line 198
    :catch_0
    move-exception v7

    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    move-object v0, v9

    .line 199
    goto :goto_0
.end method

.method public putRemountSafeInfo(Landroid/seccap/SecCapRemoteSafe;)V
    .locals 11
    .parameter "info"

    .prologue
    .line 498
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 499
    .local v10, value:Landroid/content/ContentValues;
    const-string v0, "bindphone"

    iget-object v1, p1, Landroid/seccap/SecCapRemoteSafe;->bindphone:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string/jumbo v0, "password"

    iget-object v1, p1, Landroid/seccap/SecCapRemoteSafe;->password:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string/jumbo v0, "phone_sim_ccid"

    iget-object v1, p1, Landroid/seccap/SecCapRemoteSafe;->phone_sim_ccid:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v0, "first_phone_sim_ccid"

    iget-object v1, p1, Landroid/seccap/SecCapRemoteSafe;->first_phone_sim_ccid:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string/jumbo v0, "second_phone_sim_ccid"

    iget-object v1, p1, Landroid/seccap/SecCapRemoteSafe;->second_phone_sim_ccid:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v0, "first_run"

    iget v1, p1, Landroid/seccap/SecCapRemoteSafe;->first_run:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    const-string v0, "keep_screen_on"

    iget v1, p1, Landroid/seccap/SecCapRemoteSafe;->keep_screen_on:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "remotesafe"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/seccap/db/TySecCapDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 513
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 514
    .local v7, isHave:Z
    if-eqz v6, :cond_1

    .line 515
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 516
    const/4 v7, 0x1

    .line 518
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 520
    :cond_1
    if-eqz v7, :cond_3

    .line 521
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "remotesafe"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/seccap/db/TySecCapDb;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 523
    const-string v0, "OperationsManager"

    const-string/jumbo v1, "putRemountSafeInfo update error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #isHave:Z
    .end local v10           #value:Landroid/content/ContentValues;
    :cond_2
    :goto_0
    return-void

    .line 527
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #isHave:Z
    .restart local v10       #value:Landroid/content/ContentValues;
    :cond_3
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "remotesafe"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/seccap/db/TySecCapDb;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "remotesafe"

    invoke-virtual {v0, v1, v10}, Landroid/seccap/db/TySecCapDb;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 531
    .local v8, rowid:J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gtz v0, :cond_2

    .line 532
    const-string v0, "OperationsManager"

    const-string/jumbo v1, "putRemountSafeInfo insert error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 535
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #isHave:Z
    .end local v8           #rowid:J
    .end local v10           #value:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public putSecCapBindPhone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .parameter "phoneNum"
    .parameter "passWord"

    .prologue
    .line 406
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 407
    const/4 v11, 0x0

    .line 460
    :goto_0
    return v11

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroid/seccap/db/OperationsManager;->getSecCapBindPhones()Ljava/util/List;

    move-result-object v1

    .line 411
    .local v1, bindPhoneList:Ljava/util/List;,"Ljava/util/List<Landroid/seccap/SecCapRemoteSafe;>;"
    const/4 v8, 0x0

    .line 412
    .local v8, sr:Landroid/seccap/SecCapRemoteSafe;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 413
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 414
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #sr:Landroid/seccap/SecCapRemoteSafe;
    check-cast v8, Landroid/seccap/SecCapRemoteSafe;

    .line 415
    .restart local v8       #sr:Landroid/seccap/SecCapRemoteSafe;
    iget-object v11, v8, Landroid/seccap/SecCapRemoteSafe;->bindphone:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 421
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 422
    .local v9, value:Landroid/content/ContentValues;
    if-eqz v8, :cond_4

    .line 423
    const-string v10, "bindphone=?"

    .line 424
    .local v10, where:Ljava/lang/String;
    const/4 v11, 0x1

    new-array v7, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v7, v11

    .line 425
    .local v7, selectionArgs:[Ljava/lang/String;
    iget-object v11, v8, Landroid/seccap/SecCapRemoteSafe;->password:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 426
    const-string/jumbo v11, "password"

    move-object/from16 v0, p2

    invoke-virtual {v9, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_2
    invoke-virtual {v9}, Landroid/content/ContentValues;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 430
    :try_start_0
    iget-object v11, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v12, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v12, "remotesafe"

    invoke-virtual {v11, v12, v9, v10, v7}, Landroid/seccap/db/TySecCapDb;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    if-gtz v11, :cond_5

    .line 432
    const-string v11, "OperationsManager"

    const-string/jumbo v12, "updateSecCapBindPhone update error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    const/4 v11, 0x0

    goto :goto_0

    .line 418
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v9           #value:Landroid/content/ContentValues;
    .end local v10           #where:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    .line 413
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 435
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #value:Landroid/content/ContentValues;
    .restart local v10       #where:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 436
    .local v3, e:Landroid/database/sqlite/SQLiteFullException;
    const/4 v11, 0x0

    goto :goto_0

    .line 442
    .end local v3           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v10           #where:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v11, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v12, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v12, "remotesafe"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/seccap/db/TySecCapDb;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    const-string v11, "bindphone"

    move-object/from16 v0, p1

    invoke-virtual {v9, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string/jumbo v11, "password"

    move-object/from16 v0, p2

    invoke-virtual {v9, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :try_start_2
    iget-object v11, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v12, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v12, "remotesafe"

    invoke-virtual {v11, v12, v9}, Landroid/seccap/db/TySecCapDb;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 451
    .local v5, rowid:J
    const-wide/16 v11, 0x0

    cmp-long v11, v5, v11

    if-gtz v11, :cond_5

    .line 452
    const-string v11, "OperationsManager"

    const-string/jumbo v12, "updateSecCapBindPhone insert error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_2

    .line 453
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 443
    .end local v5           #rowid:J
    :catch_1
    move-exception v3

    .line 444
    .restart local v3       #e:Landroid/database/sqlite/SQLiteFullException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 455
    .end local v3           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v3

    .line 456
    .restart local v3       #e:Landroid/database/sqlite/SQLiteFullException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 460
    .end local v3           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_5
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public setAllAppsWay(ZI)Z
    .locals 9
    .parameter "systemApps"
    .parameter "way"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 266
    if-eqz p2, :cond_0

    if-eq p2, v7, :cond_0

    if-eq p2, v8, :cond_0

    move v5, v6

    .line 299
    :goto_0
    return v5

    .line 271
    :cond_0
    if-nez p1, :cond_1

    .line 272
    invoke-virtual {p0}, Landroid/seccap/db/OperationsManager;->getSecCapSettings()Landroid/seccap/SecCapSettings;

    move-result-object v1

    .line 273
    .local v1, secCapSettings:Landroid/seccap/SecCapSettings;
    if-eqz v1, :cond_1

    .line 274
    iput p2, v1, Landroid/seccap/SecCapSettings;->def3rdway:I

    .line 275
    invoke-virtual {p0, v1}, Landroid/seccap/db/OperationsManager;->updateSecCapSettings(Landroid/seccap/SecCapSettings;)Z

    .line 279
    .end local v1           #secCapSettings:Landroid/seccap/SecCapSettings;
    :cond_1
    const-string v4, "issystem=? AND permission<>? AND waycode<>?"

    .line 282
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/String;

    if-ne p1, v7, :cond_2

    const-string v5, "1"

    :goto_1
    aput-object v5, v2, v6

    const-string v5, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v5, v2, v7

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    .line 288
    .local v2, selectionArgs:[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 289
    .local v3, value:Landroid/content/ContentValues;
    const-string/jumbo v5, "waycode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    :try_start_0
    iget-object v5, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v8, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v8, "permisrelate"

    invoke-virtual {v5, v8, v3, v4, v2}, Landroid/seccap/db/TySecCapDb;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-gtz v5, :cond_3

    move v5, v6

    .line 293
    goto :goto_0

    .line 282
    .end local v2           #selectionArgs:[Ljava/lang/String;
    .end local v3           #value:Landroid/content/ContentValues;
    :cond_2
    const-string v5, "0"

    goto :goto_1

    .line 295
    .restart local v2       #selectionArgs:[Ljava/lang/String;
    .restart local v3       #value:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    move v5, v6

    .line 296
    goto :goto_0

    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_3
    move v5, v7

    .line 299
    goto :goto_0
.end method

.method public update2SecCapInfo(Landroid/seccap/SecCapInfo;)Z
    .locals 8
    .parameter "secCapInfo"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    if-eqz p1, :cond_0

    iget-object v6, p1, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p1, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v4

    .line 99
    :cond_1
    const-string/jumbo v3, "permission=? AND packagename=?"

    .line 101
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/lang/String;

    iget-object v6, p1, Landroid/seccap/SecCapInfo;->permission:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    iget-object v6, p1, Landroid/seccap/SecCapInfo;->packagename:Ljava/lang/String;

    aput-object v6, v1, v5

    .line 104
    .local v1, selectionArgs:[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v2, value:Landroid/content/ContentValues;
    const-string/jumbo v6, "waycode"

    iget v7, p1, Landroid/seccap/SecCapInfo;->waycode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    :try_start_0
    iget-object v6, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v7, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v7, "permisrelate"

    invoke-virtual {v6, v7, v2, v3, v1}, Landroid/seccap/db/TySecCapDb;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_0

    move v4, v5

    .line 115
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0
.end method

.method public updateSecCapSettings(Landroid/seccap/SecCapSettings;)Z
    .locals 14
    .parameter "secCapSettings"

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 379
    :goto_0
    return v0

    .line 333
    :cond_0
    const/4 v6, 0x0

    .line 334
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 335
    .local v8, id:J
    const/4 v10, 0x0

    .line 337
    .local v10, secCapSet:Landroid/seccap/SecCapSettings;
    :try_start_0
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v1, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "settings"

    iget-object v2, p0, Landroid/seccap/db/OperationsManager;->SETTINGS_PROJECT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/seccap/db/TySecCapDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 342
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    new-instance v10, Landroid/seccap/SecCapSettings;

    .end local v10           #secCapSet:Landroid/seccap/SecCapSettings;
    invoke-direct {v10}, Landroid/seccap/SecCapSettings;-><init>()V

    .line 344
    .restart local v10       #secCapSet:Landroid/seccap/SecCapSettings;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Landroid/seccap/SecCapSettings;->deftime:I

    int-to-long v8, v0

    .line 345
    const-string v0, "deftime"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Landroid/seccap/SecCapSettings;->deftime:I

    .line 346
    const-string/jumbo v0, "overtimeway"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Landroid/seccap/SecCapSettings;->overtimeway:I

    .line 347
    const-string v0, "def3rdway"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Landroid/seccap/SecCapSettings;->def3rdway:I

    goto :goto_1

    .line 339
    :catch_0
    move-exception v7

    .line 340
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    const/4 v0, 0x0

    goto :goto_0

    .line 350
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_1
    if-eqz v6, :cond_2

    .line 351
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_2
    const-string v13, "_id=?"

    .line 356
    .local v13, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .line 358
    .local v11, selectionArgs:[Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 359
    .local v12, value:Landroid/content/ContentValues;
    iget v0, p1, Landroid/seccap/SecCapSettings;->deftime:I

    iget v1, v10, Landroid/seccap/SecCapSettings;->deftime:I

    if-eq v0, v1, :cond_3

    .line 360
    const-string v0, "deftime"

    iget v1, p1, Landroid/seccap/SecCapSettings;->deftime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    :cond_3
    iget v0, p1, Landroid/seccap/SecCapSettings;->overtimeway:I

    iget v1, v10, Landroid/seccap/SecCapSettings;->overtimeway:I

    if-eq v0, v1, :cond_4

    .line 363
    const-string/jumbo v0, "overtimeway"

    iget v1, p1, Landroid/seccap/SecCapSettings;->overtimeway:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    :cond_4
    iget v0, p1, Landroid/seccap/SecCapSettings;->def3rdway:I

    iget v1, v10, Landroid/seccap/SecCapSettings;->def3rdway:I

    if-eq v0, v1, :cond_5

    .line 366
    const-string v0, "def3rdway"

    iget v1, p1, Landroid/seccap/SecCapSettings;->def3rdway:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    :cond_5
    invoke-virtual {v12}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 371
    :try_start_1
    iget-object v0, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    iget-object v1, p0, Landroid/seccap/db/OperationsManager;->mTySecCapDb:Landroid/seccap/db/TySecCapDb;

    const-string/jumbo v1, "settings"

    invoke-virtual {v0, v1, v12, v13, v11}, Landroid/seccap/db/TySecCapDb;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-gtz v0, :cond_6

    .line 373
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 375
    :catch_1
    move-exception v7

    .line 376
    .restart local v7       #e:Landroid/database/sqlite/SQLiteFullException;
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 379
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
