.class public interface abstract Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract get(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response;
.end method

.method public abstract put(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;
.end method

.method public abstract remove(Lcom/maya/open/http/okhttp3/Request;)V
.end method

.method public abstract trackConditionalCacheHit()V
.end method

.method public abstract trackResponse(Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;)V
.end method

.method public abstract update(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/Response;)V
.end method
