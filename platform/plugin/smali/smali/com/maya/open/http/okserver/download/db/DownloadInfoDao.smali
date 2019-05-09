.class public Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;
.super Lcom/maya/open/http/okgo/cache/DataBaseDao;
.source "DownloadInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maya/open/http/okgo/cache/DataBaseDao<",
        "Lcom/maya/open/http/okserver/download/DownloadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/maya/open/http/okserver/download/db/DownloadInfoHelper;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/download/db/DownloadInfoHelper;-><init>()V

    invoke-direct {p0, v0}, Lcom/maya/open/http/okgo/cache/DataBaseDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 25
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 36
    const-string v0, "taskKey=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/maya/open/http/okserver/download/DownloadInfo;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 29
    const-string v0, "taskKey=?"

    .line 30
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 31
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 32
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okserver/download/DownloadInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/open/http/okserver/download/DownloadInfo;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getAll()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okserver/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 45
    const-string v6, "_id ASC"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues(Lcom/maya/open/http/okserver/download/DownloadInfo;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 55
    invoke-static {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->buildContentValues(Lcom/maya/open/http/okserver/download/DownloadInfo;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 21
    check-cast p1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->getContentValues(Lcom/maya/open/http/okserver/download/DownloadInfo;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "download_table"

    return-object v0
.end method

.method public parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okserver/download/DownloadInfo;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 50
    invoke-static {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/maya/open/http/okserver/download/DownloadInfo;)I
    .locals 4
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 40
    const-string v0, "taskKey=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
