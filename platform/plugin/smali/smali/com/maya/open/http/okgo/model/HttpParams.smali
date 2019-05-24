.class public Lcom/maya/open/http/okgo/model/HttpParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;
    }
.end annotation


# static fields
.field public static final IS_REPLACE:Z = true

.field public static final MEDIA_TYPE_JSON:Lcom/maya/open/http/okhttp3/MediaType;

.field public static final MEDIA_TYPE_PLAIN:Lcom/maya/open/http/okhttp3/MediaType;

.field public static final MEDIA_TYPE_STREAM:Lcom/maya/open/http/okhttp3/MediaType;

.field private static final serialVersionUID:J = 0x6646db7a7498bbc8L


# instance fields
.field public fileParamsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field public urlParamsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "text/plain;charset=utf-8"

    .line 29
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okgo/model/HttpParams;->MEDIA_TYPE_PLAIN:Lcom/maya/open/http/okhttp3/MediaType;

    const-string v0, "application/json;charset=utf-8"

    .line 30
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lcom/maya/open/http/okhttp3/MediaType;

    const-string v0, "application/octet-stream"

    .line 31
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okgo/model/HttpParams;->MEDIA_TYPE_STREAM:Lcom/maya/open/http/okhttp3/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-direct {p0}, Lcom/maya/open/http/okgo/model/HttpParams;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0}, Lcom/maya/open/http/okgo/model/HttpParams;->init()V

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct {p0}, Lcom/maya/open/http/okgo/model/HttpParams;->init()V

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private guessMimeType(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/MediaType;
    .locals 3

    .line 210
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    const-string v1, "#"

    const-string v2, ""

    .line 211
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-interface {v0, p1}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "application/octet-stream"

    .line 216
    :cond_0
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 132
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 137
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 138
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 206
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public put(Lcom/maya/open/http/okgo/model/HttpParams;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p1, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 63
    :cond_0
    iget-object v0, p1, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public varargs put(Ljava/lang/String;C[Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 115
    array-length v0, p3

    if-lez v0, :cond_0

    .line 116
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-boolean p3, p3, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public varargs put(Ljava/lang/String;D[Z)V
    .locals 1

    if-eqz p4, :cond_0

    .line 107
    array-length v0, p4

    if-lez v0, :cond_0

    .line 108
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aget-boolean p3, p4, p3

    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public varargs put(Ljava/lang/String;F[Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 99
    array-length v0, p3

    if-lez v0, :cond_0

    .line 100
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-boolean p3, p3, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public varargs put(Ljava/lang/String;I[Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 83
    array-length v0, p3

    if-lez v0, :cond_0

    .line 84
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-boolean p3, p3, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public varargs put(Ljava/lang/String;J[Z)V
    .locals 1

    if-eqz p4, :cond_0

    .line 91
    array-length v0, p4

    if-lez v0, :cond_0

    .line 92
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aget-boolean p3, p4, p3

    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 160
    iget-object v0, p2, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->file:Ljava/io/File;

    iget-object v1, p2, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->fileName:Ljava/lang/String;

    iget-object p2, p2, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;->contentType:Lcom/maya/open/http/okhttp3/MediaType;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)V

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 151
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 155
    invoke-direct {p0, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->guessMimeType(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    new-instance p1, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;

    invoke-direct {p1, p2, p3, p4}, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okhttp3/MediaType;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public varargs put(Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 75
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 76
    aget-boolean p3, p3, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public varargs put(Ljava/lang/String;Z[Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 123
    array-length v0, p3

    if-lez v0, :cond_0

    .line 124
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-boolean p3, p3, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public varargs put(Ljava/util/Map;[Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 68
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p2}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public putFileParams(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 176
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putFileWrapperParams(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 184
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;

    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putUrlParams(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 143
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1, v0, v1}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/model/HttpParams;->removeUrl(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/model/HttpParams;->removeFile(Ljava/lang/String;)V

    return-void
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeUrl(Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 250
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
