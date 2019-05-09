.class public Lcom/maya/open/http/okserver/download/DownloadTask;
.super Lcom/maya/open/http/okserver/task/PriorityAsyncTask;
.source "DownloadTask.java"


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
    .locals 2
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;
    .param p2, "isRestart"    # Z
    .param p3, "downloadListener"    # Lcom/maya/open/http/okserver/listener/DownloadListener;

    .line 43
    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 45
    iput-boolean p2, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->isRestartTask:Z

    .line 46
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0, p3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setListener(Lcom/maya/open/http/okserver/listener/DownloadListener;)V

    .line 47
    invoke-static {}, Lcom/maya/open/http/okserver/download/DownloadManager;->getInstance()Lcom/maya/open/http/okserver/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadManager;->getHandler()Lcom/maya/open/http/okserver/download/DownloadUIHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadUIHandler:Lcom/maya/open/http/okserver/download/DownloadUIHandler;

    .line 49
    invoke-static {}, Lcom/maya/open/http/okserver/download/DownloadManager;->getInstance()Lcom/maya/open/http/okserver/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadManager;->getThreadPool()Lcom/maya/open/http/okserver/download/DownloadThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadThreadPool;->getExecutor()Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okserver/download/DownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/http/okserver/download/DownloadTask;)Lcom/maya/open/http/okserver/download/DownloadInfo;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/http/okserver/download/DownloadTask;

    .line 33
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/open/http/okserver/download/DownloadTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/maya/open/http/okserver/download/DownloadTask;

    .line 33
    iget-wide v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mPreviousTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/maya/open/http/okserver/download/DownloadTask;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/open/http/okserver/download/DownloadTask;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    .locals 8
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_3

    .line 221
    :cond_0
    const/16 v1, 0x2000

    new-array v2, v1, [B

    .line 222
    .local v2, "buffer":[B
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 223
    .local v3, "in":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 226
    .local v5, "downloadSize":I
    :goto_0
    :try_start_0
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    move v7, v6

    .local v7, "len":I
    if-eq v6, v0, :cond_1

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/download/DownloadTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 227
    invoke-virtual {p2, v2, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    add-int/2addr v5, v7

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

    .line 237
    goto :goto_1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    move v0, v7

    .line 239
    .end local v7    # "len":I
    .local v0, "len":I
    return v5

    .line 231
    .end local v0    # "len":I
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

    .line 237
    goto :goto_2

    .line 235
    :catch_1
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    throw v0

    .line 219
    .end local v2    # "buffer":[B
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "downloadSize":I
    :cond_2
    :goto_3
    return v0
.end method

.method private postMessage(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 207
    sget-object v0, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->INSTANCE:Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->update(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    .line 208
    new-instance v0, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;-><init>()V

    .line 209
    .local v0, "messageBean":Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    iput-object v1, v0, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;->downloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 210
    iput-object p1, v0, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;->errorMsg:Ljava/lang/String;

    .line 211
    iput-object p2, v0, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;->e:Ljava/lang/Exception;

    .line 212
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadUIHandler:Lcom/maya/open/http/okserver/download/DownloadUIHandler;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 213
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    iget-object v2, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadUIHandler:Lcom/maya/open/http/okserver/download/DownloadUIHandler;

    invoke-virtual {v2, v1}, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/maya/open/http/okserver/download/DownloadInfo;
    .locals 23
    .param p1, "params"    # [Ljava/lang/Void;

    .line 107
    move-object/from16 v7, p0

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

    .line 111
    const/4 v0, 0x0

    invoke-direct {v7, v0, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 113
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getDownloadLength()J

    move-result-wide v1

    move-wide v11, v1

    .line 116
    .local v11, "startPos":J
    const/4 v13, 0x5

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

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v14, v1

    .line 123
    .local v14, "response":Lcom/maya/open/http/okhttp3/Response;
    nop

    .line 122
    nop

    .line 124
    invoke-virtual {v14}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v15

    .line 125
    .local v15, "code":I
    const/16 v1, 0x194

    if-eq v15, v1, :cond_c

    const/16 v1, 0x1f4

    if-lt v15, v1, :cond_1

    goto/16 :goto_3

    .line 132
    :cond_1
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "url":Ljava/lang/String;
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-static {v14, v5}, Lcom/maya/open/http/okgo/utils/HttpUtils;->getNetFileName(Lcom/maya/open/http/okhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    iget-object v2, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v2, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setFileName(Ljava/lang/String;)V

    .line 138
    .end local v1    # "fileName":Ljava/lang/String;
    .local v6, "fileName":Ljava/lang/String;
    :cond_2
    move-object v6, v1

    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    new-instance v1, Ljava/io/File;

    iget-object v2, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetFolder()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "targetFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 141
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v2, "file":Ljava/io/File;
    iget-object v3, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTargetPath(Ljava/lang/String;)V

    .line 145
    .end local v1    # "targetFolder":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
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

    .line 148
    const-string v1, "\u65ad\u70b9\u6587\u4ef6\u5f02\u5e38\uff0c\u9700\u8981\u5220\u9664\u540e\u91cd\u65b0\u4e0b\u8f7d"

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

    const/4 v4, 0x4

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

    invoke-virtual {v1, v4}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 155
    invoke-direct {v7, v0, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v0

    .line 159
    :cond_6
    new-instance v3, Ljava/io/File;

    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v3, "file":Ljava/io/File;
    :try_start_1
    new-instance v16, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;

    const-string v17, "rw"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    const/4 v13, 0x4

    move-object/from16 v4, v17

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .local v17, "url":Ljava/lang/String;
    .local v18, "fileName":Ljava/lang/String;
    move-wide v5, v11

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;-><init>(Lcom/maya/open/http/okserver/download/DownloadTask;Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v1, v16

    .line 163
    .local v1, "randomAccessFile":Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;
    invoke-virtual {v1, v11, v12}, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->seek(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 170
    nop

    .line 169
    nop

    .line 172
    invoke-virtual {v14}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 173
    .local v4, "totalLength":J
    iget-object v2, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v19

    cmp-long v2, v19, v8

    if-nez v2, :cond_7

    .line 174
    iget-object v2, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v2, v4, v5}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTotalLength(J)V

    .line 176
    :cond_7
    invoke-virtual {v14}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    .line 179
    .local v2, "is":Ljava/io/InputStream;
    :try_start_3
    invoke-direct {v7, v2, v1}, Lcom/maya/open/http/okserver/download/DownloadTask;->download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 186
    nop

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/maya/open/http/okserver/download/DownloadTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 190
    iget-object v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v6, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 191
    iget-boolean v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->isPause:Z

    if-eqz v6, :cond_8

    iget-object v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    goto :goto_0

    .line 192
    :cond_8
    iget-object v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 193
    :goto_0
    invoke-direct {v7, v0, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 194
    :cond_9
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v19

    iget-object v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v6}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v21

    cmp-long v6, v19, v21

    if-nez v6, :cond_a

    iget-object v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v6}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v6

    if-ne v6, v10, :cond_a

    .line 195
    iget-object v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v6, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 196
    iget-object v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v6, v13}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 197
    invoke-direct {v7, v0, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 198
    :cond_a
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v19

    iget-object v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v6}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getDownloadLength()J

    move-result-wide v21

    cmp-long v6, v19, v21

    if-eqz v6, :cond_b

    .line 199
    iget-object v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v6, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 200
    iget-object v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 201
    const-string v6, "\u672a\u77e5\u539f\u56e0"

    invoke-direct {v7, v6, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 203
    :cond_b
    :goto_1
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v0

    .line 180
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 181
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    iget-object v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v6, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 183
    iget-object v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 184
    const-string v6, "\u6587\u4ef6\u8bfb\u5199\u5f02\u5e38"

    invoke-direct {v7, v6, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 185
    iget-object v6, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v6

    .line 164
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "randomAccessFile":Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "totalLength":J
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v17    # "url":Ljava/lang/String;
    .end local v18    # "fileName":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    .restart local v6    # "fileName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 165
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "url":Ljava/lang/String;
    .restart local v18    # "fileName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 167
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 168
    const-string v1, "\u6ca1\u6709\u627e\u5230\u5df2\u5b58\u5728\u7684\u65ad\u70b9\u6587\u4ef6"

    invoke-direct {v7, v1, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 169
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v1

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v17    # "url":Ljava/lang/String;
    .end local v18    # "fileName":Ljava/lang/String;
    :cond_c
    :goto_3
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 127
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 128
    const-string v1, "\u670d\u52a1\u5668\u6570\u636e\u9519\u8bef"

    invoke-direct {v7, v1, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 129
    iget-object v0, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v0

    .line 117
    .end local v14    # "response":Lcom/maya/open/http/okhttp3/Response;
    .end local v15    # "code":I
    :catch_3
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v8, v9}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 120
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 121
    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-direct {v7, v1, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 122
    iget-object v1, v7, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    return-object v1
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
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 102
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
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getListener()Lcom/maya/open/http/okserver/listener/DownloadListener;

    move-result-object v0

    .line 83
    .local v0, "listener":Lcom/maya/open/http/okserver/listener/DownloadListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/listener/DownloadListener;->onAdd(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    .line 86
    :cond_0
    iget-boolean v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->isRestartTask:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/http/okgo/utils/HttpUtils;->deleteFile(Ljava/lang/String;)Z

    .line 88
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setProgress(F)V

    .line 89
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v2, v3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setDownloadLength(J)V

    .line 90
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v2, v3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTotalLength(J)V

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->isRestartTask:Z

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v1, v2, v3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 95
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 96
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 97
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

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 60
    :cond_0
    iput-boolean v1, p0, Lcom/maya/open/http/okserver/download/DownloadTask;->isPause:Z

    .line 62
    :goto_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->cancel(Z)Z

    .line 63
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

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 75
    :goto_1
    invoke-super {p0, v1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->cancel(Z)Z

    .line 76
    return-void
.end method
