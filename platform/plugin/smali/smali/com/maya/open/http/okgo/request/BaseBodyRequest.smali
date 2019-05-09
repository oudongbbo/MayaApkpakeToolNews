.class public abstract Lcom/maya/open/http/okgo/request/BaseBodyRequest;
.super Lcom/maya/open/http/okgo/request/BaseRequest;
.source "BaseBodyRequest.java"

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
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 37
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-direct {p0, p1}, Lcom/maya/open/http/okgo/request/BaseRequest;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->isMultipart:Z

    .line 38
    return-void
.end method


# virtual methods
.method public addFileParams(Ljava/lang/String;Ljava/util/List;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpParams;->putFileParams(Ljava/lang/String;Ljava/util/List;)V

    .line 65
    return-object p0
.end method

.method public bridge synthetic addFileParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 27
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->addFileParams(Ljava/lang/String;Ljava/util/List;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    .local p2, "fileWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpParams;->putFileWrapperParams(Ljava/lang/String;Ljava/util/List;)V

    .line 72
    return-object p0
.end method

.method public bridge synthetic addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 27
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public generateRequestBody()Lcom/maya/open/http/okhttp3/RequestBody;
    .locals 2

    .line 147
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
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
    .param p1, "isMultipart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TR;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    iput-boolean p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->isMultipart:Z

    .line 44
    return-object p0
.end method

.method public bridge synthetic isMultipart(Z)Ljava/lang/Object;
    .locals 0

    .line 27
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->isMultipart(Z)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public params(Ljava/lang/String;Ljava/io/File;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TR;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    .line 58
    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
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
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 79
    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "contentType"    # Lcom/maya/open/http/okhttp3/MediaType;
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
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)V

    .line 86
    return-object p0
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 27
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params(Ljava/lang/String;Ljava/io/File;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 27
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 27
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public requestBody(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 0
    .param p1, "requestBody"    # Lcom/maya/open/http/okhttp3/RequestBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/RequestBody;",
            ")TR;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->requestBody:Lcom/maya/open/http/okhttp3/RequestBody;

    .line 51
    return-object p0
.end method

.method public bridge synthetic requestBody(Lcom/maya/open/http/okhttp3/RequestBody;)Ljava/lang/Object;
    .locals 0

    .line 27
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->requestBody(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upBytes([B)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .param p1, "bs"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TR;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->bs:[B

    .line 141
    sget-object v0, Lcom/maya/open/http/okgo/model/HttpParams;->MEDIA_TYPE_STREAM:Lcom/maya/open/http/okhttp3/MediaType;

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    .line 142
    return-object p0
.end method

.method public bridge synthetic upBytes([B)Ljava/lang/Object;
    .locals 0

    .line 27
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->upBytes([B)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upJson(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->content:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/maya/open/http/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lcom/maya/open/http/okhttp3/MediaType;

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    .line 115
    return-object p0
.end method

.method public upJson(Lorg/json/JSONArray;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")TR;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->content:Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/maya/open/http/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lcom/maya/open/http/okhttp3/MediaType;

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    .line 133
    return-object p0
.end method

.method public upJson(Lorg/json/JSONObject;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TR;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->content:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/maya/open/http/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lcom/maya/open/http/okhttp3/MediaType;

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    .line 124
    return-object p0
.end method

.method public bridge synthetic upJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 27
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->upJson(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upJson(Lorg/json/JSONArray;)Ljava/lang/Object;
    .locals 0

    .line 27
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->upJson(Lorg/json/JSONArray;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 27
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->upJson(Lorg/json/JSONObject;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upString(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->content:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/maya/open/http/okgo/model/HttpParams;->MEDIA_TYPE_PLAIN:Lcom/maya/open/http/okhttp3/MediaType;

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    .line 95
    return-object p0
.end method

.method public upString(Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "mediaType"    # Lcom/maya/open/http/okhttp3/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/maya/open/http/okhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->content:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->mediaType:Lcom/maya/open/http/okhttp3/MediaType;

    .line 106
    return-object p0
.end method

.method public bridge synthetic upString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 27
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseBodyRequest;, "Lcom/maya/open/http/okgo/request/BaseBodyRequest<TR;>;"
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->upString(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p1

    return-object p1
.end method
