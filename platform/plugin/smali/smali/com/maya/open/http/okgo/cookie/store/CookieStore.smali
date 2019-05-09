.class public interface abstract Lcom/maya/open/http/okgo/cookie/store/CookieStore;
.super Ljava/lang/Object;
.source "CookieStore.java"


# virtual methods
.method public abstract getAllCookie()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Cookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCookie(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/util/List;
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
.end method

.method public abstract loadCookie(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/util/List;
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
.end method

.method public abstract removeAllCookie()Z
.end method

.method public abstract removeCookie(Lcom/maya/open/http/okhttp3/HttpUrl;)Z
.end method

.method public abstract removeCookie(Lcom/maya/open/http/okhttp3/HttpUrl;Lcom/maya/open/http/okhttp3/Cookie;)Z
.end method

.method public abstract saveCookie(Lcom/maya/open/http/okhttp3/HttpUrl;Lcom/maya/open/http/okhttp3/Cookie;)V
.end method

.method public abstract saveCookie(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Cookie;",
            ">;)V"
        }
    .end annotation
.end method
