.class final Lcom/maya/open/http/okhttp3/RequestBody$3;
.super Lcom/maya/open/http/okhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okhttp3/RequestBody;->create(Lcom/maya/open/http/okhttp3/MediaType;Ljava/io/File;)Lcom/maya/open/http/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Lcom/maya/open/http/okhttp3/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/MediaType;Ljava/io/File;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/RequestBody$3;->val$contentType:Lcom/maya/open/http/okhttp3/MediaType;

    iput-object p2, p0, Lcom/maya/open/http/okhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/maya/open/http/okhttp3/MediaType;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RequestBody$3;->val$contentType:Lcom/maya/open/http/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/maya/open/http/okio/BufferedSink;)V
    .locals 2

    const/4 v0, 0x0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {v1}, Lcom/maya/open/http/okio/Okio;->source(Ljava/io/File;)Lcom/maya/open/http/okio/Source;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    invoke-interface {p1, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeAll(Lcom/maya/open/http/okio/Source;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 125
    throw p1
.end method
