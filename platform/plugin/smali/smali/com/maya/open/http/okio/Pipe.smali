.class public final Lcom/maya/open/http/okio/Pipe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okio/Pipe$PipeSource;,
        Lcom/maya/open/http/okio/Pipe$PipeSink;
    }
.end annotation


# instance fields
.field final buffer:Lcom/maya/open/http/okio/Buffer;

.field final maxBufferSize:J

.field private final sink:Lcom/maya/open/http/okio/Sink;

.field sinkClosed:Z

.field private final source:Lcom/maya/open/http/okio/Source;

.field sourceClosed:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okio/Pipe;->buffer:Lcom/maya/open/http/okio/Buffer;

    .line 41
    new-instance v0, Lcom/maya/open/http/okio/Pipe$PipeSink;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okio/Pipe$PipeSink;-><init>(Lcom/maya/open/http/okio/Pipe;)V

    iput-object v0, p0, Lcom/maya/open/http/okio/Pipe;->sink:Lcom/maya/open/http/okio/Sink;

    .line 42
    new-instance v0, Lcom/maya/open/http/okio/Pipe$PipeSource;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okio/Pipe$PipeSource;-><init>(Lcom/maya/open/http/okio/Pipe;)V

    iput-object v0, p0, Lcom/maya/open/http/okio/Pipe;->source:Lcom/maya/open/http/okio/Source;

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 48
    iput-wide p1, p0, Lcom/maya/open/http/okio/Pipe;->maxBufferSize:J

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public sink()Lcom/maya/open/http/okio/Sink;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/maya/open/http/okio/Pipe;->sink:Lcom/maya/open/http/okio/Sink;

    return-object v0
.end method

.method public source()Lcom/maya/open/http/okio/Source;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/maya/open/http/okio/Pipe;->source:Lcom/maya/open/http/okio/Source;

    return-object v0
.end method
