.class public Lcom/maya/open/http/okserver/download/db/DownloadRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5f88b9ccf5278071L


# instance fields
.field public cacheKey:Ljava/lang/String;

.field public cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

.field public cacheTime:J

.field public headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

.field public method:Ljava/lang/String;

.field public params:Lcom/maya/open/http/okgo/model/HttpParams;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1

    const-string v0, "get"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/maya/open/http/okgo/request/GetRequest;

    invoke-direct {p1, p0}, Lcom/maya/open/http/okgo/request/GetRequest;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, "post"

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/maya/open/http/okgo/request/PostRequest;

    invoke-direct {p1, p0}, Lcom/maya/open/http/okgo/request/PostRequest;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string v0, "put"

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/maya/open/http/okgo/request/PutRequest;

    invoke-direct {p1, p0}, Lcom/maya/open/http/okgo/request/PutRequest;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v0, "delete"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/maya/open/http/okgo/request/DeleteRequest;

    invoke-direct {p1, p0}, Lcom/maya/open/http/okgo/request/DeleteRequest;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    const-string v0, "options"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/maya/open/http/okgo/request/OptionsRequest;

    invoke-direct {p1, p0}, Lcom/maya/open/http/okgo/request/OptionsRequest;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    const-string v0, "head"

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/maya/open/http/okgo/request/HeadRequest;

    invoke-direct {p1, p0}, Lcom/maya/open/http/okgo/request/HeadRequest;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMethod(Lcom/maya/open/http/okgo/request/BaseRequest;)Ljava/lang/String;
    .locals 1

    .line 38
    instance-of v0, p0, Lcom/maya/open/http/okgo/request/GetRequest;

    if-eqz v0, :cond_0

    const-string p0, "get"

    return-object p0

    .line 39
    :cond_0
    instance-of v0, p0, Lcom/maya/open/http/okgo/request/PostRequest;

    if-eqz v0, :cond_1

    const-string p0, "post"

    return-object p0

    .line 40
    :cond_1
    instance-of v0, p0, Lcom/maya/open/http/okgo/request/PutRequest;

    if-eqz v0, :cond_2

    const-string p0, "put"

    return-object p0

    .line 41
    :cond_2
    instance-of v0, p0, Lcom/maya/open/http/okgo/request/DeleteRequest;

    if-eqz v0, :cond_3

    const-string p0, "delete"

    return-object p0

    .line 42
    :cond_3
    instance-of v0, p0, Lcom/maya/open/http/okgo/request/OptionsRequest;

    if-eqz v0, :cond_4

    const-string p0, "options"

    return-object p0

    .line 43
    :cond_4
    instance-of p0, p0, Lcom/maya/open/http/okgo/request/HeadRequest;

    if-eqz p0, :cond_5

    const-string p0, "head"

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method
