.class Lcom/maya/open/http/okgo/cache/CacheDao;
.super Lcom/maya/open/http/okgo/cache/DataBaseDao;
.source "CacheDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/maya/open/http/okgo/cache/DataBaseDao<",
        "Lcom/maya/open/http/okgo/cache/CacheEntity<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheDao;, "Lcom/maya/open/http/okgo/cache/CacheDao<TT;>;"
    new-instance v0, Lcom/maya/open/http/okgo/cache/CacheHelper;

    invoke-direct {v0}, Lcom/maya/open/http/okgo/cache/CacheHelper;-><init>()V

    invoke-direct {p0, v0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 16
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/maya/open/http/okgo/cache/CacheEntity;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/maya/open/http/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 20
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheDao;, "Lcom/maya/open/http/okgo/cache/CacheDao<TT;>;"
    const-string v0, "key=?"

    .line 21
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 22
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/CacheDao;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 23
    .local v3, "cacheEntities":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/open/http/okgo/cache/CacheEntity;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getContentValues(Lcom/maya/open/http/okgo/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okgo/cache/CacheEntity<",
            "TT;>;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheDao;, "Lcom/maya/open/http/okgo/cache/CacheDao<TT;>;"
    .local p1, "cacheEntity":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    invoke-static {p1}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getContentValues(Lcom/maya/open/http/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 12
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheDao;, "Lcom/maya/open/http/okgo/cache/CacheDao<TT;>;"
    check-cast p1, Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/cache/CacheDao;->getContentValues(Lcom/maya/open/http/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .line 46
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheDao;, "Lcom/maya/open/http/okgo/cache/CacheDao<TT;>;"
    const-string v0, "cache_table"

    return-object v0
.end method

.method public parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okgo/cache/CacheEntity;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/maya/open/http/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheDao;, "Lcom/maya/open/http/okgo/cache/CacheDao<TT;>;"
    invoke-static {p1}, Lcom/maya/open/http/okgo/cache/CacheEntity;->parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okgo/cache/CacheEntity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 12
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheDao;, "Lcom/maya/open/http/okgo/cache/CacheDao<TT;>;"
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/cache/CacheDao;->parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 28
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheDao;, "Lcom/maya/open/http/okgo/cache/CacheDao<TT;>;"
    const-string v0, "key=?"

    .line 29
    .local v0, "whereClause":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 30
    .local v2, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/maya/open/http/okgo/cache/CacheDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 31
    .local v4, "delete":I
    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
