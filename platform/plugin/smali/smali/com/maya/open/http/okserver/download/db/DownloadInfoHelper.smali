.class public Lcom/maya/open/http/okserver/download/db/DownloadInfoHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadInfoHelper.java"


# static fields
.field private static final DB_CACHE_NAME:Ljava/lang/String; = "okgo_server.db"

.field public static final DB_CACHE_VERSION:I = 0x4

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE download_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, taskKey VARCHAR, url VARCHAR, targetFolder VARCHAR, targetPath VARCHAR, fileName VARCHAR, progress REAL, totalLength INTEGER, downloadLength INTEGER, networkSpeed INTEGER, state INTEGER, downloadRequest BLOB, data BLOB)"

.field private static final SQL_CREATE_UNIQUE_INDEX:Ljava/lang/String; = "CREATE UNIQUE INDEX cache_unique_index ON download_table(\"taskKey\")"

.field private static final SQL_DELETE_TABLE:Ljava/lang/String; = "DROP TABLE download_table"

.field private static final SQL_DELETE_UNIQUE_INDEX:Ljava/lang/String; = "DROP INDEX cache_unique_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "download_table"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 46
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "okgo_server.db"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 53
    :try_start_0
    const-string v0, "CREATE TABLE download_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, taskKey VARCHAR, url VARCHAR, targetFolder VARCHAR, targetPath VARCHAR, fileName VARCHAR, progress REAL, totalLength INTEGER, downloadLength INTEGER, networkSpeed INTEGER, state INTEGER, downloadRequest BLOB, data BLOB)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string v0, "CREATE UNIQUE INDEX cache_unique_index ON download_table(\"taskKey\")"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 61
    nop

    .line 62
    return-void

    .line 60
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 61
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 66
    if-eq p3, p2, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 69
    const/4 v0, 0x3

    if-le p3, v0, :cond_0

    .line 70
    :try_start_0
    const-string v0, "DROP INDEX cache_unique_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "DROP TABLE download_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 76
    :catch_0
    move-exception v0

    goto :goto_1

    .line 73
    :cond_0
    :goto_0
    const-string v0, "CREATE TABLE download_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, taskKey VARCHAR, url VARCHAR, targetFolder VARCHAR, targetPath VARCHAR, fileName VARCHAR, progress REAL, totalLength INTEGER, downloadLength INTEGER, networkSpeed INTEGER, state INTEGER, downloadRequest BLOB, data BLOB)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string v0, "CREATE UNIQUE INDEX cache_unique_index ON download_table(\"taskKey\")"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 76
    :goto_1
    nop

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    goto :goto_4

    .line 79
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    throw v0

    .line 82
    :cond_1
    :goto_4
    return-void
.end method
