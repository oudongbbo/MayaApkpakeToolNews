.class Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;
.super Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;J)V
    .locals 2

    .line 373
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$1;)V

    .line 374
    iput-wide p2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    .line 375
    iget-wide p1, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x1

    .line 376
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 399
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 401
    :cond_0
    iget-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/maya/open/http/okhttp3/internal/Util;->discard(Lcom/maya/open/http/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(Z)V

    :cond_1
    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->closed:Z

    return-void
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    .line 382
    iget-boolean v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->closed:Z

    if-nez v2, :cond_3

    .line 383
    iget-wide v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    cmp-long v4, v2, v0

    const-wide/16 v2, -0x1

    if-nez v4, :cond_0

    return-wide v2

    .line 385
    :cond_0
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v4, v4, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->source:Lcom/maya/open/http/okio/BufferedSource;

    iget-wide v5, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    invoke-static {v5, v6, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v4, p1, p2, p3}, Lcom/maya/open/http/okio/BufferedSource;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-eqz p3, :cond_2

    .line 391
    iget-wide v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    .line 392
    iget-wide v2, p0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    .line 393
    invoke-virtual {p0, p3}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(Z)V

    :cond_1
    return-wide p1

    :cond_2
    const/4 p1, 0x0

    .line 387
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->endOfInput(Z)V

    .line 388
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 382
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 381
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
