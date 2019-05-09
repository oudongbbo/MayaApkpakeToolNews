.class public final Lcom/maya/open/http/okhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Interceptor;


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "forWebSocket"    # Z

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/maya/open/http/okhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    .line 36
    return-void
.end method


# virtual methods
.method public intercept(Lcom/maya/open/http/okhttp3/Interceptor$Chain;)Lcom/maya/open/http/okhttp3/Response;
    .locals 13
    .param p1, "chain"    # Lcom/maya/open/http/okhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;->httpStream()Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    move-result-object v0

    .line 40
    .local v0, "httpCodec":Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;
    move-object v1, p1

    check-cast v1, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    move-result-object v1

    .line 41
    .local v1, "streamAllocation":Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v2

    .line 43
    .local v2, "request":Lcom/maya/open/http/okhttp3/Request;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 44
    .local v3, "sentRequestMillis":J
    invoke-interface {v0, v2}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->writeRequestHeaders(Lcom/maya/open/http/okhttp3/Request;)V

    .line 46
    const/4 v5, 0x0

    .line 47
    .local v5, "responseBuilder":Lcom/maya/open/http/okhttp3/Response$Builder;
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/maya/open/http/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 51
    const-string v6, "100-continue"

    const-string v7, "Expect"

    invoke-virtual {v2, v7}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->flushRequest()V

    .line 53
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v5

    .line 57
    :cond_0
    if-nez v5, :cond_1

    .line 58
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v6

    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    invoke-interface {v0, v2, v6, v7}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->createRequestBody(Lcom/maya/open/http/okhttp3/Request;J)Lcom/maya/open/http/okio/Sink;

    move-result-object v6

    .line 59
    .local v6, "requestBodyOut":Lcom/maya/open/http/okio/Sink;
    invoke-static {v6}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v7

    .line 60
    .local v7, "bufferedRequestBody":Lcom/maya/open/http/okio/BufferedSink;
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/maya/open/http/okhttp3/RequestBody;->writeTo(Lcom/maya/open/http/okio/BufferedSink;)V

    .line 61
    invoke-interface {v7}, Lcom/maya/open/http/okio/BufferedSink;->close()V

    .line 65
    .end local v6    # "requestBodyOut":Lcom/maya/open/http/okio/Sink;
    .end local v7    # "bufferedRequestBody":Lcom/maya/open/http/okio/BufferedSink;
    :cond_1
    invoke-interface {v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->finishRequest()V

    .line 67
    if-nez v5, :cond_2

    .line 68
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v5

    .line 71
    :cond_2
    nop

    .line 72
    invoke-virtual {v5, v2}, Lcom/maya/open/http/okhttp3/Response$Builder;->request(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v6

    .line 73
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->handshake()Lcom/maya/open/http/okhttp3/Handshake;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/maya/open/http/okhttp3/Response$Builder;->handshake(Lcom/maya/open/http/okhttp3/Handshake;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v6

    .line 74
    invoke-virtual {v6, v3, v4}, Lcom/maya/open/http/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v6

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/maya/open/http/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v6

    .line 76
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v6

    .line 78
    .local v6, "response":Lcom/maya/open/http/okhttp3/Response;
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v7

    .line 79
    .local v7, "code":I
    iget-boolean v8, p0, Lcom/maya/open/http/okhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz v8, :cond_3

    const/16 v8, 0x65

    if-ne v7, v8, :cond_3

    .line 81
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v8

    sget-object v9, Lcom/maya/open/http/okhttp3/internal/Util;->EMPTY_RESPONSE:Lcom/maya/open/http/okhttp3/ResponseBody;

    .line 82
    invoke-virtual {v8, v9}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v8

    .line 83
    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v6

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v8

    .line 86
    invoke-interface {v0, v6}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->openResponseBody(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v8

    .line 87
    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v6

    .line 90
    :goto_0
    const-string v8, "close"

    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v9

    const-string v10, "Connection"

    invoke-virtual {v9, v10}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "close"

    const-string v9, "Connection"

    .line 91
    invoke-virtual {v6, v9}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 92
    :cond_4
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 95
    :cond_5
    const/16 v8, 0xcc

    if-eq v7, v8, :cond_6

    const/16 v8, 0xcd

    if-ne v7, v8, :cond_7

    :cond_6
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-gtz v12, :cond_8

    .line 100
    :cond_7
    return-object v6

    .line 96
    :cond_8
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " had non-zero Content-Length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v10

    invoke-virtual {v10}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
