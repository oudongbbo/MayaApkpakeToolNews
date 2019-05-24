.class public abstract Lcom/maya/open/http/okgo/request/BaseBodyRequest;
.super Lcom/maya/open/http/okgo/request/BaseRequest;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okgo/request/HasBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/maya/open/http/okgo/request/BaseBodyRequest;",
        ">",
        "Lcom/maya/open/http/okgo/request/BaseRequest<",
        "TR;>;",
        "Lcom/maya/open/http/okgo/request/HasBody<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected bs:[B

.field protected content:Ljava/lang/String;

.field protected isMultipart:Z

.field protected mediaType:Lcom/maya/open/http/okhttp3/MediaType;

.field protected requestBody:Lcom/maya/open/http/okhttp3/RequestBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/maya/open/http/okgo/request/BaseRequest;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->isMultipart:Z

    return-void
.end method


# virtual methods
.method public addFileParams(Ljava/lang/String;Ljava/util/List;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)TR;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpParams;->putFileParams(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic addFileParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->addFileParams(Ljava/lang/String;Ljava/util/List;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;",
            ">;)TR;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpParams;->putFileWrapperParams(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public generateRequestBody()Lcom/maya/open/http/okhttp3/RequestBody;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->requestBody:Lcom/maya/open/http/okhttp3/RequestBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->requestBody:Lcom/maya/open/http/okhttp3/RequestBody;

    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->content:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    iget-object v1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->content:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/open/http/okhttp3/RequestBody;->create(Lcom/maya/open/http/okhttp3/MediaType;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->bs:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    iget-object v1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->bs:[B

    invoke-static {v0, v1}, Lcom/maya/open/http/okhttp3/RequestBody;->create(Lcom/maya/open/http/okhttp3/MediaType;[B)Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    iget-boolean v1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->isMultipart:Z

    invoke-static {v0, v1}, Lcom/maya/open/http/okgo/utils/HttpUtils;->generateMultipartRequestBody(Lcom/maya/open/http/okgo/model/HttpParams;Z)Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public isMultipart(Z)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TR;"
        }
    .end annotation

    .line 43
    iput-boolean p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->isMultipart:Z

    return-object p0
.end method

.method public bridge synthetic isMultipart(Z)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->isMultipart(Z)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public params(Ljava/lang/String;Ljava/io/File;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TR;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/maya/open/http/okhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)V

    return-object p0
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params(Ljava/lang/String;Ljava/io/File;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public requestBody(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/RequestBody;",
            ")TR;"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->requestBody:Lcom/maya/open/http/okhttp3/RequestBody;

    return-object p0
.end method

.method public bridge synthetic requestBody(Lcom/maya/open/http/okhttp3/RequestBody;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->requestBody(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upBytes([B)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TR;"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->bs:[B

    .line 141
    sget-object p1, Lcom/maya/open/http/okgo/model/HttpParams;->MEDIA_TYPE_STREAM:Lcom/maya/open/http/okhttp3/MediaType;

    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    return-object p0
.end method

.method public bridge synthetic upBytes([B)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->upBytes([B)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upJson(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->content:Ljava/lang/String;

    .line 114
    sget-object p1, Lcom/maya/open/http/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lcom/maya/open/http/okhttp3/MediaType;

    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    return-object p0
.end method

.method public upJson(Lorg/json/JSONArray;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")TR;"
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->content:Ljava/lang/String;

    .line 132
    sget-object p1, Lcom/maya/open/http/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lcom/maya/open/http/okhttp3/MediaType;

    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    return-object p0
.end method

.method public upJson(Lorg/json/JSONObject;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TR;"
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->content:Ljava/lang/String;

    .line 123
    sget-object p1, Lcom/maya/open/http/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lcom/maya/open/http/okhttp3/MediaType;

    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    return-object p0
.end method

.method public bridge synthetic upJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->upJson(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upJson(Lorg/json/JSONArray;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->upJson(Lorg/json/JSONArray;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->upJson(Lorg/json/JSONObject;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upString(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->content:Ljava/lang/String;

    .line 94
    sget-object p1, Lcom/maya/open/http/okgo/model/HttpParams;->MEDIA_TYPE_PLAIN:Lcom/maya/open/http/okhttp3/MediaType;

    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    return-object p0
.end method

.method public upString(Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/maya/open/http/okhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->content:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    return-object p0
.end method

.method public bridge synthetic upString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->upString(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method
