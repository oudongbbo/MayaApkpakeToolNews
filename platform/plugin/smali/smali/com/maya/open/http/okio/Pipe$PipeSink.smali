.class final Lcom/maya/open/http/okio/Pipe$PipeSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSink"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okio/Pipe;

.field final timeout:Lcom/maya/open/http/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okio/Pipe;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance p1, Lcom/maya/open/http/okio/Timeout;

    invoke-direct {p1}, Lcom/maya/open/http/okio/Timeout;-><init>()V

    iput-object p1, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->timeout:Lcom/maya/open/http/okio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v0, v0, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-boolean v1, v1, Lcom/maya/open/http/okio/Pipe;->sinkClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 98
    :try_start_1
    invoke-virtual {p0}, Lcom/maya/open/http/okio/Pipe$PipeSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    iget-object v2, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iput-boolean v1, v2, Lcom/maya/open/http/okio/Pipe;->sinkClosed:Z

    .line 101
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v1, v1, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    .line 100
    iget-object v3, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iput-boolean v1, v3, Lcom/maya/open/http/okio/Pipe;->sinkClosed:Z

    .line 101
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v1, v1, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 102
    throw v2

    :catchall_1
    move-exception v1

    .line 103
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public flush()V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v0, v0, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-boolean v1, v1, Lcom/maya/open/http/okio/Pipe;->sinkClosed:Z

    if-nez v1, :cond_2

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v1, v1, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 88
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-boolean v1, v1, Lcom/maya/open/http/okio/Pipe;->sourceClosed:Z

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->timeout:Lcom/maya/open/http/okio/Timeout;

    iget-object v2, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v2, v2, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_1
    monitor-exit v0

    return-void

    .line 85
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->timeout:Lcom/maya/open/http/okio/Timeout;

    return-object v0
.end method

.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 8

    .line 63
    iget-object v0, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v0, v0, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-boolean v1, v1, Lcom/maya/open/http/okio/Pipe;->sinkClosed:Z

    if-nez v1, :cond_3

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_2

    .line 67
    iget-object v3, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-boolean v3, v3, Lcom/maya/open/http/okio/Pipe;->sourceClosed:Z

    if-nez v3, :cond_1

    .line 69
    iget-object v3, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-wide v3, v3, Lcom/maya/open/http/okio/Pipe;->maxBufferSize:J

    iget-object v5, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v5, v5, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v5}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    .line 71
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->timeout:Lcom/maya/open/http/okio/Timeout;

    iget-object v2, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v2, v2, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 76
    iget-object v3, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v3, v3, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v3, p1, v1, v2}, Lcom/maya/open/http/okio/Buffer;->write(Lcom/maya/open/http/okio/Buffer;J)V

    const/4 v3, 0x0

    sub-long/2addr p2, v1

    .line 78
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSink;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v1, v1, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 67
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "source is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_2
    monitor-exit v0

    return-void

    .line 64
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
