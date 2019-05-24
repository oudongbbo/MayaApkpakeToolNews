.class public final Lcom/maya/open/http/okhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Interceptor;


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/maya/open/http/okhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    return-void
.end method


# virtual methods
.method public intercept(Lcom/maya/open/http/okhttp3/Interceptor$Chain;)Lcom/maya/open/http/okhttp3/Response;
    .locals 8

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;->httpStream()Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    move-result-object v1

    .line 40
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    .line 41
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object p1

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 44
    invoke-interface {v1, p1}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->writeRequestHeaders(Lcom/maya/open/http/okhttp3/Request;)V

    .line 47
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/maya/open/http/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "100-continue"

    const-string v6, "Expect"

    .line 51
    invoke-virtual {p1, v6}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    invoke-interface {v1}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->flushRequest()V

    const/4 v4, 0x1

    .line 53
    invoke-interface {v1, v4}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v5

    :cond_0
    if-nez v5, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    invoke-interface {v1, p1, v6, v7}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->createRequestBody(Lcom/maya/open/http/okhttp3/Request;J)Lcom/maya/open/http/okio/Sink;

    move-result-object v4

    .line 59
    invoke-static {v4}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v4

    .line 60
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/maya/open/http/okhttp3/RequestBody;->writeTo(Lcom/maya/open/http/okio/BufferedSink;)V

    .line 61
    invoke-interface {v4}, Lcom/maya/open/http/okio/BufferedSink;->close()V

    .line 65
    :cond_1
    invoke-interface {v1}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->finishRequest()V

    if-nez v5, :cond_2

    const/4 v4, 0x0

    .line 68
    invoke-interface {v1, v4}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v5

    .line 72
    :cond_2
    invoke-virtual {v5, p1}, Lcom/maya/open/http/okhttp3/Response$Builder;->request(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->handshake()Lcom/maya/open/http/okhttp3/Handshake;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/maya/open/http/okhttp3/Response$Builder;->handshake(Lcom/maya/open/http/okhttp3/Handshake;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1, v2, v3}, Lcom/maya/open/http/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p1

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/maya/open/http/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v2

    .line 79
    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x65

    if-ne v2, v3, :cond_3

    .line 81
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p1

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/Util;->EMPTY_RESPONSE:Lcom/maya/open/http/okhttp3/ResponseBody;

    .line 82
    invoke-virtual {p1, v1}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object p1

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v3

    .line 86
    invoke-interface {v1, p1}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->openResponseBody(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object p1

    :goto_0
    const-string v1, "close"

    .line 90
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v3

    const-string v4, "Connection"

    invoke-virtual {v3, v4}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "close"

    const-string v3, "Connection"

    .line 91
    invoke-virtual {p1, v3}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    :cond_4
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    :cond_5
    const/16 v0, 0xcc

    if-eq v2, v0, :cond_6

    const/16 v0, 0xcd

    if-ne v2, v0, :cond_7

    .line 95
    :cond_6
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_8

    :cond_7
    return-object p1

    .line 96
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
