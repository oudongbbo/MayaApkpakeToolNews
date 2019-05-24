.class public interface abstract Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISCARD_STREAM_TIMEOUT_MILLIS:I = 0x64


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract createRequestBody(Lcom/maya/open/http/okhttp3/Request;J)Lcom/maya/open/http/okio/Sink;
.end method

.method public abstract finishRequest()V
.end method

.method public abstract flushRequest()V
.end method

.method public abstract openResponseBody(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/ResponseBody;
.end method

.method public abstract readResponseHeaders(Z)Lcom/maya/open/http/okhttp3/Response$Builder;
.end method

.method public abstract writeRequestHeaders(Lcom/maya/open/http/okhttp3/Request;)V
.end method
