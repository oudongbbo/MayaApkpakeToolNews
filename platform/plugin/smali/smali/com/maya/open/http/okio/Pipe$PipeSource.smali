.class final Lcom/maya/open/http/okio/Pipe$PipeSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okio/Pipe;

.field final timeout:Lcom/maya/open/http/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okio/Pipe;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->this$0:Lcom/maya/open/http/okio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance p1, Lcom/maya/open/http/okio/Timeout;

    invoke-direct {p1}, Lcom/maya/open/http/okio/Timeout;-><init>()V

    iput-object p1, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->timeout:Lcom/maya/open/http/okio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v0, v0, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->this$0:Lcom/maya/open/http/okio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/maya/open/http/okio/Pipe;->sourceClosed:Z

    .line 132
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v1, v1, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v0, v0, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-boolean v1, v1, Lcom/maya/open/http/okio/Pipe;->sourceClosed:Z

    if-nez v1, :cond_2

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v1, v1, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 119
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-boolean v1, v1, Lcom/maya/open/http/okio/Pipe;->sinkClosed:Z

    if-eqz v1, :cond_0

    const-wide/16 p1, -0x1

    monitor-exit v0

    return-wide p1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->timeout:Lcom/maya/open/http/okio/Timeout;

    iget-object v2, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v2, v2, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object v1, v1, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide p1

    .line 124
    iget-object p3, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->this$0:Lcom/maya/open/http/okio/Pipe;

    iget-object p3, p3, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit v0

    return-wide p1

    .line 116
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/maya/open/http/okio/Pipe$PipeSource;->timeout:Lcom/maya/open/http/okio/Timeout;

    return-object v0
.end method
