.class public final Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;,
        Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;,
        Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;,
        Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;,
        Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;,
        Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field final client:Lcom/maya/open/http/okhttp3/OkHttpClient;

.field final sink:Lcom/maya/open/http/okio/BufferedSink;

.field final source:Lcom/maya/open/http/okio/BufferedSource;

.field state:I

.field final streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okio/BufferedSink;)V
    .locals 1
    .param p1, "client"    # Lcom/maya/open/http/okhttp3/OkHttpClient;
    .param p2, "streamAllocation"    # Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
    .param p3, "source"    # Lcom/maya/open/http/okio/BufferedSource;
    .param p4, "sink"    # Lcom/maya/open/http/okio/BufferedSink;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 90
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 91
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    .line 92
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->source:Lcom/maya/open/http/okio/BufferedSource;

    .line 93
    iput-object p4, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 94
    return-void
.end method

.method private getTransferStream(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okio/Source;
    .locals 5
    .param p1, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->hasBody(Lcom/maya/open/http/okhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lcom/maya/open/http/okio/Source;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->newChunkedSource(Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okio/Source;

    move-result-object v0

    return-object v0

    .line 146
    :cond_1
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->contentLength(Lcom/maya/open/http/okhttp3/Response;)J

    move-result-wide v0

    .line 147
    .local v0, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lcom/maya/open/http/okio/Source;

    move-result-object v2

    return-object v2

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->newUnknownLengthSource()Lcom/maya/open/http/okio/Source;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 113
    .local v0, "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->cancel()V

    .line 114
    :cond_0
    return-void
.end method

.method public createRequestBody(Lcom/maya/open/http/okhttp3/Request;J)Lcom/maya/open/http/okio/Sink;
    .locals 3
    .param p1, "request"    # Lcom/maya/open/http/okhttp3/Request;
    .param p2, "contentLength"    # J

    .line 97
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->newChunkedSink()Lcom/maya/open/http/okio/Sink;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {p0, p2, p3}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->newFixedLengthSink(J)Lcom/maya/open/http/okio/Sink;

    move-result-object v0

    return-object v0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method detachTimeout(Lcom/maya/open/http/okio/ForwardingTimeout;)V
    .locals 2
    .param p1, "timeout"    # Lcom/maya/open/http/okio/ForwardingTimeout;

    .line 260
    invoke-virtual {p1}, Lcom/maya/open/http/okio/ForwardingTimeout;->delegate()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    .line 261
    .local v0, "oldDelegate":Lcom/maya/open/http/okio/Timeout;
    sget-object v1, Lcom/maya/open/http/okio/Timeout;->NONE:Lcom/maya/open/http/okio/Timeout;

    invoke-virtual {p1, v1}, Lcom/maya/open/http/okio/ForwardingTimeout;->setDelegate(Lcom/maya/open/http/okio/Timeout;)Lcom/maya/open/http/okio/ForwardingTimeout;

    .line 262
    invoke-virtual {v0}, Lcom/maya/open/http/okio/Timeout;->clearDeadline()Lcom/maya/open/http/okio/Timeout;

    .line 263
    invoke-virtual {v0}, Lcom/maya/open/http/okio/Timeout;->clearTimeout()Lcom/maya/open/http/okio/Timeout;

    .line 264
    return-void
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->flush()V

    .line 168
    return-void
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->flush()V

    .line 164
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .line 159
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newChunkedSink()Lcom/maya/open/http/okio/Sink;
    .locals 3

    .line 223
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    const/4 v0, 0x2

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 225
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSink;-><init>(Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;)V

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newChunkedSource(Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okio/Source;
    .locals 3
    .param p1, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 242
    const/4 v0, 0x5

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 243
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$ChunkedSource;-><init>(Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;Lcom/maya/open/http/okhttp3/HttpUrl;)V

    return-object v0

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newFixedLengthSink(J)Lcom/maya/open/http/okio/Sink;
    .locals 3
    .param p1, "contentLength"    # J

    .line 229
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 230
    const/4 v0, 0x2

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 231
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;

    invoke-direct {v0, p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSink;-><init>(Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;J)V

    return-object v0

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newFixedLengthSource(J)Lcom/maya/open/http/okio/Source;
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 236
    const/4 v0, 0x5

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 237
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;-><init>(Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;J)V

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newUnknownLengthSource()Lcom/maya/open/http/okio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x5

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 250
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 251
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;)V

    return-object v0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openResponseBody(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/ResponseBody;
    .locals 4
    .param p1, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->getTransferStream(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okio/Source;

    move-result-object v0

    .line 134
    .local v0, "source":Lcom/maya/open/http/okio/Source;
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v2

    invoke-static {v0}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;-><init>(Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okio/BufferedSource;)V

    return-object v1
.end method

.method public readHeaders()Lcom/maya/open/http/okhttp3/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    new-instance v0, Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/Headers$Builder;-><init>()V

    .line 216
    .local v0, "headers":Lcom/maya/open/http/okhttp3/Headers$Builder;
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v1}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    sget-object v1, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    invoke-virtual {v1, v0, v2}, Lcom/maya/open/http/okhttp3/internal/Internal;->addLenient(Lcom/maya/open/http/okhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    .end local v2    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Headers$Builder;->build()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v1

    return-object v1
.end method

.method public readResponseHeaders(Z)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 4
    .param p1, "expectContinue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/internal/http/StatusLine;

    move-result-object v0

    .line 192
    .local v0, "statusLine":Lcom/maya/open/http/okhttp3/internal/http/StatusLine;
    new-instance v1, Lcom/maya/open/http/okhttp3/Response$Builder;

    invoke-direct {v1}, Lcom/maya/open/http/okhttp3/Response$Builder;-><init>()V

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    .line 193
    invoke-virtual {v1, v2}, Lcom/maya/open/http/okhttp3/Response$Builder;->protocol(Lcom/maya/open/http/okhttp3/Protocol;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    iget v2, v0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->code:I

    .line 194
    invoke-virtual {v1, v2}, Lcom/maya/open/http/okhttp3/Response$Builder;->code(I)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 195
    invoke-virtual {v1, v2}, Lcom/maya/open/http/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->readHeaders()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okhttp3/Response$Builder;->headers(Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    .line 198
    .local v1, "responseBuilder":Lcom/maya/open/http/okhttp3/Response$Builder;
    if-eqz p1, :cond_2

    iget v2, v0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->code:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    .line 199
    const/4 v2, 0x0

    return-object v2

    .line 202
    :cond_2
    const/4 v2, 0x4

    iput v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    return-object v1

    .line 204
    .end local v0    # "statusLine":Lcom/maya/open/http/okhttp3/internal/http/StatusLine;
    .end local v1    # "responseBuilder":Lcom/maya/open/http/okhttp3/Response$Builder;
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 208
    throw v1
.end method

.method public writeRequest(Lcom/maya/open/http/okhttp3/Headers;Ljava/lang/String;)V
    .locals 4
    .param p1, "headers"    # Lcom/maya/open/http/okhttp3/Headers;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0, p2}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    .line 176
    invoke-interface {v2, v3}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v2

    .line 177
    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v2

    const-string v3, "\r\n"

    .line 178
    invoke-interface {v2, v3}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->sink:Lcom/maya/open/http/okio/BufferedSink;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    .line 181
    const/4 v0, 0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    .line 182
    return-void

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeRequestHeaders(Lcom/maya/open/http/okhttp3/Request;)V
    .locals 2
    .param p1, "request"    # Lcom/maya/open/http/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    .line 128
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route()Lcom/maya/open/http/okhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 127
    invoke-static {p1, v0}, Lcom/maya/open/http/okhttp3/internal/http/RequestLine;->get(Lcom/maya/open/http/okhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "requestLine":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->writeRequest(Lcom/maya/open/http/okhttp3/Headers;Ljava/lang/String;)V

    .line 130
    return-void
.end method
