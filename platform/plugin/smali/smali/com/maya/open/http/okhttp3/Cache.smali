.class public final Lcom/maya/open/http/okhttp3/Cache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;,
        Lcom/maya/open/http/okhttp3/Cache$Entry;,
        Lcom/maya/open/http/okhttp3/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field final cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field writeAbortCount:I

.field writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1

    .line 179
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->SYSTEM:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/maya/open/http/okhttp3/Cache;-><init>(Ljava/io/File;JLcom/maya/open/http/okhttp3/internal/io/FileSystem;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;JLcom/maya/open/http/okhttp3/internal/io/FileSystem;)V
    .locals 7

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lcom/maya/open/http/okhttp3/Cache$1;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/Cache$1;-><init>(Lcom/maya/open/http/okhttp3/Cache;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->internalCache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    const v3, 0x31191

    const/4 v4, 0x2

    move-object v1, p4

    move-object v2, p1

    move-wide v5, p2

    .line 183
    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->create(Lcom/maya/open/http/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    return-void
.end method

.method private abortQuietly(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 281
    :try_start_0
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static key(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/lang/String;
    .locals 0

    .line 187
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/maya/open/http/okio/ByteString;->md5()Lcom/maya/open/http/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/maya/open/http/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static readInt(Lcom/maya/open/http/okio/BufferedSource;)I
    .locals 5

    .line 726
    :try_start_0
    invoke-interface {p0}, Lcom/maya/open/http/okio/BufferedSource;->readDecimalLong()J

    move-result-wide v0

    .line 727
    invoke-interface {p0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 728
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    long-to-int p0, v0

    return p0

    .line 729
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 733
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->close()V

    return-void
.end method

.method public delete()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->delete()V

    return-void
.end method

.method public directory()Ljava/io/File;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public evictAll()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->evictAll()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->flush()V

    return-void
.end method

.method get(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response;
    .locals 4

    .line 191
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/Cache;->key(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2, v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    return-object v1

    .line 205
    :cond_0
    :try_start_1
    new-instance v2, Lcom/maya/open/http/okhttp3/Cache$Entry;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lcom/maya/open/http/okio/Source;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/maya/open/http/okhttp3/Cache$Entry;-><init>(Lcom/maya/open/http/okio/Source;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    invoke-virtual {v2, v0}, Lcom/maya/open/http/okhttp3/Cache$Entry;->response(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v0

    .line 213
    invoke-virtual {v2, p1, v0}, Lcom/maya/open/http/okhttp3/Cache$Entry;->matches(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/Response;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 214
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_1
    return-object v0

    .line 207
    :catch_0
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catch_1
    return-object v1
.end method

.method public declared-synchronized hitCount()I
    .locals 1

    monitor-enter p0

    .line 423
    :try_start_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialize()V

    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public maxSize()J
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized networkCount()I
    .locals 1

    monitor-enter p0

    .line 419
    :try_start_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method put(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;
    .locals 3

    .line 222
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 226
    :try_start_0
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okhttp3/Cache;->remove(Lcom/maya/open/http/okhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2

    :cond_0
    const-string v1, "GET"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 239
    :cond_1
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->hasVaryAll(Lcom/maya/open/http/okhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 243
    :cond_2
    new-instance v0, Lcom/maya/open/http/okhttp3/Cache$Entry;

    invoke-direct {v0, p1}, Lcom/maya/open/http/okhttp3/Cache$Entry;-><init>(Lcom/maya/open/http/okhttp3/Response;)V

    .line 246
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lcom/maya/open/http/okhttp3/Cache;->key(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_3

    return-object v2

    .line 250
    :cond_3
    :try_start_2
    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/Cache$Entry;->writeTo(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 251
    new-instance v0, Lcom/maya/open/http/okhttp3/Cache$CacheRequestImpl;

    invoke-direct {v0, p0, p1}, Lcom/maya/open/http/okhttp3/Cache$CacheRequestImpl;-><init>(Lcom/maya/open/http/okhttp3/Cache;Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_1
    move-object p1, v2

    .line 253
    :catch_2
    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/Cache;->abortQuietly(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V

    return-object v2
.end method

.method remove(Lcom/maya/open/http/okhttp3/Request;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lcom/maya/open/http/okhttp3/Cache;->key(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    return-void
.end method

.method public declared-synchronized requestCount()I
    .locals 1

    monitor-enter p0

    .line 427
    :try_start_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/Cache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()J
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized trackConditionalCacheHit()V
    .locals 1

    monitor-enter p0

    .line 415
    :try_start_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 414
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized trackResponse(Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;)V
    .locals 1

    monitor-enter p0

    .line 403
    :try_start_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/Cache;->requestCount:I

    .line 405
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lcom/maya/open/http/okhttp3/Request;

    if-eqz v0, :cond_0

    .line 407
    iget p1, p0, Lcom/maya/open/http/okhttp3/Cache;->networkCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/maya/open/http/okhttp3/Cache;->networkCount:I

    goto :goto_0

    .line 408
    :cond_0
    iget-object p1, p1, Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lcom/maya/open/http/okhttp3/Response;

    if-eqz p1, :cond_1

    .line 410
    iget p1, p0, Lcom/maya/open/http/okhttp3/Cache;->hitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/maya/open/http/okhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 402
    monitor-exit p0

    throw p1
.end method

.method update(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 1

    .line 263
    new-instance v0, Lcom/maya/open/http/okhttp3/Cache$Entry;

    invoke-direct {v0, p2}, Lcom/maya/open/http/okhttp3/Cache$Entry;-><init>(Lcom/maya/open/http/okhttp3/Response;)V

    .line 264
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object p1

    check-cast p1, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;

    iget-object p1, p1, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;->snapshot:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 267
    :try_start_0
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;->edit()Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 269
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/Cache$Entry;->writeTo(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 270
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 273
    :catch_1
    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/Cache;->abortQuietly(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public urls()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Lcom/maya/open/http/okhttp3/Cache$2;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/Cache$2;-><init>(Lcom/maya/open/http/okhttp3/Cache;)V

    return-object v0
.end method

.method public declared-synchronized writeAbortCount()I
    .locals 1

    monitor-enter p0

    .line 371
    :try_start_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/Cache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeSuccessCount()I
    .locals 1

    monitor-enter p0

    .line 375
    :try_start_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/Cache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
