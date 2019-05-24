.class Lcom/maya/open/http/okgo/cache/CacheHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DB_CACHE_NAME:Ljava/lang/String; = "okgo_cache.db"

.field public static final DB_CACHE_VERSION:I = 0x3

.field public static final HEAD:Ljava/lang/String; = "head"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final LOCAL_EXPIRE:Ljava/lang/String; = "localExpire"

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE cache_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR, localExpire INTEGER, head BLOB, data BLOB)"

.field private static final SQL_CREATE_UNIQUE_INDEX:Ljava/lang/String; = "CREATE UNIQUE INDEX cache_unique_index ON cache_table(\"key\")"

.field private static final SQL_DELETE_TABLE:Ljava/lang/String; = "DROP TABLE cache_table"

.field private static final SQL_DELETE_UNIQUE_INDEX:Ljava/lang/String; = "DROP INDEX cache_unique_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "cache_table"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 34
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "okgo_cache.db"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "CREATE TABLE cache_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR, localExpire INTEGER, head BLOB, data BLOB)"

    .line 41
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX cache_unique_index ON cache_table(\"key\")"

    .line 43
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 46
    :try_start_1
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 49
    throw v0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/cache/CacheHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    if-eq p3, p2, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string p2, "DROP INDEX cache_unique_index"

    .line 57
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE cache_table"

    .line 58
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE cache_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR, localExpire INTEGER, head BLOB, data BLOB)"

    .line 59
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE UNIQUE INDEX cache_unique_index ON cache_table(\"key\")"

    .line 60
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 63
    :try_start_1
    invoke-static {p2}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 66
    throw p2

    :cond_0
    :goto_2
    return-void
.end method
