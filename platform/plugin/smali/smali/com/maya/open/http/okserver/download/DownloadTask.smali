.class public Lcom/maya/open/http/okserver/download/DownloadTask;
.super Lcom/maya/open/http/okserver/task/PriorityAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<",
        "Ljava/lang/Void;",
        "Lcom/maya/open/http/okserver/download/DownloadInfo;",
        "Lcom/maya/open/http/okserver/download/DownloadInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private isPause:Z

.field private isRestartTask:Z

.field private mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

.field private mDownloadUIHandler:Lcom/maya/open/http/okserver/download/DownloadUIHandler;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okserver/download/DownloadInfo;ZLcom/maya/open/http/okserver/listener/DownloadListener;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 45
    iput-boolean p2, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->isRestartTask:Z

    .line 46
    iget-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {p1, p3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setListener(Lcom/maya/open/http/okserver/listener/DownloadListener;)V

    .line 47
    invoke-static {}, Lcom/maya/open/http/okserver/download/DownloadManager;->getInstance()Lcom/maya/open/http/okserver/download/DownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->getHandler()Lcom/maya/open/http/okserver/download/DownloadUIHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadUIHandler:Lcom/maya/open/http/okserver/download/DownloadUIHandler;

    .line 49
    invoke-static {}, Lcom/maya/open/http/okserver/download/DownloadManager;->getInstance()Lcom/maya/open/http/okserver/download/DownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->getThreadPool()Lcom/maya/open/http/okserver/download/DownloadThreadPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadThreadPool;->getExecutor()Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okserver/download/DownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/http/okserver/download/DownloadTask;)Lcom/maya/open/http/okserver/download/DownloadInfo;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/maya/open/http/okserver/download/DownloadTask;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mPreviousTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/maya/open/http/okserver/download/DownloadTask;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v1, 0x2000

    .line 221
    new-array v2, v1, [B

    .line 222
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 226
    :goto_0
    :try_start_0
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    if-eq v6, v0, :cond_1

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadTask;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 227
    invoke-virtual {p2, v2, v4, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v5, v6

    goto :goto_0

    .line 232
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    .line 233
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 234
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v5

    :catchall_0
    move-exception v0

    .line 232
    :try_start_2
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    .line 233
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 234
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    :goto_2
    throw v0

    :cond_2
    :goto_3
    return v0
.end method

.method private postMessage(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 207
    sget-object v0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->INSTANCE:Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->update(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    .line 208
    new-instance v0, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    iput-object v1, v0, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;->downloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 210
    iput-object p1, v0, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;->errorMsg:Ljava/lang/String;

    .line 211
    iput-object p2, v0, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;->e:Ljava/lang/Exception;

    .line 212
    iget-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadUIHandler:Lcom/maya/open/http/okserver/download/DownloadUIHandler;

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 213
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    iget-object p2, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadUIHandler:Lcom/maya/open/http/okserver/download/DownloadUIHandler;

    invoke-virtual {p2, p1}, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/maya/open/http/okserver/download/DownloadInfo;
    .locals 17

    move-object/from16 v7, p0

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/maya/open/http/okserver/download/DownloadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v0

    .line 108
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mPreviousTime:J

    .line 109
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 110
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    const/4 v0, 0x0

    .line 111
    invoke-direct {v7, v0, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 113
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getDownloadLength()J

    move-result-wide v11

    const/4 v13, 0x5

    .line 116
    :try_start_0
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getRequest()Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v1

    const-string v2, "RANGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/maya/open/http/okgo/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->execute()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 124
    invoke-virtual {v14}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_c

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_1

    goto/16 :goto_2

    .line 132
    :cond_1
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 133
    iget-object v2, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    invoke-static {v14, v1}, Lcom/maya/open/http/okgo/utils/HttpUtils;->getNetFileName(Lcom/maya/open/http/okhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setFileName(Ljava/lang/String;)V

    .line 138
    :cond_2
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    new-instance v1, Ljava/io/File;

    iget-object v3, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetFolder()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 141
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTargetPath(Ljava/lang/String;)V

    .line 145
    :cond_4
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v1

    cmp-long v3, v11, v1

    if-lez v3, :cond_5

    .line 146
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 147
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v13}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    const-string v1, "\u65ad\u70b9\u6587\u4ef6\u5f02\u5e38\uff0c\u9700\u8981\u5220\u9664\u540e\u91cd\u65b0\u4e0b\u8f7d"

    .line 148
    invoke-direct {v7, v1, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 149
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v0

    .line 151
    :cond_5
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v1

    cmp-long v3, v11, v1

    const/4 v15, 0x4

    if-nez v3, :cond_6

    cmp-long v1, v11, v8

    if-lez v1, :cond_6

    .line 152
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setProgress(F)V

    .line 153
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 154
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v15}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 155
    invoke-direct {v7, v0, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v0

    .line 159
    :cond_6
    new-instance v5, Ljava/io/File;

    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    :try_start_1
    new-instance v6, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;

    const-string v4, "rw"

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v5

    move-object/from16 v16, v5

    move-object v13, v6

    move-wide v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;-><init>(Lcom/maya/open/http/okserver/download/DownloadTask;Ljava/io/File;Ljava/lang/String;J)V

    .line 163
    invoke-virtual {v13, v11, v12}, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    invoke-virtual {v14}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    .line 173
    iget-object v3, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v3

    cmp-long v5, v3, v8

    if-nez v5, :cond_7

    .line 174
    iget-object v3, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v3, v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTotalLength(J)V

    .line 176
    :cond_7
    invoke-virtual {v14}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 179
    :try_start_2
    invoke-direct {v7, v1, v13}, Lcom/maya/open/http/okserver/download/DownloadTask;->download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/maya/open/http/okserver/download/DownloadTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 190
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 191
    iget-boolean v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->isPause:Z

    if-eqz v1, :cond_8

    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    goto :goto_0

    .line 192
    :cond_8
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 193
    :goto_0
    invoke-direct {v7, v0, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 194
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_a

    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v1

    if-ne v1, v10, :cond_a

    .line 195
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 196
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v15}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 197
    invoke-direct {v7, v0, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 198
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getDownloadLength()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b

    .line 199
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 200
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    const-string v1, "\u672a\u77e5\u539f\u56e0"

    .line 201
    invoke-direct {v7, v1, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 203
    :cond_b
    :goto_1
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 181
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 183
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    const-string v0, "\u6587\u4ef6\u8bfb\u5199\u5f02\u5e38"

    .line 184
    invoke-direct {v7, v0, v1}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 185
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v0

    :catch_1
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 167
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    const-string v1, "\u6ca1\u6709\u627e\u5230\u5df2\u5b58\u5728\u7684\u65ad\u70b9\u6587\u4ef6"

    .line 168
    invoke-direct {v7, v1, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 169
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v0

    :cond_c
    :goto_2
    const/4 v2, 0x5

    .line 126
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 127
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    const-string v1, "\u670d\u52a1\u5668\u6570\u636e\u9519\u8bef"

    .line 128
    invoke-direct {v7, v1, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 129
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v0

    :catch_2
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 120
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    .line 121
    invoke-direct {v7, v1, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 122
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/download/DownloadTask;->doInBackground([Ljava/lang/Void;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/download/DownloadTask;->onPostExecute(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getListener()Lcom/maya/open/http/okserver/listener/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/listener/DownloadListener;->onAdd(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->isRestartTask:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/HttpUtils;->deleteFile(Ljava/lang/String;)Z

    .line 88
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setProgress(F)V

    .line 89
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setDownloadLength(J)V

    .line 90
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTotalLength(J)V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->isRestartTask:Z

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 95
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public pause()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 57
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 60
    :cond_0
    iput-boolean v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->isPause:Z

    :goto_0
    const/4 v0, 0x0

    .line 62
    invoke-super {p0, v0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->cancel(Z)Z

    return-void
.end method

.method public stop()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iput-boolean v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->isPause:Z

    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 70
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 75
    :goto_1
    invoke-super {p0, v1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->cancel(Z)Z

    return-void
.end method
