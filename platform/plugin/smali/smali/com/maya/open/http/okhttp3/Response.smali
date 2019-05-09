.class public final Lcom/maya/open/http/okhttp3/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field final body:Lcom/maya/open/http/okhttp3/ResponseBody;

.field private volatile cacheControl:Lcom/maya/open/http/okhttp3/CacheControl;

.field final cacheResponse:Lcom/maya/open/http/okhttp3/Response;

.field final code:I

.field final handshake:Lcom/maya/open/http/okhttp3/Handshake;

.field final headers:Lcom/maya/open/http/okhttp3/Headers;

.field final message:Ljava/lang/String;

.field final networkResponse:Lcom/maya/open/http/okhttp3/Response;

.field final priorResponse:Lcom/maya/open/http/okhttp3/Response;

.field final protocol:Lcom/maya/open/http/okhttp3/Protocol;

.field final receivedResponseAtMillis:J

.field final request:Lcom/maya/open/http/okhttp3/Request;

.field final sentRequestAtMillis:J


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/Response$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/maya/open/http/okhttp3/Response$Builder;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->request:Lcom/maya/open/http/okhttp3/Request;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->request:Lcom/maya/open/http/okhttp3/Request;

    .line 61
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    .line 62
    iget v0, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->code:I

    iput v0, p0, Lcom/maya/open/http/okhttp3/Response;->code:I

    .line 63
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->message:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    .line 65
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->headers:Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Headers$Builder;->build()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->headers:Lcom/maya/open/http/okhttp3/Headers;

    .line 66
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->body:Lcom/maya/open/http/okhttp3/ResponseBody;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->body:Lcom/maya/open/http/okhttp3/ResponseBody;

    .line 67
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->networkResponse:Lcom/maya/open/http/okhttp3/Response;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->networkResponse:Lcom/maya/open/http/okhttp3/Response;

    .line 68
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->cacheResponse:Lcom/maya/open/http/okhttp3/Response;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->cacheResponse:Lcom/maya/open/http/okhttp3/Response;

    .line 69
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->priorResponse:Lcom/maya/open/http/okhttp3/Response;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->priorResponse:Lcom/maya/open/http/okhttp3/Response;

    .line 70
    iget-wide v0, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->sentRequestAtMillis:J

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/Response;->sentRequestAtMillis:J

    .line 71
    iget-wide v0, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/Response;->receivedResponseAtMillis:J

    .line 72
    return-void
.end method


# virtual methods
.method public body()Lcom/maya/open/http/okhttp3/ResponseBody;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->body:Lcom/maya/open/http/okhttp3/ResponseBody;

    return-object v0
.end method

