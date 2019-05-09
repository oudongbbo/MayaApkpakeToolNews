.class public Lcom/maya/open/http/okgo/utils/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCacheHeaders(Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okgo/cache/CacheEntity;Lcom/maya/open/http/okgo/cache/CacheMode;)V
    .locals 7
    .param p0, "request"    # Lcom/maya/open/http/okgo/request/BaseRequest;
    .param p2, "cacheMode"    # Lcom/maya/open/http/okgo/cache/CacheMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/maya/open/http/okgo/request/BaseRequest;",
            "Lcom/maya/open/http/okgo/cache/CacheEntity<",
            "TT;>;",
            "Lcom/maya/open/http/okgo/cache/CacheMode;",
            ")V"
        }
    .end annotation

    .line 125
    .local p1, "cacheEntity":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    if-eqz p1, :cond_1

    sget-object v0, Lcom/maya/open/http/okgo/cache/CacheMode;->DEFAULT:Lcom/maya/open/http/okgo/cache/CacheMode;

    if-ne p2, v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;

    move-result-object v0

    .line 127
    .local v0, "responseHeaders":Lcom/maya/open/http/okgo/model/HttpHeaders;
    if-eqz v0, :cond_1

    .line 128
    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "eTag":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "If-None-Match"

    invoke-virtual {p0, v2, v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 130
    :cond_0
    const-string v2, "Last-Modified"

    invoke-virtual {v0, v2}, Lcom/maya/open/http/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/maya/open/http/okgo/model/HttpHeaders;->getLastModified(Ljava/lang/String;)J

    move-result-wide v2

    .line 131
    .local v2, "lastModified":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const-string v4, "If-Modified-Since"

    invoke-static {v2, v3}, Lcom/maya/open/http/okgo/model/HttpHeaders;->formatMillisToGMT(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/maya/open/http/okgo/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 134
    .end local v0    # "responseHeaders":Lcom/maya/open/http/okgo/model/HttpHeaders;
    .end local v1    # "eTag":Ljava/lang/String;
    .end local v2    # "lastModified":J
    :cond_1
    return-void
.end method

.method public static createCacheEntity(Lcom/maya/open/http/okhttp3/Headers;Ljava/lang/Object;Lcom/maya/open/http/okgo/cache/CacheMode;Ljava/lang/String;)Lcom/maya/open/http/okgo/cache/CacheEntity;
    .locals 19
    .param p0, "responseHeaders"    # Lcom/maya/open/http/okhttp3/Headers;
    .param p2, "cacheMode"    # Lcom/maya/open/http/okgo/cache/CacheMode;
    .param p3, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/maya/open/http/okhttp3/Headers;",
            "TT;",
            "Lcom/maya/open/http/okgo/cache/CacheMode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/maya/open/http/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 47
    .local p1, "data":Ljava/lang/Object;, "TT;"
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    .line 49
    .local v2, "localExpire":J
    sget-object v0, Lcom/maya/open/http/okgo/cache/CacheMode;->DEFAULT:Lcom/maya/open/http/okgo/cache/CacheMode;

    move-object/from16 v4, p2

    if-ne v4, v0, :cond_9

    .line 50
    const-string v0, "Date"

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okgo/model/HttpHeaders;->getDate(Ljava/lang/String;)J

    move-result-wide v5

    .line 51
    .local v5, "date":J
    const-string v0, "Expires"

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okgo/model/HttpHeaders;->getExpiration(Ljava/lang/String;)J

    move-result-wide v7

    .line 52
    .local v7, "expires":J
    const-string v0, "Cache-Control"

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "Pragma"

    invoke-virtual {v1, v9}, Lcom/maya/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/maya/open/http/okgo/model/HttpHeaders;->getCacheControl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 55
    .local v9, "cacheControl":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_0

    cmp-long v0, v7, v11

    if-gtz v0, :cond_0

    return-object v10

    .line 57
    :cond_0
    const-wide/16 v13, 0x0

    .line 58
    .local v13, "maxAge":J
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 59
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v15, ","

    invoke-direct {v0, v9, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "tokens":Ljava/util/StringTokenizer;
    :goto_0
    move-object v15, v0

    .line 60
    .end local v0    # "tokens":Ljava/util/StringTokenizer;
    .local v15, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "token":Ljava/lang/String;
    const-string v0, "no-cache"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "no-store"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 65
    :cond_1
    const-string v0, "max-age="

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v13, v17

    .line 70
    cmp-long v0, v13, v11

    if-gtz v0, :cond_2

    const/4 v11, 0x0

    return-object v11

    .line 73
    :cond_2
    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "token":Ljava/lang/String;
    :cond_3
    :goto_1
    nop

    .line 59
    move-object v0, v15

    const/4 v10, 0x0

    goto :goto_0

    .line 64
    .restart local v10    # "token":Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v11, 0x0

    return-object v11

    .line 79
    .end local v10    # "token":Ljava/lang/String;
    .end local v15    # "tokens":Ljava/util/StringTokenizer;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 80
    .local v15, "now":J
    cmp-long v0, v5, v11

    if-lez v0, :cond_6

    move-wide v15, v5

    .line 82
    :cond_6
    cmp-long v0, v13, v11

    if-lez v0, :cond_7

    .line 84
    const-wide/16 v10, 0x3e8

    mul-long v10, v10, v13

    add-long v2, v15, v10

    goto :goto_3

    .line 85
    :cond_7
    cmp-long v0, v7, v11

    if-ltz v0, :cond_8

    .line 87
    move-wide v2, v7

    .line 89
    .end local v5    # "date":J
    .end local v7    # "expires":J
    .end local v9    # "cacheControl":Ljava/lang/String;
    .end local v13    # "maxAge":J
    .end local v15    # "now":J
    :cond_8
    :goto_3
    goto :goto_4

    .line 90
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 94
    :goto_4
    new-instance v0, Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-direct {v0}, Lcom/maya/open/http/okgo/model/HttpHeaders;-><init>()V

    .line 95
    .local v0, "headers":Lcom/maya/open/http/okgo/model/HttpHeaders;
    invoke-virtual/range {p0 .. p0}, Lcom/maya/open/http/okhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 96
    .local v6, "headerName":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/maya/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/maya/open/http/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v6    # "headerName":Ljava/lang/String;
    goto :goto_5

    .line 100
    :cond_a
    new-instance v5, Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-direct {v5}, Lcom/maya/open/http/okgo/cache/CacheEntity;-><init>()V

    .line 101
    .local v5, "cacheEntity":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Lcom/maya/open/http/okgo/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 102
    move-object/from16 v7, p1

    invoke-virtual {v5, v7}, Lcom/maya/open/http/okgo/cache/CacheEntity;->setData(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v5, v2, v3}, Lcom/maya/open/http/okgo/cache/CacheEntity;->setLocalExpire(J)V

    .line 104
    invoke-virtual {v5, v0}, Lcom/maya/open/http/okgo/cache/CacheEntity;->setResponseHeaders(Lcom/maya/open/http/okgo/model/HttpHeaders;)V

    .line 105
    return-object v5
.end method
