.class public Lcom/maya/open/http/okserver/download/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

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

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->state:I

    .line 60
    new-instance v0, Lcom/maya/open/http/okserver/download/db/DownloadRequest;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/download/db/DownloadRequest;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->downloadRequest:Lcom/maya/open/http/okserver/download/db/DownloadRequest;

    return-void
.end method

.method public static buildContentValues(Lcom/maya/open/http/okserver/download/DownloadInfo;)Landroid/content/ContentValues;
    .locals 7
    .param p0, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 65
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "taskKey"

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "url"

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "targetFolder"

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "targetPath"

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "fileName"

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getProgress()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 72
    const-string v1, "totalLength"

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    const-string v1, "downloadLength"

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getDownloadLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    const-string v1, "networkSpeed"

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getNetworkSpeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    const-string v1, "state"

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getRequest()Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v1

    .line 78
    .local v1, "request":Lcom/maya/open/http/okgo/request/BaseRequest;
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getDownloadRequest()Lcom/maya/open/http/okserver/download/db/DownloadRequest;

    move-result-object v2

    .line 79
    .local v2, "downloadRequest":Lcom/maya/open/http/okserver/download/db/DownloadRequest;
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

    move-result-object v3

    iput-object v3, v2, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->method:Ljava/lang/String;

    .line 87
    const/4 v3, 0x0

    .line 88
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 90
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v5

    .line 91
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 92
    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 94
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 95
    .local v5, "requestData":[B
    const-string v6, "downloadRequest"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v5    # "requestData":[B
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 101
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    :cond_0
    :goto_0
    goto :goto_1

    .line 102
    :catch_0
    move-exception v5

    .line 103
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 105
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 99
    :catchall_0
    move-exception v5

    goto/16 :goto_9

    .line 96
    :catch_1
    move-exception v5

    .line 97
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 101
    :cond_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 108
    :goto_1
    :try_start_4
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v5

    .line 109
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 110
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getData()Ljava/io/Serializable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 112
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 113
    .local v5, "data":[B
    const-string v6, "data"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    .end local v5    # "data":[B
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 119
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 122
    :cond_2
    :goto_2
    goto :goto_3

    .line 120
    :catch_2
    move-exception v5

    .line 121
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 123
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 117
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 114
    :catch_3
    move-exception v5

    .line 115
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 118
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 119
    :cond_3
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 124
    :goto_3
    return-object v0

    .line 117
    :goto_4
    nop

    .line 118
    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_5

    .line 120
    :catch_4
    move-exception v6

    goto :goto_6

    .line 119
    :cond_4
    :goto_5
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    .line 120
    :goto_6
    nop

    .line 121
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v6}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 122
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    :goto_7
    nop

    .line 123
    :goto_8
    throw v5

    .line 99
    :goto_9
    nop

    .line 100
    if-eqz v4, :cond_6

    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_a

    .line 102
    :catch_5
    move-exception v6

    goto :goto_b

    .line 101
    :cond_6
    :goto_a
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_c

    .line 102
    :goto_b
    nop

    .line 103
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v6}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 104
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7
    :goto_c
    nop

    .line 105
    :goto_d
    throw v5
.end method

