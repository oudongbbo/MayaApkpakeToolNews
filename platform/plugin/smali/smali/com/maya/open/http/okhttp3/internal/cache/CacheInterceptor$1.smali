.class Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lcom/maya/open/http/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lcom/maya/open/http/okio/BufferedSink;

.field final synthetic val$cacheRequest:Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;

.field final synthetic val$source:Lcom/maya/open/http/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;Lcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;Lcom/maya/open/http/okio/BufferedSink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;

    .line 178
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->this$0:Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lcom/maya/open/http/okio/BufferedSource;

    iput-object p3, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;

    iput-object p4, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/maya/open/http/okio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 212
    invoke-static {p0, v0, v1}, Lcom/maya/open/http/okhttp3/internal/Util;->discard(Lcom/maya/open/http/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 214
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;->abort()V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->close()V

    .line 217
    return-void
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 9
    .param p1, "sink"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Lcom/maya/open/http/okio/BufferedSource;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .local v1, "bytesRead":J
    nop

    .line 190
    nop

    .line 193
    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 194
    iget-boolean v5, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v5, :cond_0

    .line 195
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 196
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->close()V

    .line 198
    :cond_0
    return-wide v3

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v5, v1

    move-object v3, p1

    move-wide v7, v1

    invoke-virtual/range {v3 .. v8}, Lcom/maya/open/http/okio/Buffer;->copyTo(Lcom/maya/open/http/okio/Buffer;JJ)Lcom/maya/open/http/okio/Buffer;

    .line 202
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    .line 203
    return-wide v1

    .line 185
    .end local v1    # "bytesRead":J
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v2, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v2, :cond_2

    .line 187
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 188
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;->abort()V

    .line 190
    :cond_2
    throw v1
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
