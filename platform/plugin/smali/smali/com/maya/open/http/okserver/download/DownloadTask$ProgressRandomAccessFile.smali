.class final Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "SourceFile"


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
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    .line 249
    invoke-direct {p0, p2, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    .line 244
    iput-wide p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastDownloadLength:J

    .line 245
    iput-wide p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->curDownloadLength:J

    .line 250
    iput-wide p4, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastDownloadLength:J

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastRefreshUiTime:J

    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 4

    .line 256
    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 259
    iget-wide p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastDownloadLength:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 260
    iget-wide v2, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->curDownloadLength:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->curDownloadLength:J

    .line 261
    iput-wide p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastDownloadLength:J

    .line 262
    iget-object p3, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    invoke-static {p3}, Lcom/maya/open/http/okserver/download/DownloadTask;->access$000(Lcom/maya/open/http/okserver/download/DownloadTask;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setDownloadLength(J)V

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p3, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    invoke-static {p3}, Lcom/maya/open/http/okserver/download/DownloadTask;->access$100(Lcom/maya/open/http/okserver/download/DownloadTask;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 269
    :cond_0
    iget-wide v2, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->curDownloadLength:J

    div-long/2addr v2, v0

    .line 270
    iget-object p3, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    invoke-static {p3}, Lcom/maya/open/http/okserver/download/DownloadTask;->access$000(Lcom/maya/open/http/okserver/download/DownloadTask;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object p3

    invoke-virtual {p3, v2, v3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    .line 273
    iget-object p3, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    invoke-static {p3}, Lcom/maya/open/http/okserver/download/DownloadTask;->access$000(Lcom/maya/open/http/okserver/download/DownloadTask;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v0

    long-to-float p3, v0

    div-float/2addr p1, p3

    .line 274
    iget-object p3, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    invoke-static {p3}, Lcom/maya/open/http/okserver/download/DownloadTask;->access$000(Lcom/maya/open/http/okserver/download/DownloadTask;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setProgress(F)V

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 278
    iget-wide v2, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastRefreshUiTime:J

    sub-long/2addr v0, v2

    sget p3, Lcom/maya/open/http/okgo/OkGo;->REFRESH_TIME:I

    int-to-long v2, p3

    cmp-long p3, v0, v2

    if-gez p3, :cond_1

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/maya/open/http/okserver/download/DownloadTask;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lcom/maya/open/http/okserver/download/DownloadTask;->access$200(Lcom/maya/open/http/okserver/download/DownloadTask;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/maya/open/http/okserver/download/DownloadTask$ProgressRandomAccessFile;->lastRefreshUiTime:J

    :cond_2
    return-void
.end method
