.class public Lcom/maya/open/http/okhttp3/Request$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lcom/maya/open/http/okhttp3/RequestBody;

.field headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

.field method:Ljava/lang/String;

.field tag:Ljava/lang/Object;

.field url:Lcom/maya/open/http/okhttp3/HttpUrl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 108
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okhttp3/Request;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Request;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    .line 114
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Request;->method:Ljava/lang/String;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Request;->body:Lcom/maya/open/http/okhttp3/RequestBody;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->body:Lcom/maya/open/http/okhttp3/RequestBody;

    .line 116
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Request;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->tag:Ljava/lang/Object;

    .line 117
    iget-object p1, p1, Lcom/maya/open/http/okhttp3/Request;->headers:Lcom/maya/open/http/okhttp3/Headers;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Headers;->newBuilder()Lcom/maya/open/http/okhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public build()Lcom/maya/open/http/okhttp3/Request;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Lcom/maya/open/http/okhttp3/Request;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/Request;-><init>(Lcom/maya/open/http/okhttp3/Request$Builder;)V

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheControl(Lcom/maya/open/http/okhttp3/CacheControl;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 1

    .line 198
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/CacheControl;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Cache-Control"

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Cache-Control"

    .line 200
    invoke-virtual {p0, v0, p1}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public delete()Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 1

    .line 220
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->EMPTY_REQUEST:Lcom/maya/open/http/okhttp3/RequestBody;

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/Request$Builder;->delete(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 1

    const-string v0, "DELETE"

    .line 216
    invoke-virtual {p0, v0, p1}, Lcom/maya/open/http/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public get()Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 2

    const-string v0, "HEAD"

    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public headers(Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 0

    .line 188
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Headers;->newBuilder()Lcom/maya/open/http/okhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public method(Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 2

    if-eqz p1, :cond_5

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_1

    .line 234
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 237
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 238
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 240
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 241
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->body:Lcom/maya/open/http/okhttp3/RequestBody;

    return-object p0

    .line 233
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patch(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 1

    const-string v0, "PATCH"

    .line 228
    invoke-virtual {p0, v0, p1}, Lcom/maya/open/http/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public post(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 1

    const-string v0, "POST"

    .line 212
    invoke-virtual {p0, v0, p1}, Lcom/maya/open/http/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 1

    const-string v0, "PUT"

    .line 224
    invoke-virtual {p0, v0, p1}, Lcom/maya/open/http/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public url(Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 122
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Request$Builder;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    return-object p0

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public url(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 6

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ws:"

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p1

    .line 136
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "wss:"

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p1

    .line 138
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/Request$Builder;->url(Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1

    .line 143
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public url(Ljava/net/URL;)Lcom/maya/open/http/okhttp3/Request$Builder;
    .locals 3

    if-eqz p1, :cond_1

    .line 155
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->get(Ljava/net/URL;)Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/Request$Builder;->url(Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
