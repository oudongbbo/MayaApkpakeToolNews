.class public Lcom/maya/open/http/okserver/download/DownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/maya/open/http/okserver/download/DownloadInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DOWNLOAD_LENGTH:Ljava/lang/String; = "downloadLength"

.field public static final DOWNLOAD_REQUEST:Ljava/lang/String; = "downloadRequest"

.field public static final FILE_NAME:Ljava/lang/String; = "fileName"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final NETWORK_SPEED:Ljava/lang/String; = "networkSpeed"

.field public static final PROGRESS:Ljava/lang/String; = "progress"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TARGET_FOLDER:Ljava/lang/String; = "targetFolder"

.field public static final TARGET_PATH:Ljava/lang/String; = "targetPath"

.field public static final TASK_KEY:Ljava/lang/String; = "taskKey"

.field public static final TOTAL_LENGTH:Ljava/lang/String; = "totalLength"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private data:Ljava/io/Serializable;

.field private downloadLength:J

.field private downloadRequest:Lcom/maya/open/http/okserver/download/db/DownloadRequest;

.field private fileName:Ljava/lang/String;

.field private id:I

.field private listener:Lcom/maya/open/http/okserver/listener/DownloadListener;

.field private networkSpeed:J

.field private progress:F

.field private request:Lcom/maya/open/http/okgo/request/BaseRequest;

.field private state:I

.field private targetFolder:Ljava/lang/String;

.field private targetPath:Ljava/lang/String;

.field private task:Lcom/maya/open/http/okserver/download/DownloadTask;

.field private taskKey:Ljava/lang/String;

.field private totalLength:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->state:I

    .line 60
    new-instance v0, Lcom/maya/open/http/okserver/download/db/DownloadRequest;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/download/db/DownloadRequest;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->downloadRequest:Lcom/maya/open/http/okserver/download/db/DownloadRequest;

    return-void
.end method

