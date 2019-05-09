.class public abstract Lcom/maya/open/http/okgo/callback/AbsCallback;
.super Ljava/lang/Object;
.source "AbsCallback.java"

# interfaces
.implements Lcom/maya/open/http/okgo/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/maya/open/http/okgo/convert/Converter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    .local p0, "this":Lcom/maya/open/http/okgo/callback/AbsCallback;, "Lcom/maya/open/http/okgo/callback/AbsCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadProgress(JJFJ)V
    .locals 0
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "progress"    # F
    .param p6, "networkSpeed"    # J

    .line 90
    .local p0, "this":Lcom/maya/open/http/okgo/callback/AbsCallback;, "Lcom/maya/open/http/okgo/callback/AbsCallback<TT;>;"
    return-void
.end method

.method public onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/maya/open/http/okgo/callback/AbsCallback;, "Lcom/maya/open/http/okgo/callback/AbsCallback<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    :cond_0
    return-void
.end method

.method public onBefore(Lcom/maya/open/http/okgo/request/BaseRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 44
    .local p0, "this":Lcom/maya/open/http/okgo/callback/AbsCallback;, "Lcom/maya/open/http/okgo/callback/AbsCallback<TT;>;"
    return-void
.end method

.method public onCacheError(Lcom/maya/open/http/okhttp3/Call;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/Call;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 59
    .local p0, "this":Lcom/maya/open/http/okgo/callback/AbsCallback;, "Lcom/maya/open/http/okgo/callback/AbsCallback<TT;>;"
    return-void
.end method

.method public onCacheSuccess(Ljava/lang/Object;Lcom/maya/open/http/okhttp3/Call;)V
    .locals 0
    .param p2, "call"    # Lcom/maya/open/http/okhttp3/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/maya/open/http/okhttp3/Call;",
            ")V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/maya/open/http/okgo/callback/AbsCallback;, "Lcom/maya/open/http/okgo/callback/AbsCallback<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onError(Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/Call;
    .param p2, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 55
    .local p0, "this":Lcom/maya/open/http/okgo/callback/AbsCallback;, "Lcom/maya/open/http/okgo/callback/AbsCallback<TT;>;"
    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/maya/open/http/okhttp3/Call;",
            "Lcom/maya/open/http/okhttp3/Response;",
            ")V"
        }
    .end annotation
.end method

.method public parseError(Lcom/maya/open/http/okhttp3/Call;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/Call;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 63
    .local p0, "this":Lcom/maya/open/http/okgo/callback/AbsCallback;, "Lcom/maya/open/http/okgo/callback/AbsCallback<TT;>;"
    return-void
.end method

.method public upProgress(JJFJ)V
    .locals 0
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "progress"    # F
    .param p6, "networkSpeed"    # J

    .line 79
    .local p0, "this":Lcom/maya/open/http/okgo/callback/AbsCallback;, "Lcom/maya/open/http/okgo/callback/AbsCallback<TT;>;"
    return-void
.end method
