.class final Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChunkedSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

.field private final timeout:Lcom/maya/open/http/okio/ForwardingTimeout;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;)V
    .locals 1

    .line 313
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance p1, Lcom/maya/open/http/okio/ForwardingTimeout;

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/maya/open/http/okio/ForwardingTimeout;-><init>(Lcom/maya/open/http/okio/Timeout;)V

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lcom/maya/open/http/okio/ForwardingTimeout;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 336
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 337
    :try_start_1
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    .line 338
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/maya/open/http/okio/BufferedSink;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    .line 339
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lcom/maya/open/http/okio/ForwardingTimeout;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->detachTimeout(Lcom/maya/open/http/okio/ForwardingTimeout;)V

    .line 340
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    const/4 v1, 0x3

    iput v1, v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 335
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 331
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 332
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 330
    monitor-exit p0

    throw v0
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Lcom/maya/open/http/okio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 3

    .line 321
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0, p2, p3}, Lcom/maya/open/http/okio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lcom/maya/open/http/okio/BufferedSink;

    .line 325
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/maya/open/http/okio/BufferedSink;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    .line 326
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0, p1, p2, p3}, Lcom/maya/open/http/okio/BufferedSink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 327
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object p1, p1, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/maya/open/http/okio/BufferedSink;

    const-string p2, "\r\n"

    invoke-interface {p1, p2}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    return-void

    .line 321
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
