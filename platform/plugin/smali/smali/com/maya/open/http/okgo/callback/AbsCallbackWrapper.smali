.class public Lcom/maya/open/http/okgo/callback/AbsCallbackWrapper;
.super Lcom/maya/open/http/okgo/callback/AbsCallback;
.source "AbsCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/maya/open/http/okgo/callback/AbsCallback<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    .local p0, "this":Lcom/maya/open/http/okgo/callback/AbsCallbackWrapper;, "Lcom/maya/open/http/okgo/callback/AbsCallbackWrapper<TT;>;"
    invoke-direct {p0}, Lcom/maya/open/http/okgo/callback/AbsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/Response;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    .local p0, "this":Lcom/maya/open/http/okgo/callback/AbsCallbackWrapper;, "Lcom/maya/open/http/okgo/callback/AbsCallbackWrapper<TT;>;"
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->close()V

    .line 21
    return-object p1
.end method

.method public onSuccess(Ljava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 0
    .param p2, "call"    # Lcom/maya/open/http/okhttp3/Call;
    .param p3, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/maya/open/http/okhttp3/Call;",
            "Lcom/maya/open/http/okhttp3/Response;",
            ")V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/maya/open/http/okgo/callback/AbsCallbackWrapper;, "Lcom/maya/open/http/okgo/callback/AbsCallbackWrapper<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method
