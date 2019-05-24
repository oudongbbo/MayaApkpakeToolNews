.class public final Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;
.super Lcom/maya/open/http/okhttp3/ResponseBody;
.source "SourceFile"


# instance fields
.field private final headers:Lcom/maya/open/http/okhttp3/Headers;

.field private final source:Lcom/maya/open/http/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okio/BufferedSource;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/ResponseBody;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;->headers:Lcom/maya/open/http/okhttp3/Headers;

    .line 32
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;->source:Lcom/maya/open/http/okio/BufferedSource;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;->headers:Lcom/maya/open/http/okhttp3/Headers;

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->contentLength(Lcom/maya/open/http/okhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/maya/open/http/okhttp3/MediaType;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;->headers:Lcom/maya/open/http/okhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
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

    .line 45
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;->source:Lcom/maya/open/http/okio/BufferedSource;

    return-object v0
.end method
