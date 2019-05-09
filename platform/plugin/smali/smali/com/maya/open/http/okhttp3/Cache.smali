.class public final Lcom/maya/open/http/okhttp3/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

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
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .line 179
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/io/FileSystem;->SYSTEM:Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/maya/open/http/okhttp3/Cache;-><init>(Ljava/io/File;JLcom/maya/open/http/okhttp3/internal/io/FileSystem;)V

    .line 180
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLcom/maya/open/http/okhttp3/internal/io/FileSystem;)V
    .locals 7
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .param p4, "fileSystem"    # Lcom/maya/open/http/okhttp3/internal/io/FileSystem;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lcom/maya/open/http/okhttp3/Cache$1;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/Cache$1;-><init>(Lcom/maya/open/http/okhttp3/Cache;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->internalCache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    .line 183
    const v3, 0x31191

    const/4 v4, 0x2

    move-object v1, p4

    move-object v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->create(Lcom/maya/open/http/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    .line 184
    return-void
.end method

.method private abortQuietly(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 1
    .param p1, "editor"    # Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    .line 280
    if-eqz p1, :cond_0

    .line 281
    :try_start_0
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    goto :goto_1

    .line 284
    :cond_0
    :goto_0
    nop

    .line 285
    :goto_1
    return-void
.end method

.method public static key(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;

    .line 187
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->md5()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static readInt(Lcom/maya/open/http/okio/BufferedSource;)I
    .locals 6
    .param p0, "source"    # Lcom/maya/open/http/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    :try_start_0
    invoke-interface {p0}, Lcom/maya/open/http/okio/BufferedSource;->readDecimalLong()J

    move-result-wide v0

    .line 727
    .local v0, "result":J
    invoke-interface {p0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, "line":Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 731
    long-to-int v3, v0

    return v3

    .line 729
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected an int but was \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    .end local v0    # "result":J
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->close()V

    .line 392
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->delete()V

    .line 308
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->evictAll()V

    .line 316
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->flush()V

    .line 388
    return-void
.end method

.method get(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response;
    .locals 6
    .param p1, "request"    # Lcom/maya/open/http/okhttp3/Request;

    .line 191
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/Cache;->key(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2, v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    .local v2, "snapshot":Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;
    if-nez v2, :cond_0

    .line 197
    return-object v1

    .line 202
    :cond_0
    nop

    .line 201
    nop

    .line 205
    :try_start_1
    new-instance v3, Lcom/maya/open/http/okhttp3/Cache$Entry;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lcom/maya/open/http/okio/Source;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/maya/open/http/okhttp3/Cache$Entry;-><init>(Lcom/maya/open/http/okio/Source;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    .local v3, "entry":Lcom/maya/open/http/okhttp3/Cache$Entry;
    nop

    .line 208
    nop

    .line 211
    invoke-virtual {v3, v2}, Lcom/maya/open/http/okhttp3/Cache$Entry;->response(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v4

    .line 213
    .local v4, "response":Lcom/maya/open/http/okhttp3/Response;
    invoke-virtual {v3, p1, v4}, Lcom/maya/open/http/okhttp3/Cache$Entry;->matches(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/Response;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 214
    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v5

    invoke-static {v5}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 215
    return-object v1

    .line 218
    :cond_1
    return-object v4

    .line 206
    .end local v3    # "entry":Lcom/maya/open/http/okhttp3/Cache$Entry;
    .end local v4    # "response":Lcom/maya/open/http/okhttp3/Response;
    :catch_0
    move-exception v3

    .line 207
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 208
    return-object v1

    .line 199
    .end local v2    # "snapshot":Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 201
    .local v2, "e":Ljava/io/IOException;
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 300
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
    .locals 6
    .param p1, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 222
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "requestMethod":Ljava/lang/String;
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

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/maya/open/http/okhttp3/Cache;->remove(Lcom/maya/open/http/okhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 230
    :goto_0
    return-object v2

    .line 232
    :cond_0
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    return-object v2

    .line 239
    :cond_1
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->hasVaryAll(Lcom/maya/open/http/okhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    return-object v2

    .line 243
    :cond_2
    new-instance v1, Lcom/maya/open/http/okhttp3/Cache$Entry;

    invoke-direct {v1, p1}, Lcom/maya/open/http/okhttp3/Cache$Entry;-><init>(Lcom/maya/open/http/okhttp3/Response;)V

    .line 244
    .local v1, "entry":Lcom/maya/open/http/okhttp3/Cache$Entry;
    move-object v3, v2

    .line 246
    .local v3, "editor":Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_start_1
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v5

    invoke-static {v5}, Lcom/maya/open/http/okhttp3/Cache;->key(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v4

    move-object v3, v4

    .line 247
    if-nez v3, :cond_3

    .line 248
    return-object v2

    .line 250
    :cond_3
    invoke-virtual {v1, v3}, Lcom/maya/open/http/okhttp3/Cache$Entry;->writeTo(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 251
    new-instance v4, Lcom/maya/open/http/okhttp3/Cache$CacheRequestImpl;

    invoke-direct {v4, p0, v3}, Lcom/maya/open/http/okhttp3/Cache$CacheRequestImpl;-><init>(Lcom/maya/open/http/okhttp3/Cache;Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 252
    :catch_1
    move-exception v4

    .line 253
    .local v4, "e":Ljava/io/IOException;
    invoke-direct {p0, v3}, Lcom/maya/open/http/okhttp3/Cache;->abortQuietly(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 254
    return-object v2
.end method

.method remove(Lcom/maya/open/http/okhttp3/Request;)V
    .locals 2
    .param p1, "request"    # Lcom/maya/open/http/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache;->cache:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/http/okhttp3/Cache;->key(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 260
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized trackResponse(Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;

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
    iget v0, p0, Lcom/maya/open/http/okhttp3/Cache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/Cache;->networkCount:I

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lcom/maya/open/http/okhttp3/Response;

    if-eqz v0, :cond_1

    .line 410
    iget v0, p0, Lcom/maya/open/http/okhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 402
    .end local p1    # "cacheStrategy":Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method update(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 4
    .param p1, "cached"    # Lcom/maya/open/http/okhttp3/Response;
    .param p2, "network"    # Lcom/maya/open/http/okhttp3/Response;

    .line 263
    new-instance v0, Lcom/maya/open/http/okhttp3/Cache$Entry;

    invoke-direct {v0, p2}, Lcom/maya/open/http/okhttp3/Cache$Entry;-><init>(Lcom/maya/open/http/okhttp3/Response;)V

    .line 264
    .local v0, "entry":Lcom/maya/open/http/okhttp3/Cache$Entry;
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;->snapshot:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 265
    .local v1, "snapshot":Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;
    const/4 v2, 0x0

    .line 267
    .local v2, "editor":Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_start_0
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;->edit()Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v3

    move-object v2, v3

    .line 268
    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v0, v2}, Lcom/maya/open/http/okhttp3/Cache$Entry;->writeTo(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 270
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    goto :goto_0

    .line 272
    :catch_0
    move-exception v3

    .line 273
    .local v3, "e":Ljava/io/IOException;
    invoke-direct {p0, v2}, Lcom/maya/open/http/okhttp3/Cache;->abortQuietly(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 275
    .end local v3    # "e":Ljava/io/IOException;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
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
