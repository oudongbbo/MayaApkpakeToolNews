.class final Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okserver/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProgressRandomAccessFile"
.end annotation


# instance fields
.field private curDownloadLength:J

.field private lastDownloadLength:J

.field private lastRefreshUiTime:J

.field final synthetic this$0:Lcom/maya/open/http/okserver/download/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okserver/download/DownloadTask;Ljava/io/File;Ljava/lang/String;J)V
    .locals 2
    .param p2, "file"    # Ljava/io/File;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "lastDownloadLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    .line 249
    invoke-direct {p0, p2, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastDownloadLength:J

    .line 245
    iput-wide v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->curDownloadLength:J

    .line 250
    iput-wide p4, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastDownloadLength:J

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastRefreshUiTime:J

    .line 252
    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 17
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-super/range {p0 .. p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 259
    iget-wide v2, v0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastDownloadLength:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 260
    .local v2, "downloadLength":J
    iget-wide v4, v0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->curDownloadLength:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->curDownloadLength:J

    .line 261
    iput-wide v2, v0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastDownloadLength:J

    .line 262
    iget-object v4, v0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    # getter for: Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-static {v4}, Lcom/maya/open/http/okserver/download/DownloadTask;->access$000(Lcom/maya/open/http/okserver/download/DownloadTask;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setDownloadLength(J)V

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    # getter for: Lcom/maya/open/http/okserver/download/DownloadTask;->mPreviousTime:J
    invoke-static {v6}, Lcom/maya/open/http/okserver/download/DownloadTask;->access$100(Lcom/maya/open/http/okserver/download/DownloadTask;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 266
    .local v4, "totalTime":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 267
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 269
    :cond_0
    iget-wide v6, v0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->curDownloadLength:J

    div-long/2addr v6, v4

    .line 270
    .local v6, "networkSpeed":J
    iget-object v8, v0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    # getter for: Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-static {v8}, Lcom/maya/open/http/okserver/download/DownloadTask;->access$000(Lcom/maya/open/http/okserver/download/DownloadTask;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 273
    long-to-float v8, v2

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v8, v8, v9

    iget-object v10, v0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    # getter for: Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-static {v10}, Lcom/maya/open/http/okserver/download/DownloadTask;->access$000(Lcom/maya/open/http/okserver/download/DownloadTask;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v10

    long-to-float v10, v10

    div-float/2addr v8, v10

    .line 274
    .local v8, "progress":F
    iget-object v10, v0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    # getter for: Lcom/maya/open/http/okserver/download/DownloadTask;->mDownloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-static {v10}, Lcom/maya/open/http/okserver/download/DownloadTask;->access$000(Lcom/maya/open/http/okserver/download/DownloadTask;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setProgress(F)V

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 278
    .local v10, "curTime":J
    iget-wide v12, v0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastRefreshUiTime:J

    sub-long v12, v10, v12

    sget v14, Lcom/maya/open/http/okgo/OkGo;->REFRESH_TIME:I

    int-to-long v14, v14

    cmp-long v16, v12, v14

    if-gez v16, :cond_1

    cmpl-float v9, v8, v9

    if-nez v9, :cond_2

    .line 279
    :cond_1
    iget-object v9, v0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    const/4 v12, 0x0

    # invokes: Lcom/maya/open/http/okserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v9, v12, v12}, Lcom/maya/open/http/okserver/download/DownloadTask;->access$200(Lcom/maya/open/http/okserver/download/DownloadTask;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastRefreshUiTime:J

    .line 282
    :cond_2
    return-void
.end method
