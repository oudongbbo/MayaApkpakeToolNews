.class final Lcom/maya/open/http/okhttp3/CookieJar$1;
.super Ljava/lang/Object;
.source "CookieJar.java"

# interfaces
.implements Lcom/maya/open/http/okhttp3/CookieJar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/CookieJar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadForRequest(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/util/List;
    .locals 1
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

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public saveFromResponse(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/util/List;)V
    .locals 0
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

    .line 42
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    return-void
.end method
