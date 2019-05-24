.class public Lcom/maya/open/http/okgo/request/GetRequest;
.super Lcom/maya/open/http/okgo/request/BaseRequest;
.source "SourceFile"


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
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/maya/open/http/okgo/request/BaseRequest;-><init>(Ljava/lang/String;)V

    const-string p1, "GET"

    .line 23
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/GetRequest;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateRequest(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request;
    .locals 2

    .line 33
    iget-object p1, p0, Lcom/maya/open/http/okgo/request/GetRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-static {p1}, Lcom/maya/open/http/okgo/utils/HttpUtils;->appendHeaders(Lcom/maya/open/http/okgo/model/HttpHeaders;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/GetRequest;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/maya/open/http/okgo/request/GetRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    iget-object v1, v1, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/maya/open/http/okgo/utils/HttpUtils;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/GetRequest;->url:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request$Builder;->get()Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/maya/open/http/okgo/request/GetRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/maya/open/http/okgo/request/GetRequest;->tag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request$Builder;->build()Lcom/maya/open/http/okhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public generateRequestBody()Lcom/maya/open/http/okhttp3/RequestBody;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
