.class final Lcom/maya/open/http/okio/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/maya/open/http/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/maya/open/http/okio/Timeout;)Lcom/maya/open/http/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lcom/maya/open/http/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okio/Timeout;Ljava/io/OutputStream;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/maya/open/http/okio/Okio$1;->val$timeout:Lcom/maya/open/http/okio/Timeout;

    iput-object p2, p0, Lcom/maya/open/http/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/maya/open/http/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 96
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/maya/open/http/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 92
    return-void
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/maya/open/http/okio/Okio$1;->val$timeout:Lcom/maya/open/http/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 6
    .param p1, "source"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-wide v0, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/maya/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 73
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 74
    iget-object v0, p0, Lcom/maya/open/http/okio/Okio$1;->val$timeout:Lcom/maya/open/http/okio/Timeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Timeout;->throwIfReached()V

    .line 75
    iget-object v0, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .line 76
    .local v0, "head":Lcom/maya/open/http/okio/Segment;
    iget v1, v0, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v2, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 77
    .local v1, "toCopy":I
    iget-object v2, p0, Lcom/maya/open/http/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    iget-object v3, v0, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v4, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 79
    iget v2, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    .line 80
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 81
    iget-wide v2, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    .line 83
    iget v2, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    iget v3, v0, Lcom/maya/open/http/okio/Segment;->limit:I

    if-ne v2, v3, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/maya/open/http/okio/Segment;->pop()Lcom/maya/open/http/okio/Segment;

    move-result-object v2

    iput-object v2, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .line 85
    invoke-static {v0}, Lcom/maya/open/http/okio/SegmentPool;->recycle(Lcom/maya/open/http/okio/Segment;)V

    .line 87
    .end local v0    # "head":Lcom/maya/open/http/okio/Segment;
    .end local v1    # "toCopy":I
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method
