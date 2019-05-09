.class public interface abstract Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;
.super Ljava/lang/Object;
.source "InternalCache.java"


# virtual methods
.method public abstract get(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remove(Lcom/maya/open/http/okhttp3/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract trackConditionalCacheHit()V
.end method

.method public abstract trackResponse(Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;)V
.end method

.method public abstract update(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/Response;)V
.end method
