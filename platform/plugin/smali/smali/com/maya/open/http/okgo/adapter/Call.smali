.class public interface abstract Lcom/maya/open/http/okgo/adapter/Call;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract clone()Lcom/maya/open/http/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/maya/open/http/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract execute()Lcom/maya/open/http/okgo/model/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/maya/open/http/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract execute(Lcom/maya/open/http/okgo/callback/AbsCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okgo/callback/AbsCallback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract getBaseRequest()Lcom/maya/open/http/okgo/request/BaseRequest;
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isExecuted()Z
.end method