.method public static parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okserver/download/DownloadInfo;
    .locals 8
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 128
    new-instance v0, Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;-><init>()V

    .line 129
    .local v0, "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setId(I)V

    .line 130
    const-string v1, "taskKey"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTaskKey(Ljava/lang/String;)V

    .line 131
    const-string v1, "url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 132
    const-string v1, "targetFolder"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTargetFolder(Ljava/lang/String;)V

    .line 133
    const-string v1, "targetPath"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTargetPath(Ljava/lang/String;)V

    .line 134
    const-string v1, "fileName"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setFileName(Ljava/lang/String;)V

    .line 135
    const-string v1, "progress"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setProgress(F)V

    .line 136
    const-string v1, "totalLength"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTotalLength(J)V

    .line 137
    const-string v1, "downloadLength"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setDownloadLength(J)V

    .line 138
    const-string v1, "networkSpeed"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 139
    const-string v1, "state"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 143
    .local v2, "ois":Ljava/io/ObjectInputStream;
    const-string v3, "downloadRequest"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 145
    .local v3, "requestData":[B
    if-eqz v3, :cond_4

    .line 146
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v4

    .line 147
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 148
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/maya/open/http/okserver/download/db/DownloadRequest;

    .line 149
    .local v4, "downloadRequest":Lcom/maya/open/http/okserver/download/db/DownloadRequest;
    invoke-virtual {v0, v4}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setDownloadRequest(Lcom/maya/open/http/okserver/download/db/DownloadRequest;)V

    .line 150
    iget-object v5, v4, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->url:Ljava/lang/String;

    iget-object v6, v4, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->method:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->createRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v5

    .line 151
    .local v5, "request":Lcom/maya/open/http/okgo/request/BaseRequest;
    if-eqz v5, :cond_4

    .line 152
    iget-object v6, v4, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    invoke-virtual {v5, v6}, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheMode(Lcom/maya/open/http/okgo/cache/CacheMode;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 153
    iget-wide v6, v4, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->cacheTime:J

    invoke-virtual {v5, v6, v7}, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheTime(J)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 154
    iget-object v6, v4, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->cacheKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheKey(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 155
    iget-object v6, v4, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v5, v6}, Lcom/maya/open/http/okgo/request/BaseRequest;->params(Lcom/maya/open/http/okgo/model/HttpParams;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 156
    iget-object v6, v4, Lcom/maya/open/http/okserver/download/db/DownloadRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v5, v6}, Lcom/maya/open/http/okgo/request/BaseRequest;->headers(Lcom/maya/open/http/okgo/model/HttpHeaders;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 157
    invoke-virtual {v0, v5}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setRequest(Lcom/maya/open/http/okgo/request/BaseRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    .line 163
    .end local v4    # "downloadRequest":Lcom/maya/open/http/okserver/download/db/DownloadRequest;
    .end local v5    # "request":Lcom/maya/open/http/okgo/request/BaseRequest;
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 160
    :catch_0
    move-exception v4

    .line 161
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v4}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_0

    .line 166
    :catch_1
    move-exception v4

    goto :goto_1

    .line 165
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 166
    :goto_1
    nop

    .line 167
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v4}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 169
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 168
    :cond_1
    :goto_2
    goto :goto_9

    .line 163
    :goto_3
    nop

    .line 164
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_4

    .line 166
    :catch_2
    move-exception v5

    goto :goto_5

    .line 165
    :cond_2
    :goto_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 166
    :goto_5
    nop

    .line 167
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 168
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    nop

    .line 169
    :goto_7
    throw v4

    .line 164
    :cond_4
    :goto_8
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 165
    :cond_5
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 171
    :goto_9
    const-string v4, "data"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 173
    .local v4, "data":[B
    if-eqz v4, :cond_a

    .line 174
    :try_start_5
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v5

    .line 175
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v5

    .line 176
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    .line 177
    .local v5, "serializableData":Ljava/io/Serializable;
    invoke-virtual {v0, v5}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setData(Ljava/io/Serializable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_12

    .line 182
    .end local v5    # "serializableData":Ljava/io/Serializable;
    :catchall_1
    move-exception v5

    goto :goto_d

    .line 179
    :catch_3
    move-exception v5

    .line 180
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 183
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_a

    .line 185
    :catch_4
    move-exception v5

    goto :goto_b

    .line 184
    :cond_6
    :goto_a
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_c

    .line 185
    :goto_b
    nop

    .line 186
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 188
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_13

    .line 187
    :cond_7
    :goto_c
    goto :goto_13

    .line 182
    :goto_d
    nop

    .line 183
    if-eqz v2, :cond_8

    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_e

    .line 185
    :catch_5
    move-exception v6

    goto :goto_f

    .line 184
    :cond_8
    :goto_e
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_10

    .line 185
    :goto_f
    nop

    .line 186
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v6}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_11

    .line 187
    .end local v6    # "e":Ljava/io/IOException;
    :cond_9
    :goto_10
    nop

    .line 188
    :goto_11
    throw v5

    .line 183
    :cond_a
    :goto_12
    if-eqz v2, :cond_b

    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 184
    :cond_b
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_c

    .line 189
    :goto_13
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/maya/open/http/okserver/download/DownloadInfo;)I
    .locals 2
    .param p1, "another"    # Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 337
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
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
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 327
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    if-eqz v0, :cond_0

    .line 328
    move-object v0, p1

    check-cast v0, Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 329
    .local v0, "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 331
    .end local v0    # "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    :cond_0
    const/4 v0, 0x0

    return v0
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

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->listener:Lcom/maya/open/http/okserver/listener/DownloadListener;

    .line 314
    return-void
.end method

.method public setData(Ljava/io/Serializable;)V
    .locals 0
    .param p1, "data"    # Ljava/io/Serializable;

    .line 321
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->data:Ljava/io/Serializable;

    .line 322
    return-void
.end method

.method public setDownloadLength(J)V
    .locals 0
    .param p1, "downloadLength"    # J

    .line 261
    iput-wide p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->downloadLength:J

    .line 262
    return-void
.end method

.method public setDownloadRequest(Lcom/maya/open/http/okserver/download/db/DownloadRequest;)V
    .locals 0
    .param p1, "downloadRequest"    # Lcom/maya/open/http/okserver/download/db/DownloadRequest;

    .line 301
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->downloadRequest:Lcom/maya/open/http/okserver/download/db/DownloadRequest;

    .line 302
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 237
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->fileName:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 197
    iput p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->id:I

    .line 198
    return-void
.end method

.method public setListener(Lcom/maya/open/http/okserver/listener/DownloadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/maya/open/http/okserver/listener/DownloadListener;

    .line 309
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->listener:Lcom/maya/open/http/okserver/listener/DownloadListener;

    .line 310
    return-void
.end method

.method public setNetworkSpeed(J)V
    .locals 0
    .param p1, "networkSpeed"    # J

    .line 269
    iput-wide p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->networkSpeed:J

    .line 270
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 245
    iput p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->progress:F

    .line 246
    return-void
.end method

.method public setRequest(Lcom/maya/open/http/okgo/request/BaseRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 285
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->request:Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 286
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 277
    iput p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->state:I

    .line 278
    return-void
.end method

.method public setTargetFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetFolder"    # Ljava/lang/String;

    .line 229
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->targetFolder:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setTargetPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetPath"    # Ljava/lang/String;

    .line 221
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->targetPath:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setTask(Lcom/maya/open/http/okserver/download/DownloadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/maya/open/http/okserver/download/DownloadTask;

    .line 293
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->task:Lcom/maya/open/http/okserver/download/DownloadTask;

    .line 294
    return-void
.end method

.method public setTaskKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->taskKey:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setTotalLength(J)V
    .locals 0
    .param p1, "totalLength"    # J

    .line 253
    iput-wide p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->totalLength:J

    .line 254
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 213
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadInfo;->url:Ljava/lang/String;

    .line 214
    return-void
.end method
