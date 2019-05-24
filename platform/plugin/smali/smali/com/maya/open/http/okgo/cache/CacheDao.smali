.class Lcom/maya/open/http/okgo/cache/CacheDao;
.super Lcom/maya/open/http/okgo/cache/DataBaseDao;
.source "SourceFile"


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
    new-instance v0, Lcom/maya/open/http/okgo/cache/CacheHelper;

    invoke-direct {v0}, Lcom/maya/open/http/okgo/cache/CacheHelper;-><init>()V

    invoke-direct {p0, v0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/maya/open/http/okgo/cache/CacheEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/maya/open/http/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key=?"

    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okgo/cache/CacheDao;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/maya/open/http/okgo/cache/CacheEntity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getContentValues(Lcom/maya/open/http/okgo/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okgo/cache/CacheEntity<",
            "TT;>;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 41
    invoke-static {p1}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getContentValues(Lcom/maya/open/http/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 12
    check-cast p1, Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/cache/CacheDao;->getContentValues(Lcom/maya/open/http/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "cache_table"

    return-object v0
.end method

.method public parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okgo/cache/CacheEntity;
    .locals 0
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
    invoke-static {p1}, Lcom/maya/open/http/okgo/cache/CacheEntity;->parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/cache/CacheDao;->parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "key=?"

    const/4 v1, 0x1

    .line 29
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 30
    invoke-virtual {p0, v0, v2}, Lcom/maya/open/http/okgo/cache/CacheDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
