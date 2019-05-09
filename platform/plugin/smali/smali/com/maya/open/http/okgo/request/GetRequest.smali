.class public Lcom/maya/open/http/okgo/request/GetRequest;
.super Lcom/maya/open/http/okgo/request/BaseRequest;
.source "GetRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maya/open/http/okgo/request/BaseRequest<",
        "Lcom/maya/open/http/okgo/request/GetRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/maya/open/http/okgo/request/BaseRequest;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v0, "GET"

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/GetRequest;->method:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public generateRequest(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request;
    .locals 3
    .param p1, "requestBody"    # Lcom/maya/open/http/okhttp3/RequestBody;

    .line 33
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/GetRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/HttpUtils;->appendHeaders(Lcom/maya/open/http/okgo/model/HttpHeaders;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v0

    .line 34
    .local v0, "requestBuilder":Lcom/maya/open/http/okhttp3/Request$Builder;
    iget-object v1, p0, Lcom/maya/open/http/okgo/request/GetRequest;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/maya/open/http/okgo/request/GetRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    iget-object v2, v2, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Lcom/maya/open/http/okgo/utils/HttpUtils;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/http/okgo/request/GetRequest;->url:Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request$Builder;->get()Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/open/http/okgo/request/GetRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/open/http/okgo/request/GetRequest;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->build()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v1

    return-object v1
.end method

.method public generateRequestBody()Lcom/maya/open/http/okhttp3/RequestBody;
    .locals 1

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
