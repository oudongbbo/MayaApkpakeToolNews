.class public final Lcom/maya/open/http/okhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Interceptor;


# instance fields
.field public final client:Lcom/maya/open/http/okhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/OkHttpClient;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/maya/open/http/okhttp3/Interceptor$Chain;)Lcom/maya/open/http/okhttp3/Response;
    .locals 4

    .line 37
    check-cast p1, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;

    .line 38
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 43
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v1, v3, v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->newStream(Lcom/maya/open/http/okhttp3/OkHttpClient;Z)Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    move-result-object v2

    .line 44
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v3

    .line 46
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;->proceed(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;Lcom/maya/open/http/okhttp3/Connection;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method
