.class public final Lcom/maya/open/http/okhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Interceptor;


# instance fields
.field public final client:Lcom/maya/open/http/okhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "client"    # Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 34
    return-void
.end method


# virtual methods
.method public intercept(Lcom/maya/open/http/okhttp3/Interceptor$Chain;)Lcom/maya/open/http/okhttp3/Response;
    .locals 7
    .param p1, "chain"    # Lcom/maya/open/http/okhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    move-object v0, p1

    check-cast v0, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;

    .line 38
    .local v0, "realChain":Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v1

    .line 39
    .local v1, "request":Lcom/maya/open/http/okhttp3/Request;
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    move-result-object v2

    .line 42
    .local v2, "streamAllocation":Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 43
    .local v3, "doExtensiveHealthChecks":Z
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v2, v4, v3}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->newStream(Lcom/maya/open/http/okhttp3/OkHttpClient;Z)Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    move-result-object v4

    .line 44
    .local v4, "httpCodec":Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v5

    .line 46
    .local v5, "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;->proceed(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;Lcom/maya/open/http/okhttp3/Connection;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v6

    return-object v6
.end method
