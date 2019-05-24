.class final Lcom/maya/open/http/okhttp3/RequestBody$1;
.super Lcom/maya/open/http/okhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okhttp3/RequestBody;->create(Lcom/maya/open/http/okhttp3/MediaType;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/maya/open/http/okio/ByteString;

.field final synthetic val$contentType:Lcom/maya/open/http/okhttp3/MediaType;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/MediaType;Lcom/maya/open/http/okio/ByteString;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/RequestBody$1;->val$contentType:Lcom/maya/open/http/okhttp3/MediaType;

    iput-object p2, p0, Lcom/maya/open/http/okhttp3/RequestBody$1;->val$content:Lcom/maya/open/http/okio/ByteString;

    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RequestBody$1;->val$content:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lcom/maya/open/http/okhttp3/MediaType;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RequestBody$1;->val$contentType:Lcom/maya/open/http/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/maya/open/http/okio/BufferedSink;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RequestBody$1;->val$content:Lcom/maya/open/http/okio/ByteString;

    invoke-interface {p1, v0}, Lcom/maya/open/http/okio/BufferedSink;->write(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/BufferedSink;

    return-void
.end method
