.class public final Lcom/maya/open/http/okhttp3/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/4 v0, -0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 270
    iput v0, p0, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 271
    iput v0, p0, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public build()Lcom/maya/open/http/okhttp3/CacheControl;
    .locals 1

    .line 352
    new-instance v0, Lcom/maya/open/http/okhttp3/CacheControl;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/CacheControl;-><init>(Lcom/maya/open/http/okhttp3/CacheControl$Builder;)V

    return-object v0
.end method

.method public maxAge(ILjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okhttp3/CacheControl$Builder;
    .locals 5
    .param p1, "maxAge"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 295
    if-ltz p1, :cond_1

    .line 296
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 297
    .local v0, "maxAgeSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    :goto_0
    iput v2, p0, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 300
    return-object p0

    .line 295
    .end local v0    # "maxAgeSecondsLong":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxAge < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okhttp3/CacheControl$Builder;
    .locals 5
    .param p1, "maxStale"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 311
    if-ltz p1, :cond_1

    .line 312
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 313
    .local v0, "maxStaleSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    :goto_0
    iput v2, p0, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 316
    return-object p0

    .line 311
    .end local v0    # "maxStaleSecondsLong":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxStale < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minFresh(ILjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okhttp3/CacheControl$Builder;
    .locals 5
    .param p1, "minFresh"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 328
    if-ltz p1, :cond_1

    .line 329
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 330
    .local v0, "minFreshSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    :goto_0
    iput v2, p0, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->minFreshSeconds:I

    .line 333
    return-object p0

    .line 328
    .end local v0    # "minFreshSecondsLong":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minFresh < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public noCache()Lcom/maya/open/http/okhttp3/CacheControl$Builder;
    .locals 1

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->noCache:Z

    .line 278
    return-object p0
.end method

.method public noStore()Lcom/maya/open/http/okhttp3/CacheControl$Builder;
    .locals 1

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->noStore:Z

    .line 284
    return-object p0
.end method

.method public noTransform()Lcom/maya/open/http/okhttp3/CacheControl$Builder;
    .locals 1

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->noTransform:Z

    .line 348
    return-object p0
.end method

.method public onlyIfCached()Lcom/maya/open/http/okhttp3/CacheControl$Builder;
    .locals 1

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->onlyIfCached:Z

    .line 342
    return-object p0
.end method