.method public static buildContentValues(Lcom/maya/open/http/okserver/download/DownloadInfo;)Landroid/content/ContentValues;
    .locals 5

    .line 65
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "taskKey"

    .line 66
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    .line 67
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "targetFolder"

    .line 68
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "targetPath"

    .line 69
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fileName"

    .line 70
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "progress"

    .line 71
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getProgress()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "totalLength"

    .line 72
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "downloadLength"

    .line 73
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getDownloadLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "networkSpeed"

    .line 74
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getNetworkSpeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "state"

    .line 75
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getRequest()Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getDownloadRequest()Lcom/maya/open/http/okserver/download/db/DownloadRequest;

    move-result-object v2

    .line 79
    invoke-virtual {v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->cacheKey:Ljava/lang/String;

    .line 80
    invoke-virtual {v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheTime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->cacheTime:J

    .line 81
    invoke-virtual {v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;

    move-result-object v3

    iput-object v3, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    .line 82
    invoke-virtual {v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->url:Ljava/lang/String;

    .line 83
    invoke-virtual {v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getParams()Lcom/maya/open/http/okgo/model/HttpParams;

    move-result-object v3

    iput-object v3, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    .line 84
    invoke-virtual {v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;

    move-result-object v3

    iput-object v3, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    .line 85
    invoke-static {v1}, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->getMethod(Lcom/maya/open/http/okgo/request/BaseRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->method:Ljava/lang/String;

    const/4 v1, 0x0

    .line 90
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 94
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "downloadRequest"

    .line 95
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 100
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 101
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 103
    invoke-static {v1}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, v1

    goto/16 :goto_c

    :catch_2
    move-exception v2

    move-object v4, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v3, v1

    move-object v4, v3

    goto/16 :goto_c

    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    :goto_0
    move-object v1, v2

    .line 97
    :goto_1
    :try_start_4
    invoke-static {v1}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v4, :cond_0

    .line 100
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    :cond_0
    if-eqz v3, :cond_1

    .line 101
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 108
    :cond_1
    :goto_2
    :try_start_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 109
    :try_start_7
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 110
    :try_start_8
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getData()Ljava/io/Serializable;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 112
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v3, "data"

    .line 113
    invoke-virtual {v0, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 118
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 119
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    :catchall_2
    move-exception p0

    goto :goto_8

    :catch_4
    move-exception p0

    move-object v3, v1

    move-object v4, v2

    goto :goto_4

    :catchall_3
    move-exception p0

    goto :goto_3

    :catch_5
    move-exception p0

    move-object v3, v1

    goto :goto_4

    :catchall_4
    move-exception p0

    move-object v1, v3

    :goto_3
    move-object v2, v4

    goto :goto_8

    :catch_6
    move-exception p0

    .line 115
    :goto_4
    :try_start_a
    invoke-static {p0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v4, :cond_2

    .line 118
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_5

    :catch_7
    move-exception p0

    goto :goto_6

    :cond_2
    :goto_5
    if-eqz v3, :cond_3

    .line 119
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_7

    .line 121
    :goto_6
    invoke-static {p0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_7
    return-object v0

    :goto_8
    if-eqz v2, :cond_4

    .line 118
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_9

    :catch_8
    move-exception v0

    goto :goto_a

    :cond_4
    :goto_9
    if-eqz v1, :cond_5

    .line 119
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_b

    .line 121
    :goto_a
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 123
    :cond_5
    :goto_b
    throw p0

    :catchall_5
    move-exception p0

    :goto_c
    if-eqz v4, :cond_6

    .line 100
    :try_start_d
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_e

    :cond_6
    :goto_d
    if-eqz v3, :cond_7

    .line 101
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_f

    .line 103
    :goto_e
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 105
    :cond_7
    :goto_f
    throw p0
.end method

.method public static parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okserver/download/DownloadInfo;
    .locals 8

    .line 128
    new-instance v0, Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;-><init>()V

    const-string v1, "_id"

    .line 129
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setId(I)V

    const-string v1, "taskKey"

    .line 130
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTaskKey(Ljava/lang/String;)V

    const-string v1, "url"

    .line 131
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setUrl(Ljava/lang/String;)V

    const-string v1, "targetFolder"

    .line 132
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTargetFolder(Ljava/lang/String;)V

    const-string v1, "targetPath"

    .line 133
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTargetPath(Ljava/lang/String;)V

    const-string v1, "fileName"

    .line 134
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setFileName(Ljava/lang/String;)V

    const-string v1, "progress"

    .line 135
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setProgress(F)V

    const-string v1, "totalLength"

    .line 136
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTotalLength(J)V

    const-string v1, "downloadLength"

    .line 137
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setDownloadLength(J)V

    const-string v1, "networkSpeed"

    .line 138
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    const-string v1, "state"

    .line 139
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    const-string v1, "downloadRequest"

    .line 143
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 146
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;

    .line 149
    invoke-virtual {v0, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setDownloadRequest(Lcom/maya/open/http/okserver/download/db/DownloadRequest;)V

    .line 150
    iget-object v4, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->url:Ljava/lang/String;

    iget-object v5, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->method:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->createRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 152
    iget-object v5, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    invoke-virtual {v4, v5}, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheMode(Lcom/maya/open/http/okgo/cache/CacheMode;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 153
    iget-wide v5, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->cacheTime:J

    invoke-virtual {v4, v5, v6}, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheTime(J)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 154
    iget-object v5, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->cacheKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheKey(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 155
    iget-object v5, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v4, v5}, Lcom/maya/open/http/okgo/request/BaseRequest;->params(Lcom/maya/open/http/okgo/model/HttpParams;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 156
    iget-object v2, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v4, v2}, Lcom/maya/open/http/okgo/request/BaseRequest;->headers(Lcom/maya/open/http/okgo/model/HttpHeaders;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 157
    invoke-virtual {v0, v4}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setRequest(Lcom/maya/open/http/okgo/request/BaseRequest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v2

    move-object v3, v1

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    .line 161
    :goto_0
    :try_start_3
    invoke-static {v2}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    .line 164
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz v3, :cond_6

    .line 165
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    .line 167
    :goto_2
    invoke-static {v2}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_2
    move-exception p0

    :goto_3
    if-eqz v1, :cond_1

    .line 164
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :cond_1
    :goto_4
    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 167
    :goto_5
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 169
    :cond_2
    :goto_6
    throw p0

    :cond_3
    move-object v1, v2

    move-object v3, v1

    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    .line 164
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_5
    if-eqz v3, :cond_6

    .line 165
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_8
    const-string v2, "data"

    .line 171
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    if-eqz p0, :cond_a

    .line 174
    :try_start_7
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 175
    :try_start_8
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 176
    :try_start_9
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    .line 177
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setData(Ljava/io/Serializable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v1, p0

    goto :goto_a

    :catch_5
    move-exception v1

    move-object v3, v2

    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception p0

    move-object v3, v2

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v3

    goto :goto_a

    :catch_7
    move-exception p0

    .line 180
    :goto_9
    :try_start_a
    invoke-static {p0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v1, :cond_7

    .line 183
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_7
    if-eqz v3, :cond_c

    .line 184
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_11

    :goto_a
    if-eqz v1, :cond_8

    .line 183
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_b

    :catch_8
    move-exception p0

    goto :goto_c

    :cond_8
    :goto_b
    if-eqz v2, :cond_9

    .line 184
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_d

    .line 186
    :goto_c
    invoke-static {p0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 188
    :cond_9
    :goto_d
    throw v0

    :cond_a
    move-object p0, v1

    move-object v2, v3

    :goto_e
    if-eqz p0, :cond_b

    .line 183
    :try_start_d
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_f

    :catch_9
    move-exception p0

    goto :goto_10

    :cond_b
    :goto_f
    if-eqz v2, :cond_c

    .line 184
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_11

    .line 186
    :goto_10
    invoke-static {p0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    :cond_c
    :goto_11
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/maya/open/http/okserver/download/DownloadInfo;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->compareTo(Lcom/maya/open/http/okserver/download/DownloadInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 327
    instance-of v0, p1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    if-eqz v0, :cond_0

    .line 328
    check-cast p1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 329
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getData()Ljava/io/Serializable;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->data:Ljava/io/Serializable;

    return-object v0
.end method

.method public getDownloadLength()J
    .locals 2

    .line 257
    iget-wide v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->downloadLength:J

    return-wide v0
.end method

.method public getDownloadRequest()Lcom/maya/open/http/okserver/download/db/DownloadRequest;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->downloadRequest:Lcom/maya/open/http/okserver/download/db/DownloadRequest;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->id:I

    return v0
.end method

.method public getListener()Lcom/maya/open/http/okserver/listener/DownloadListener;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->listener:Lcom/maya/open/http/okserver/listener/DownloadListener;

    return-object v0
.end method

.method public getNetworkSpeed()J
    .locals 2

    .line 265
    iget-wide v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->networkSpeed:J

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 241
    iget v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->progress:F

    return v0
.end method

.method public getRequest()Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->request:Lcom/maya/open/http/okgo/request/BaseRequest;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->state:I

    return v0
.end method

.method public getTargetFolder()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->targetFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPath()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->targetPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Lcom/maya/open/http/okserver/download/DownloadTask;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->task:Lcom/maya/open/http/okserver/download/DownloadTask;

    return-object v0
.end method

.method public getTaskKey()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->taskKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLength()J
    .locals 2

    .line 249
    iget-wide v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->totalLength:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public removeListener()V
    .locals 1

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->listener:Lcom/maya/open/http/okserver/listener/DownloadListener;

    return-void
.end method

.method public setData(Ljava/io/Serializable;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->data:Ljava/io/Serializable;

    return-void
.end method

.method public setDownloadLength(J)V
    .locals 0

    .line 261
    iput-wide p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->downloadLength:J

    return-void
.end method

.method public setDownloadRequest(Lcom/maya/open/http/okserver/download/db/DownloadRequest;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->downloadRequest:Lcom/maya/open/http/okserver/download/db/DownloadRequest;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->id:I

    return-void
.end method

.method public setListener(Lcom/maya/open/http/okserver/listener/DownloadListener;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->listener:Lcom/maya/open/http/okserver/listener/DownloadListener;

    return-void
.end method

.method public setNetworkSpeed(J)V
    .locals 0

    .line 269
    iput-wide p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->networkSpeed:J

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->progress:F

    return-void
.end method

.method public setRequest(Lcom/maya/open/http/okgo/request/BaseRequest;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->request:Lcom/maya/open/http/okgo/request/BaseRequest;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->state:I

    return-void
.end method

.method public setTargetFolder(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->targetFolder:Ljava/lang/String;

    return-void
.end method

.method public setTargetPath(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->targetPath:Ljava/lang/String;

    return-void
.end method

.method public setTask(Lcom/maya/open/http/okserver/download/DownloadTask;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->task:Lcom/maya/open/http/okserver/download/DownloadTask;

    return-void
.end method

.method public setTaskKey(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->taskKey:Ljava/lang/String;

    return-void
.end method

.method public setTotalLength(J)V
    .locals 0

    .line 253
    iput-wide p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->totalLength:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->url:Ljava/lang/String;

    return-void
.end method
