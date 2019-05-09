.class public abstract Lcom/maya/open/http/okgo/cache/DataBaseDao;
.super Ljava/lang/Object;
.source "DataBaseDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private helper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .param p1, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .line 17
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/maya/open/http/okgo/cache/DataBaseDao;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 19
    return-void
.end method


# virtual methods
.method protected final closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 30
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 32
    :cond_1
    return-void
.end method

.method public count()I
    .locals 1

    .line 39
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->countColumn(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countColumn(Ljava/lang/String;)I
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;

    .line 44
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(?) FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->openReader()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 46
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 48
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 49
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v3

    invoke-virtual {v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 50
    const/4 v4, 0x0

    .line 51
    .local v4, "count":I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v4, v5

    .line 54
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    nop

    .line 59
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 60
    invoke-virtual {p0, v1, v2}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 55
    return v4

    .line 59
    .end local v4    # "count":I
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 56
    :catch_0
    move-exception v4

    .line 57
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v4}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .end local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 60
    invoke-virtual {p0, v1, v2}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 61
    nop

    .line 62
    return v3

    .line 59
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 60
    invoke-virtual {p0, v1, v2}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 61
    throw v3
.end method

.method public create(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->openWriter()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 147
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 148
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 149
    .local v2, "id":J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    nop

    .line 154
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 150
    return-wide v2

    .line 154
    .end local v2    # "id":J
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 151
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 156
    nop

    .line 157
    const-wide/16 v1, 0x0

    return-wide v1

    .line 154
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 156
    throw v2
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .line 72
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->openWriter()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 74
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 75
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 76
    .local v2, "result":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    nop

    .line 81
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 77
    return v2

    .line 81
    .end local v2    # "result":I
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 83
    nop

    .line 84
    const/4 v1, 0x0

    return v1

    .line 81
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 83
    throw v2
.end method

.method public deleteAll()I
    .locals 1

    .line 67
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    move-object v1, p0

    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->openReader()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 100
    .local v11, "database":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 101
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    move-object v13, v0

    .line 103
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 104
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v11

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v13, v0

    .line 105
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, v13}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 112
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    invoke-virtual {p0, v11, v13}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 114
    nop

    .line 115
    return-object v12

    .line 112
    :goto_2
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    invoke-virtual {p0, v11, v13}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 114
    throw v0
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method protected abstract getTableName()Ljava/lang/String;
.end method

.method protected final openReader()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 22
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/cache/DataBaseDao;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected final openWriter()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 26
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/cache/DataBaseDao;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public abstract parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public replace(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->openWriter()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 130
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 131
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 132
    .local v2, "id":J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    nop

    .line 137
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 133
    return-wide v2

    .line 137
    .end local v2    # "id":J
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 139
    nop

    .line 140
    const-wide/16 v1, 0x0

    return-wide v1

    .line 137
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 139
    throw v2
.end method

.method public update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 162
    .local p0, "this":Lcom/maya/open/http/okgo/cache/DataBaseDao;, "Lcom/maya/open/http/okgo/cache/DataBaseDao<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->openWriter()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 164
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 165
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 166
    .local v2, "count":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    nop

    .line 171
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 167
    return v2

    .line 171
    .end local v2    # "count":I
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 173
    nop

    .line 174
    const/4 v1, 0x0

    return v1

    .line 171
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 173
    throw v2
.end method
