.class public Lcom/maya/open/http/okgo/cookie/store/MemoryCookieStore;
.super Ljava/lang/Object;
.source "MemoryCookieStore.java"

# interfaces
.implements Lcom/maya/open/http/okgo/cookie/store/CookieStore;


# instance fields
.field private final memoryCookies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Cookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized getAllCookie()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Cookie;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    iget-object v1, p0, Lcom/maya/open/http/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 68
    .local v1, "httpUrls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/maya/open/http/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v3    # "url":Ljava/lang/String;
    goto :goto_0

    .line 71
    :cond_0
    monitor-exit p0

    return-object v0

    .line 65
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    .end local v1    # "httpUrls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCookie(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/util/List;
    .locals 3
    .param p1, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    iget-object v1, p0, Lcom/maya/open/http/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 78
    .local v1, "urlCookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    :cond_0
    return-object v0
.end method

.method public declared-synchronized loadCookie(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/util/List;
    .locals 3
    .param p1, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Cookie;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 57
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    if-nez v0, :cond_0

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 59
    iget-object v1, p0, Lcom/maya/open/http/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-object v0

    .line 55
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    .end local p1    # "url":Lcom/maya/open/http/okhttp3/HttpUrl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAllCookie()Z
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeCookie(Lcom/maya/open/http/okhttp3/HttpUrl;)Z
    .locals 2
    .param p1, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .end local p1    # "url":Lcom/maya/open/http/okhttp3/HttpUrl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeCookie(Lcom/maya/open/http/okhttp3/HttpUrl;Lcom/maya/open/http/okhttp3/Cookie;)Z
    .locals 2
    .param p1, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .param p2, "cookie"    # Lcom/maya/open/http/okhttp3/Cookie;

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 85
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 83
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    .end local p1    # "url":Lcom/maya/open/http/okhttp3/HttpUrl;
    .end local p2    # "cookie":Lcom/maya/open/http/okhttp3/Cookie;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveCookie(Lcom/maya/open/http/okhttp3/HttpUrl;Lcom/maya/open/http/okhttp3/Cookie;)V
    .locals 6
    .param p1, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .param p2, "cookie"    # Lcom/maya/open/http/okhttp3/Cookie;

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 44
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v1, "needRemove":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/maya/open/http/okhttp3/Cookie;

    .line 46
    .local v3, "item":Lcom/maya/open/http/okhttp3/Cookie;
    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v3    # "item":Lcom/maya/open/http/okhttp3/Cookie;
    :cond_0
    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 51
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 42
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    .end local v1    # "needRemove":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    .end local p1    # "url":Lcom/maya/open/http/okhttp3/HttpUrl;
    .end local p2    # "cookie":Lcom/maya/open/http/okhttp3/Cookie;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveCookie(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/util/List;)V
    .locals 8
    .param p1, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 29
    .local v0, "oldCookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, "needRemove":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/maya/open/http/okhttp3/Cookie;

    .line 31
    .local v3, "newCookie":Lcom/maya/open/http/okhttp3/Cookie;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/maya/open/http/okhttp3/Cookie;

    .line 32
    .local v5, "oldCookie":Lcom/maya/open/http/okhttp3/Cookie;
    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 33
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .end local v5    # "oldCookie":Lcom/maya/open/http/okhttp3/Cookie;
    :cond_0
    goto :goto_1

    .line 36
    .end local v3    # "newCookie":Lcom/maya/open/http/okhttp3/Cookie;
    :cond_1
    goto :goto_0

    .line 37
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 38
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 27
    .end local v0    # "oldCookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    .end local v1    # "needRemove":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    .end local p1    # "url":Lcom/maya/open/http/okhttp3/HttpUrl;
    .end local p2    # "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
