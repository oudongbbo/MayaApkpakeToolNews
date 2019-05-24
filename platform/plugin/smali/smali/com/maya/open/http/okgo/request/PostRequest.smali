.class public Lcom/maya/open/http/okgo/request/PostRequest;
.super Lcom/maya/open/http/okgo/request/BaseBodyRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maya/open/http/okgo/request/BaseBodyRequest<",
        "Lcom/maya/open/http/okgo/request/PostRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;-><init>(Ljava/lang/String;)V

    const-string p1, "POST"

    .line 27
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/PostRequest;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateRequest(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request;
    .locals 4

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/PostRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    const-string v1, "Content-Length"

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/PostRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/HttpUtils;->appendHeaders(Lcom/maya/open/http/okgo/model/HttpHeaders;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/Request$Builder;->post(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/maya/open/http/okgo/request/PostRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/maya/open/http/okgo/request/PostRequest;->tag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request$Builder;->build()Lcom/maya/open/http/okhttp3/Request;

    move-result-object p1

    return-object p1
.end method