.method public cacheControl()Lcom/maya/open/http/okhttp3/CacheControl;
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->cacheControl:Lcom/maya/open/http/okhttp3/CacheControl;

    .line 251
    .local v0, "result":Lcom/maya/open/http/okhttp3/CacheControl;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Response;->headers:Lcom/maya/open/http/okhttp3/Headers;

    invoke-static {v1}, Lcom/maya/open/http/okhttp3/CacheControl;->parse(Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/CacheControl;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/Response;->cacheControl:Lcom/maya/open/http/okhttp3/CacheControl;

    :goto_0
    return-object v1
.end method

.method public cacheResponse()Lcom/maya/open/http/okhttp3/Response;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->cacheResponse:Lcom/maya/open/http/okhttp3/Response;

    return-object v0
.end method

.method public challenges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .line 235
    iget v0, p0, Lcom/maya/open/http/okhttp3/Response;->code:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 236
    const-string v0, "WWW-Authenticate"

    goto :goto_0

    .line 237
    :cond_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/Response;->code:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    .line 238
    const-string v0, "Proxy-Authenticate"

    .line 240
    .local v0, "responseField":Ljava/lang/String;
    :goto_0
    nop

    .line 242
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->parseChallenges(Lcom/maya/open/http/okhttp3/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 240
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->body:Lcom/maya/open/http/okhttp3/ResponseBody;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/ResponseBody;->close()V

    .line 275
    return-void
.end method

.method public code()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/maya/open/http/okhttp3/Response;->code:I

    return v0
.end method

.method public handshake()Lcom/maya/open/http/okhttp3/Handshake;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->headers:Lcom/maya/open/http/okhttp3/Headers;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public headers()Lcom/maya/open/http/okhttp3/Headers;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->headers:Lcom/maya/open/http/okhttp3/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->headers:Lcom/maya/open/http/okhttp3/Headers;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isRedirect()Z
    .locals 1

    .line 186
    iget v0, p0, Lcom/maya/open/http/okhttp3/Response;->code:I

    packed-switch v0, :pswitch_data_0

    .line 195
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 193
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isSuccessful()Z
    .locals 2

    .line 106
    iget v0, p0, Lcom/maya/open/http/okhttp3/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/maya/open/http/okhttp3/Response;->code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public networkResponse()Lcom/maya/open/http/okhttp3/Response;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->networkResponse:Lcom/maya/open/http/okhttp3/Response;

    return-object v0
.end method

.method public newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 1

    .line 181
    new-instance v0, Lcom/maya/open/http/okhttp3/Response$Builder;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/Response$Builder;-><init>(Lcom/maya/open/http/okhttp3/Response;)V

    return-object v0
.end method

.method public peekBody(J)Lcom/maya/open/http/okhttp3/ResponseBody;
    .locals 6
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->body:Lcom/maya/open/http/okhttp3/ResponseBody;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/ResponseBody;->source()Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v0

    .line 152
    .local v0, "source":Lcom/maya/open/http/okio/BufferedSource;
    invoke-interface {v0, p1, p2}, Lcom/maya/open/http/okio/BufferedSource;->request(J)Z

    .line 153
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okio/Buffer;->clone()Lcom/maya/open/http/okio/Buffer;

    move-result-object v1

    .line 157
    .local v1, "copy":Lcom/maya/open/http/okio/Buffer;
    invoke-virtual {v1}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-lez v4, :cond_0

    .line 158
    new-instance v2, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v2}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    .line 159
    .local v2, "result":Lcom/maya/open/http/okio/Buffer;
    invoke-virtual {v2, v1, p1, p2}, Lcom/maya/open/http/okio/Buffer;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 160
    invoke-virtual {v1}, Lcom/maya/open/http/okio/Buffer;->clear()V

    goto :goto_0

    .line 162
    .end local v2    # "result":Lcom/maya/open/http/okio/Buffer;
    :cond_0
    move-object v2, v1

    .line 165
    .restart local v2    # "result":Lcom/maya/open/http/okio/Buffer;
    :goto_0
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/Response;->body:Lcom/maya/open/http/okhttp3/ResponseBody;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentType()Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v2}, Lcom/maya/open/http/okhttp3/ResponseBody;->create(Lcom/maya/open/http/okhttp3/MediaType;JLcom/maya/open/http/okio/BufferedSource;)Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v3

    return-object v3
.end method

.method public priorResponse()Lcom/maya/open/http/okhttp3/Response;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->priorResponse:Lcom/maya/open/http/okhttp3/Response;

    return-object v0
.end method

.method public protocol()Lcom/maya/open/http/okhttp3/Protocol;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    return-object v0
.end method

.method public receivedResponseAtMillis()J
    .locals 2

    .line 269
    iget-wide v0, p0, Lcom/maya/open/http/okhttp3/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method public request()Lcom/maya/open/http/okhttp3/Request;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Response;->request:Lcom/maya/open/http/okhttp3/Request;

    return-object v0
.end method

.method public sentRequestAtMillis()J
    .locals 2

    .line 260
    iget-wide v0, p0, Lcom/maya/open/http/okhttp3/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Response;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/open/http/okhttp3/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Response;->request:Lcom/maya/open/http/okhttp3/Request;

    .line 285
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    return-object v0
.end method
