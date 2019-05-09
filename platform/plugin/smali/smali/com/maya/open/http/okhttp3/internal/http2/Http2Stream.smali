.class public final Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;,
        Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;,
        Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field final connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

.field errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

.field private hasResponseHeaders:Z

.field final id:I

.field final readTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field final sink:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

.field private final source:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;

.field unacknowledgedBytesRead:J

.field final writeTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 33
    return-void
.end method

.method constructor <init>(ILcom/maya/open/http/okhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "connection"    # Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p5, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 66
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->readTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 67
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 78
    if-eqz p2, :cond_1

    .line 79
    if-eqz p5, :cond_0

    .line 80
    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->id:I

    .line 81
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    .line 82
    iget-object v0, p2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->peerSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    .line 83
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 84
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-object v1, p2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, p0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;J)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->source:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;

    .line 85
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->sink:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

    .line 86
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->source:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;

    iput-boolean p4, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 87
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->sink:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

    iput-boolean p3, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    .line 88
    iput-object p5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->requestHeaders:Ljava/util/List;

    .line 89
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeInternal(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)Z
    .locals 2
    .param p1, "errorCode"    # Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 243
    nop

    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 246
    monitor-exit p0

    return v1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->source:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->sink:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz v0, :cond_1

    .line 249
    monitor-exit p0

    return v1

    .line 251
    :cond_1
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 253
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->removeStream(I)Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    .line 255
    const/4 v0, 0x1

    return v0

    .line 253
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3
    .param p1, "delta"    # J

    .line 558
    iget-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 559
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 560
    :cond_0
    return-void
.end method

.method cancelStreamIfNecessary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    nop

    .line 446
    monitor-enter p0

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->source:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->source:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->sink:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->sink:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 448
    .local v0, "cancel":Z
    :goto_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v1

    .line 449
    .local v1, "open":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    if-eqz v0, :cond_2

    .line 455
    sget-object v2, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->close(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    goto :goto_1

    .line 456
    :cond_2
    if-nez v1, :cond_3

    .line 457
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v2, v3}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->removeStream(I)Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    .line 459
    :cond_3
    :goto_1
    return-void

    .line 449
    .end local v0    # "cancel":Z
    .end local v1    # "open":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method checkOutNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->sink:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-nez v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->sink:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 570
    return-void

    .line 568
    :cond_0
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    throw v0

    .line 566
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 2
    .param p1, "rstStatusCode"    # Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->closeInternal(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writeSynReset(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    .line 228
    return-void
.end method

.method public closeLater(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 235
    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->closeInternal(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    .line 239
    return-void
.end method

.method public getConnection()Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    .locals 1

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->id:I

    return v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->requestHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getSink()Lcom/maya/open/http/okio/Sink;
    .locals 2

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->sink:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSource()Lcom/maya/open/http/okio/Source;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->source:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .locals 4

    .line 120
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 121
    .local v0, "streamIsClient":Z
    :goto_0
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-boolean v3, v3, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->client:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    monitor-exit p0

    return v1

    .line 110
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->source:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->source:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->sink:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->sink:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 113
    monitor-exit p0

    return v1

    .line 115
    :cond_3
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->readTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Lcom/maya/open/http/okio/BufferedSource;I)V
    .locals 3
    .param p1, "in"    # Lcom/maya/open/http/okio/BufferedSource;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    nop

    .line 282
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->source:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->receive(Lcom/maya/open/http/okio/BufferedSource;J)V

    .line 283
    return-void
.end method

.method receiveFin()V
    .locals 3

    .line 286
    nop

    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->source:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 290
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    .line 291
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 292
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    if-nez v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->removeStream(I)Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    .line 296
    :cond_0
    return-void

    .line 292
    .end local v0    # "open":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method receiveHeaders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 259
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    nop

    .line 260
    const/4 v0, 0x1

    .line 261
    .local v0, "open":Z
    monitor-enter p0

    .line 262
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    .line 263
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 264
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    .line 265
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v1

    move v0, v1

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 268
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v1, "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    .line 274
    .end local v1    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    if-nez v0, :cond_1

    .line 276
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->removeStream(I)Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    .line 278
    :cond_1
    return-void

    .line 274
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method declared-synchronized receiveRstStream(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    monitor-enter p0

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 300
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_0
    monitor-exit p0

    return-void

    .line 298
    .end local p1    # "errorCode":Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendResponseHeaders(Ljava/util/List;Z)V
    .locals 3
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    nop

    .line 173
    if-eqz p1, :cond_2

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "outFinished":Z
    monitor-enter p0

    .line 178
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    .line 179
    if-nez p2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->sink:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

    iput-boolean v1, v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    .line 181
    const/4 v0, 0x1

    .line 183
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v1, v2, v0, p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writeSynReply(IZLjava/util/List;)V

    .line 186
    if-eqz v0, :cond_1

    .line 187
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->flush()V

    .line 189
    :cond_1
    return-void

    .line 183
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 174
    .end local v0    # "outFinished":Z
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "responseHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized takeResponseHeaders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->readTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->readTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 148
    nop

    .line 149
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;

    .line 150
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    if-eqz v0, :cond_1

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->responseHeaders:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    monitor-exit p0

    return-object v0

    .line 154
    :cond_1
    :try_start_3
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-direct {v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    throw v1

    .line 147
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->readTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 148
    throw v0

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "servers cannot read response headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method waitForIo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 578
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    nop

    .line 582
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
.end method

.method public writeTimeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
