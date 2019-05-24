.class final Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:I

.field length:I

.field padding:S

.field private final source:Lcom/maya/open/http/okio/BufferedSource;

.field streamId:I


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okio/BufferedSource;)V
    .locals 0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    return-void
.end method

.method private readContinuationHeader()V
    .locals 7

    .line 387
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    .line 389
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader;->readMedium(Lcom/maya/open/http/okio/BufferedSource;)I

    move-result v1

    iput v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    iput v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    .line 390
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v1}, Lcom/maya/open/http/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 391
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v2}, Lcom/maya/open/http/okio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    .line 392
    sget-object v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    iget v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    iget v5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    iget-byte v6, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    invoke-static {v3, v4, v5, v1, v6}, Lcom/maya/open/http/okhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v2}, Lcom/maya/open/http/okio/BufferedSource;->readInt()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    iput v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    const/16 v2, 0x9

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 395
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "TYPE_CONTINUATION streamId changed"

    invoke-static {v1, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 394
    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "%s != TYPE_CONTINUATION"

    invoke-static {v1, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 5

    .line 365
    :goto_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    iget-short v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    const/4 v0, 0x0

    .line 367
    iput-short v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    .line 368
    iget-byte v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    iget v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    int-to-long v3, v3

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v0, p1, p2, p3}, Lcom/maya/open/http/okio/BufferedSource;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    return-wide v1

    .line 375
    :cond_2
    iget p3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    return-wide p1
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
