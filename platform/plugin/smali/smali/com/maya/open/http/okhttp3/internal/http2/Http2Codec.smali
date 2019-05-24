.class public final Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final CONNECTION:Lcom/maya/open/http/okio/ByteString;

.field private static final ENCODING:Lcom/maya/open/http/okio/ByteString;

.field private static final HOST:Lcom/maya/open/http/okio/ByteString;

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Lcom/maya/open/http/okio/ByteString;

.field private static final PROXY_CONNECTION:Lcom/maya/open/http/okio/ByteString;

.field private static final TE:Lcom/maya/open/http/okio/ByteString;

.field private static final TRANSFER_ENCODING:Lcom/maya/open/http/okio/ByteString;

.field private static final UPGRADE:Lcom/maya/open/http/okio/ByteString;


# instance fields
.field private final client:Lcom/maya/open/http/okhttp3/OkHttpClient;

.field private final connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

.field private stream:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

.field final streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    .line 53
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->CONNECTION:Lcom/maya/open/http/okio/ByteString;

    const-string v0, "host"

    .line 54
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->HOST:Lcom/maya/open/http/okio/ByteString;

    const-string v0, "keep-alive"

    .line 55
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lcom/maya/open/http/okio/ByteString;

    const-string v0, "proxy-connection"

    .line 56
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lcom/maya/open/http/okio/ByteString;

    const-string v0, "transfer-encoding"

    .line 57
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lcom/maya/open/http/okio/ByteString;

    const-string v0, "te"

    .line 58
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->TE:Lcom/maya/open/http/okio/ByteString;

    const-string v0, "encoding"

    .line 59
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->ENCODING:Lcom/maya/open/http/okio/ByteString;

    const-string v0, "upgrade"

    .line 60
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->UPGRADE:Lcom/maya/open/http/okio/ByteString;

    const/16 v0, 0xc

    .line 63
    new-array v0, v0, [Lcom/maya/open/http/okio/ByteString;

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->CONNECTION:Lcom/maya/open/http/okio/ByteString;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->HOST:Lcom/maya/open/http/okio/ByteString;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lcom/maya/open/http/okio/ByteString;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lcom/maya/open/http/okio/ByteString;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->TE:Lcom/maya/open/http/okio/ByteString;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lcom/maya/open/http/okio/ByteString;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->ENCODING:Lcom/maya/open/http/okio/ByteString;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->UPGRADE:Lcom/maya/open/http/okio/ByteString;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_METHOD:Lcom/maya/open/http/okio/ByteString;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_PATH:Lcom/maya/open/http/okio/ByteString;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_SCHEME:Lcom/maya/open/http/okio/ByteString;

    const/16 v11, 0xa

    aput-object v1, v0, v11

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lcom/maya/open/http/okio/ByteString;

    const/16 v11, 0xb

    aput-object v1, v0, v11

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 76
    new-array v0, v10, [Lcom/maya/open/http/okio/ByteString;

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->CONNECTION:Lcom/maya/open/http/okio/ByteString;

    aput-object v1, v0, v2

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->HOST:Lcom/maya/open/http/okio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->KEEP_ALIVE:Lcom/maya/open/http/okio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->PROXY_CONNECTION:Lcom/maya/open/http/okio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->TE:Lcom/maya/open/http/okio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->TRANSFER_ENCODING:Lcom/maya/open/http/okio/ByteString;

    aput-object v1, v0, v7

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->ENCODING:Lcom/maya/open/http/okio/ByteString;

    aput-object v1, v0, v8

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->UPGRADE:Lcom/maya/open/http/okio/ByteString;

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 94
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    .line 95
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    return-void
.end method

.method public static http2HeadersList(Lcom/maya/open/http/okhttp3/Request;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/Request;",
            ")",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Request;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    new-instance v2, Lcom/maya/open/http/okhttp3/internal/http2/Header;

    sget-object v3, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_METHOD:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/maya/open/http/okhttp3/internal/http2/Header;-><init>(Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v2, Lcom/maya/open/http/okhttp3/internal/http2/Header;

    sget-object v3, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_PATH:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lcom/maya/open/http/okhttp3/internal/http/RequestLine;->requestPath(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/maya/open/http/okhttp3/internal/http2/Header;-><init>(Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 134
    invoke-virtual {p0, v2}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    new-instance v3, Lcom/maya/open/http/okhttp3/internal/http2/Header;

    sget-object v4, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lcom/maya/open/http/okio/ByteString;

    invoke-direct {v3, v4, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Header;-><init>(Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    new-instance v2, Lcom/maya/open/http/okhttp3/internal/http2/Header;

    sget-object v3, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_SCHEME:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/maya/open/http/okhttp3/internal/http2/Header;-><init>(Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 140
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    .line 142
    invoke-virtual {v0, p0}, Lcom/maya/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v3

    .line 143
    sget-object v4, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 144
    new-instance v4, Lcom/maya/open/http/okhttp3/internal/http2/Header;

    invoke-virtual {v0, p0}, Lcom/maya/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/maya/open/http/okhttp3/internal/http2/Header;-><init>(Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static readHttp2HeadersList(Ljava/util/List;)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;)",
            "Lcom/maya/open/http/okhttp3/Response$Builder;"
        }
    .end annotation

    .line 153
    new-instance v0, Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/Headers$Builder;-><init>()V

    .line 154
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    move-object v0, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 155
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/maya/open/http/okhttp3/internal/http2/Header;

    if-nez v5, :cond_0

    if-eqz v0, :cond_2

    .line 160
    iget v5, v0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->code:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 162
    new-instance v0, Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/Headers$Builder;-><init>()V

    move-object v4, v0

    move-object v0, v2

    goto :goto_1

    .line 167
    :cond_0
    iget-object v6, v5, Lcom/maya/open/http/okhttp3/internal/http2/Header;->name:Lcom/maya/open/http/okio/ByteString;

    .line 168
    iget-object v5, v5, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v5}, Lcom/maya/open/http/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    .line 169
    sget-object v7, Lcom/maya/open/http/okhttp3/internal/http2/Header;->RESPONSE_STATUS:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v6, v7}, Lcom/maya/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/internal/http/StatusLine;

    move-result-object v0

    goto :goto_1

    .line 171
    :cond_1
    sget-object v7, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 172
    sget-object v7, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    invoke-virtual {v6}, Lcom/maya/open/http/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6, v5}, Lcom/maya/open/http/okhttp3/internal/Internal;->addLenient(Lcom/maya/open/http/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 177
    new-instance p0, Lcom/maya/open/http/okhttp3/Response$Builder;

    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/Response$Builder;-><init>()V

    sget-object v1, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_2:Lcom/maya/open/http/okhttp3/Protocol;

    .line 178
    invoke-virtual {p0, v1}, Lcom/maya/open/http/okhttp3/Response$Builder;->protocol(Lcom/maya/open/http/okhttp3/Protocol;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p0

    iget v1, v0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->code:I

    .line 179
    invoke-virtual {p0, v1}, Lcom/maya/open/http/okhttp3/Response$Builder;->code(I)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p0

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 180
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p0

    .line 181
    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/Headers$Builder;->build()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/Response$Builder;->headers(Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p0

    return-object p0

    .line 175
    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->stream:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->stream:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->closeLater(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lcom/maya/open/http/okhttp3/Request;J)Lcom/maya/open/http/okio/Sink;
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->stream:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->getSink()Lcom/maya/open/http/okio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public finishRequest()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->stream:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->getSink()Lcom/maya/open/http/okio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/open/http/okio/Sink;->close()V

    return-void
.end method

.method public flushRequest()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->flush()V

    return-void
.end method

.method public openResponseBody(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/ResponseBody;
    .locals 2

    .line 185
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->stream:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->getSource()Lcom/maya/open/http/okio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;Lcom/maya/open/http/okio/Source;)V

    .line 186
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object p1

    invoke-static {v0}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;-><init>(Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okio/BufferedSource;)V

    return-object v1
.end method

.method public readResponseHeaders(Z)Lcom/maya/open/http/okhttp3/Response$Builder;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->stream:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->takeResponseHeaders()Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->readHttp2HeadersList(Ljava/util/List;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 123
    sget-object p1, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/internal/Internal;->code(Lcom/maya/open/http/okhttp3/Response$Builder;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public writeRequestHeaders(Lcom/maya/open/http/okhttp3/Request;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->stream:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 106
    :goto_0
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->http2HeadersList(Lcom/maya/open/http/okhttp3/Request;)Ljava/util/List;

    move-result-object p1

    .line 107
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->stream:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    .line 108
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->stream:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->readTimeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/maya/open/http/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okio/Timeout;

    .line 109
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->stream:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->writeTimeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/maya/open/http/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okio/Timeout;

    return-void
.end method
