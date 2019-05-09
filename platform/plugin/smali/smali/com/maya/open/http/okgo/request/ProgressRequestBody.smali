.class public Lcom/maya/open/http/okgo/request/ProgressRequestBody;
.super Lcom/maya/open/http/okhttp3/RequestBody;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;,
        Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;
    }
.end annotation


# instance fields
.field protected countingSink:Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;

.field protected delegate:Lcom/maya/open/http/okhttp3/RequestBody;

.field protected listener:Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/RequestBody;)V
    .locals 0
    .param p1, "delegate"    # Lcom/maya/open/http/okhttp3/RequestBody;

    .line 26
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/RequestBody;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->delegate:Lcom/maya/open/http/okhttp3/RequestBody;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/maya/open/http/okhttp3/RequestBody;Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;)V
    .locals 0
    .param p1, "delegate"    # Lcom/maya/open/http/okhttp3/RequestBody;
    .param p2, "listener"    # Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;

    .line 30
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/RequestBody;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->delegate:Lcom/maya/open/http/okhttp3/RequestBody;

    .line 32
    iput-object p2, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->listener:Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;

    .line 33
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->delegate:Lcom/maya/open/http/okhttp3/RequestBody;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/RequestBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 52
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public contentType()Lcom/maya/open/http/okhttp3/MediaType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->delegate:Lcom/maya/open/http/okhttp3/RequestBody;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/RequestBody;->contentType()Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;

    .line 36
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->listener:Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;

    .line 37
    return-void
.end method

.method public writeTo(Lcom/maya/open/http/okio/BufferedSink;)V
    .locals 2
    .param p1, "sink"    # Lcom/maya/open/http/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;

    invoke-direct {v0, p0, p1}, Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;-><init>(Lcom/maya/open/http/okgo/request/ProgressRequestBody;Lcom/maya/open/http/okio/Sink;)V

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->countingSink:Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;

    .line 60
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->countingSink:Lcom/maya/open/http/okgo/request/ProgressRequestBody$CountingSink;

    invoke-static {v0}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v0

    .line 61
    .local v0, "bufferedSink":Lcom/maya/open/http/okio/BufferedSink;
    iget-object v1, p0, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->delegate:Lcom/maya/open/http/okhttp3/RequestBody;

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okhttp3/RequestBody;->writeTo(Lcom/maya/open/http/okio/BufferedSink;)V

    .line 62
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->flush()V

    .line 63
    return-void
.end method
