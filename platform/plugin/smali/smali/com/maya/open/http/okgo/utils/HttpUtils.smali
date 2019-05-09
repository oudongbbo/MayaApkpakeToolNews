.class public Lcom/maya/open/http/okgo/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendHeaders(Lcom/maya/open/http/okgo/model/HttpHeaders;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 6
    .param p0, "headers"    # Lcom/maya/open/http/okgo/model/HttpHeaders;

    .line 57
    new-instance v0, Lcom/maya/open/http/okhttp3/Request$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/Request$Builder;-><init>()V

    .line 58
    .local v0, "requestBuilder":Lcom/maya/open/http/okhttp3/Request$Builder;
    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 59
    :cond_0
    new-instance v1, Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-direct {v1}, Lcom/maya/open/http/okhttp3/Headers$Builder;-><init>()V

    .line 61
    .local v1, "headerBuilder":Lcom/maya/open/http/okhttp3/Headers$Builder;
    :try_start_0
    iget-object v2, p0, Lcom/maya/open/http/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 64
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/maya/open/http/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 68
    :cond_1
    goto :goto_1

    .line 66
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 69
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Headers$Builder;->build()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/maya/open/http/okhttp3/Request$Builder;->headers(Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 70
    return-object v0
.end method

.method public static createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 35
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_1

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 40
    .local v2, "urlParams":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 41
    .local v3, "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 43
    .local v5, "value":Ljava/lang/String;
    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, "urlValue":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "urlValue":Ljava/lang/String;
    goto :goto_3

    .line 46
    .end local v2    # "urlParams":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    goto :goto_2

    .line 47
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 49
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 52
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    return-object p0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 147
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 149
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 151
    .local v1, "delete":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/String;)V

    .line 152
    return v1

    .line 154
    .end local v1    # "delete":Z
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static generateMultipartRequestBody(Lcom/maya/open/http/okgo/model/HttpParams;Z)Lcom/maya/open/http/okhttp3/RequestBody;
    .locals 9
    .param p0, "params"    # Lcom/maya/open/http/okgo/model/HttpParams;
    .param p1, "isMultipart"    # Z

    .line 75
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 77
    new-instance v0, Lcom/maya/open/http/okhttp3/FormBody$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/FormBody$Builder;-><init>()V

    .line 78
    .local v0, "bodyBuilder":Lcom/maya/open/http/okhttp3/FormBody$Builder;
    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 80
    .local v3, "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 81
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v2, v5}, Lcom/maya/open/http/okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/FormBody$Builder;

    .line 82
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_1

    .line 83
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/FormBody$Builder;->build()Lcom/maya/open/http/okhttp3/FormBody;

    move-result-object v1

    return-object v1

    .line 87
    .end local v0    # "bodyBuilder":Lcom/maya/open/http/okhttp3/FormBody$Builder;
    :cond_2
    new-instance v0, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;-><init>()V

    sget-object v1, Lcom/maya/open/http/okhttp3/MultipartBody;->FORM:Lcom/maya/open/http/okhttp3/MediaType;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->setType(Lcom/maya/open/http/okhttp3/MediaType;)Lcom/maya/open/http/okhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 89
    .local v0, "multipartBodybuilder":Lcom/maya/open/http/okhttp3/MultipartBody$Builder;
    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 90
    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 91
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 92
    .restart local v3    # "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 93
    .restart local v5    # "value":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/MultipartBody$Builder;

    .line 94
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_3

    .line 95
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "urlValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    goto :goto_2

    .line 98
    :cond_4
    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 99
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 100
    .local v3, "fileValues":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;

    .line 101
    .local v5, "fileWrapper":Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;
    iget-object v6, v5, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->contentType:Lcom/maya/open/http/okhttp3/MediaType;

    iget-object v7, v5, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->file:Ljava/io/File;

    invoke-static {v6, v7}, Lcom/maya/open/http/okhttp3/RequestBody;->create(Lcom/maya/open/http/okhttp3/MediaType;Ljava/io/File;)Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v6

    .line 102
    .local v6, "fileBody":Lcom/maya/open/http/okhttp3/RequestBody;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v5, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v6}, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/MultipartBody$Builder;

    .line 103
    .end local v5    # "fileWrapper":Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;
    .end local v6    # "fileBody":Lcom/maya/open/http/okhttp3/RequestBody;
    goto :goto_5

    .line 104
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;>;>;"
    .end local v3    # "fileValues":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;>;"
    :cond_5
    goto :goto_4

    .line 105
    :cond_6
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/MultipartBody$Builder;->build()Lcom/maya/open/http/okhttp3/MultipartBody;

    move-result-object v1

    return-object v1
.end method

.method private static getHeaderFileName(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/String;
    .locals 6
    .param p0, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 119
    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "dispositionHeader":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 121
    const-string v1, "filename="

    .line 122
    .local v1, "split":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 123
    .local v2, "indexOf":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "fileName":Ljava/lang/String;
    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    return-object v3

    .line 129
    .end local v1    # "split":Ljava/lang/String;
    .end local v2    # "indexOf":I
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getNetFileName(Lcom/maya/open/http/okhttp3/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .param p1, "url"    # Ljava/lang/String;

    .line 111
    invoke-static {p0}, Lcom/maya/open/http/okgo/utils/HttpUtils;->getHeaderFileName(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/maya/open/http/okgo/utils/HttpUtils;->getUrlFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "nofilename"

    .line 114
    :cond_1
    return-object v0
.end method

.method private static getUrlFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 134
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 136
    .local v0, "index":I
    const/16 v1, 0x2f

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 137
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "filename":Ljava/lang/String;
    :goto_0
    return-object v1
.end method
