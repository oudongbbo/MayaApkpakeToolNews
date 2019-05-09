.class final Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;
.super Ljava/lang/Object;
.source "FileOperator.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private final byteArray:[B

.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 1
    .param p1, "fileChannel"    # Ljava/nio/channels/FileChannel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteArray:[B

    .line 42
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteArray:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 46
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 47
    return-void
.end method


# virtual methods
.method public read(JLcom/maya/open/http/okio/Buffer;J)V
    .locals 5
    .param p1, "pos"    # J
    .param p3, "sink"    # Lcom/maya/open/http/okio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_2

    .line 81
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x2000

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 85
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 86
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 89
    .local v2, "bytesRead":I
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteArray:[B

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4, v2}, Lcom/maya/open/http/okio/Buffer;->write([BII)Lcom/maya/open/http/okio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    int-to-long v3, v2

    add-long/2addr p1, v3

    .line 91
    int-to-long v3, v2

    sub-long/2addr p4, v3

    .line 93
    .end local v2    # "bytesRead":I
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 94
    goto :goto_0

    .line 85
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 94
    throw v0

    .line 96
    :cond_1
    return-void

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public write(JLcom/maya/open/http/okio/Buffer;J)V
    .locals 6
    .param p1, "pos"    # J
    .param p3, "source"    # Lcom/maya/open/http/okio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_2

    invoke-virtual {p3}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, p4, v2

    if-gtz v4, :cond_2

    .line 53
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    .line 56
    const-wide/16 v2, 0x2000

    :try_start_0
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 57
    .local v2, "toWrite":I
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteArray:[B

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4, v2}, Lcom/maya/open/http/okio/Buffer;->read([BII)I

    .line 58
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 62
    :cond_0
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v3

    .line 63
    .local v3, "bytesWritten":I
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 64
    .end local v3    # "bytesWritten":I
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 66
    int-to-long v3, v2

    sub-long/2addr p4, v3

    .line 68
    .end local v2    # "toWrite":I
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 69
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 69
    throw v0

    .line 71
    :cond_1
    return-void

    .line 51
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
