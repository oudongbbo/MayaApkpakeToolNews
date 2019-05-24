.class public Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;
.super Lcom/maya/open/http/okgo/cache/DataBaseDao;
.source "SourceFile"


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

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3

    const-string v0, "taskKey=?"

    const/4 v1, 0x1

    .line 36
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/maya/open/http/okserver/download/DownloadInfo;
    .locals 3

    const-string v0, "taskKey=?"

    const/4 v1, 0x1

    .line 30
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
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

    const-string v6, "_id ASC"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 45
    invoke-virtual/range {v0 .. v7}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues(Lcom/maya/open/http/okserver/download/DownloadInfo;)Landroid/content/ContentValues;
    .locals 0

    .line 55
    invoke-static {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->buildContentValues(Lcom/maya/open/http/okserver/download/DownloadInfo;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
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

    const-string v0, "download_table"

    return-object v0
.end method

.method public parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okserver/download/DownloadInfo;
    .locals 0

    .line 50
    invoke-static {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object p1

    return-object p1
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

    const-string v0, "taskKey=?"

    const/4 v1, 0x1

    .line 40
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/maya/open/http/okserver/download/db/DownloadInfoDao;->update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
