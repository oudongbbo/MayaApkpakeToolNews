.class Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;
.super Lcom/maya/open/http/okhttp3/ResponseBody;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Lcom/maya/open/http/okio/BufferedSource;

.field private final contentLength:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field final snapshot:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentLength"    # Ljava/lang/String;

    .line 744
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/ResponseBody;-><init>()V

    .line 745
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;->snapshot:Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 746
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 747
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    .line 749
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lcom/maya/open/http/okio/Source;

    move-result-object v0

    .line 750
    .local v0, "source":Lcom/maya/open/http/okio/Source;
    new-instance v1, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody$1;-><init>(Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;Lcom/maya/open/http/okio/Source;Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;)V

    invoke-static {v1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;->bodySource:Lcom/maya/open/http/okio/BufferedSource;

    .line 756
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 4

    .line 764
    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    nop

    :cond_0
    return-wide v0

    .line 765
    :catch_0
    move-exception v2

    .line 766
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method

.method public contentType()Lcom/maya/open/http/okhttp3/MediaType;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public source()Lcom/maya/open/http/okio/BufferedSource;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;->bodySource:Lcom/maya/open/http/okio/BufferedSource;

    return-object v0
.end method
