.class final Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field activeWriter:Z

.field final buffer:Lcom/maya/open/http/okio/Buffer;

.field final frameSink:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field final maskBuffer:[B

.field final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Lcom/maya/open/http/okio/BufferedSink;

.field writerClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 48
    return-void
.end method

.method constructor <init>(ZLcom/maya/open/http/okio/BufferedSink;Ljava/util/Random;)V
    .locals 2
    .param p1, "isClient"    # Z
    .param p2, "sink"    # Lcom/maya/open/http/okio/BufferedSink;
    .param p3, "random"    # Ljava/util/Random;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/maya/open/http/okio/Buffer;

    .line 58
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    .line 66
    if-eqz p2, :cond_3

    .line 67
    if-eqz p3, :cond_2

    .line 68
    iput-boolean p1, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 69
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 70
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    .line 73
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [B

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    .line 74
    if-eqz p1, :cond_1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    nop

    :cond_1
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    .line 75
    return-void

    .line 67
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "random == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeControlFrameSynchronized(ILcom/maya/open/http/okio/ByteString;)V
    .locals 11
    .param p1, "opcode"    # I
    .param p2, "payload"    # Lcom/maya/open/http/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    nop

    .line 124
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_2

    .line 126
    invoke-virtual {p2}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    .line 127
    .local v0, "length":I
    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 132
    or-int/lit16 v1, p1, 0x80

    .line 133
    .local v1, "b0":I
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v2, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 135
    move v2, v0

    .line 136
    .local v2, "b1":I
    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v3, :cond_0

    .line 137
    or-int/lit16 v2, v2, 0x80

    .line 138
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v3, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 140
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 141
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v3, v4}, Lcom/maya/open/http/okio/BufferedSink;->write([B)Lcom/maya/open/http/okio/BufferedSink;

    .line 143
    invoke-virtual {p2}, Lcom/maya/open/http/okio/ByteString;->toByteArray()[B

    move-result-object v3

    .line 144
    .local v3, "bytes":[B
    array-length v4, v3

    int-to-long v6, v4

    iget-object v8, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    const-wide/16 v9, 0x0

    move-object v5, v3

    invoke-static/range {v5 .. v10}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 145
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v4, v3}, Lcom/maya/open/http/okio/BufferedSink;->write([B)Lcom/maya/open/http/okio/BufferedSink;

    .line 146
    .end local v3    # "bytes":[B
    goto :goto_0

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v3, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 148
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v3, p2}, Lcom/maya/open/http/okio/BufferedSink;->write(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/BufferedSink;

    .line 151
    :goto_0
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v3}, Lcom/maya/open/http/okio/BufferedSink;->flush()V

    .line 152
    return-void

    .line 128
    .end local v1    # "b0":I
    .end local v2    # "b1":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Payload size must be less than or equal to 125"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    .end local v0    # "length":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method newMessageSink(IJ)Lcom/maya/open/http/okio/Sink;
    .locals 2
    .param p1, "formatOpcode"    # I
    .param p2, "contentLength"    # J

    .line 159
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 165
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput p1, v1, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    .line 166
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-wide p2, v1, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    .line 167
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-boolean v0, v1, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 168
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 170
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    return-object v0

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another message writer is active. Did you call close()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeClose(ILcom/maya/open/http/okio/ByteString;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Lcom/maya/open/http/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/maya/open/http/okio/ByteString;->EMPTY:Lcom/maya/open/http/okio/ByteString;

    .line 100
    .local v0, "payload":Lcom/maya/open/http/okio/ByteString;
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    .line 101
    :cond_0
    if-eqz p1, :cond_1

    .line 102
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 104
    :cond_1
    new-instance v1, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v1}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    .line 105
    .local v1, "buffer":Lcom/maya/open/http/okio/Buffer;
    invoke-virtual {v1, p1}, Lcom/maya/open/http/okio/Buffer;->writeShort(I)Lcom/maya/open/http/okio/Buffer;

    .line 106
    if-eqz p2, :cond_2

    .line 107
    invoke-virtual {v1, p2}, Lcom/maya/open/http/okio/Buffer;->write(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/Buffer;

    .line 109
    :cond_2
    invoke-virtual {v1}, Lcom/maya/open/http/okio/Buffer;->readByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    .line 112
    .end local v1    # "buffer":Lcom/maya/open/http/okio/Buffer;
    :cond_3
    monitor-enter p0

    .line 114
    const/16 v1, 0x8

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILcom/maya/open/http/okio/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    iput-boolean v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 117
    nop

    .line 118
    monitor-exit p0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 116
    :catchall_1
    move-exception v1

    iput-boolean v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 117
    throw v1

    .line 118
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method writeMessageFrameSynchronized(IJZZ)V
    .locals 15
    .param p1, "formatOpcode"    # I
    .param p2, "byteCount"    # J
    .param p4, "isFirstFrame"    # Z
    .param p5, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    move-object v0, p0

    move-wide/from16 v1, p2

    .line 177
    iget-boolean v3, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v3, :cond_8

    .line 179
    const/4 v3, 0x0

    if-eqz p4, :cond_0

    move/from16 v4, p1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 180
    .local v4, "b0":I
    :goto_0
    if-eqz p5, :cond_1

    .line 181
    or-int/lit16 v4, v4, 0x80

    .line 183
    :cond_1
    iget-object v5, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v5, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 185
    const/4 v5, 0x0

    .line 186
    .local v5, "b1":I
    iget-boolean v6, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v6, :cond_2

    .line 187
    or-int/lit16 v5, v5, 0x80

    .line 189
    :cond_2
    const-wide/16 v6, 0x7d

    cmp-long v8, v1, v6

    if-gtz v8, :cond_3

    .line 190
    long-to-int v6, v1

    or-int/2addr v5, v6

    .line 191
    iget-object v6, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v6, v5}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    goto :goto_1

    .line 192
    :cond_3
    const-wide/32 v6, 0xffff

    cmp-long v8, v1, v6

    if-gtz v8, :cond_4

    .line 193
    or-int/lit8 v5, v5, 0x7e

    .line 194
    iget-object v6, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v6, v5}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 195
    iget-object v6, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    long-to-int v7, v1

    invoke-interface {v6, v7}, Lcom/maya/open/http/okio/BufferedSink;->writeShort(I)Lcom/maya/open/http/okio/BufferedSink;

    goto :goto_1

    .line 197
    :cond_4
    or-int/lit8 v5, v5, 0x7f

    .line 198
    iget-object v6, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v6, v5}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 199
    iget-object v6, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v6, v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeLong(J)Lcom/maya/open/http/okio/BufferedSink;

    .line 202
    :goto_1
    iget-boolean v6, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v6, :cond_6

    .line 203
    iget-object v6, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v7, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextBytes([B)V

    .line 204
    iget-object v6, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget-object v7, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v6, v7}, Lcom/maya/open/http/okio/BufferedSink;->write([B)Lcom/maya/open/http/okio/BufferedSink;

    .line 206
    const-wide/16 v6, 0x0

    .local v6, "written":J
    :goto_2
    cmp-long v8, v6, v1

    if-gez v8, :cond_7

    .line 207
    iget-object v8, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    array-length v8, v8

    int-to-long v8, v8

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v12, v8

    .line 208
    .local v12, "toRead":I
    iget-object v8, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v9, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-virtual {v8, v9, v3, v12}, Lcom/maya/open/http/okio/Buffer;->read([BII)I

    move-result v13

    .line 209
    .local v13, "read":I
    const/4 v8, -0x1

    if-eq v13, v8, :cond_5

    .line 210
    iget-object v8, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    int-to-long v9, v13

    iget-object v11, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    move v14, v12

    move v3, v13

    .end local v12    # "toRead":I
    .end local v13    # "read":I
    .local v3, "read":I
    .local v14, "toRead":I
    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 211
    iget-object v8, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget-object v9, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10, v3}, Lcom/maya/open/http/okio/BufferedSink;->write([BII)Lcom/maya/open/http/okio/BufferedSink;

    .line 212
    int-to-long v8, v3

    add-long/2addr v6, v8

    .line 213
    .end local v3    # "read":I
    .end local v14    # "toRead":I
    nop

    .line 206
    const/4 v3, 0x0

    goto :goto_2

    .line 209
    .restart local v12    # "toRead":I
    .restart local v13    # "read":I
    :cond_5
    move v14, v12

    move v3, v13

    .end local v12    # "toRead":I
    .end local v13    # "read":I
    .restart local v3    # "read":I
    .restart local v14    # "toRead":I
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 215
    .end local v3    # "read":I
    .end local v6    # "written":J
    .end local v14    # "toRead":I
    :cond_6
    iget-object v3, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget-object v6, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-interface {v3, v6, v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 218
    :cond_7
    iget-object v3, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v3}, Lcom/maya/open/http/okio/BufferedSink;->emit()Lcom/maya/open/http/okio/BufferedSink;

    .line 219
    return-void

    .line 177
    .end local v4    # "b0":I
    .end local v5    # "b1":I
    :cond_8
    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method writePing(Lcom/maya/open/http/okio/ByteString;)V
    .locals 1
    .param p1, "payload"    # Lcom/maya/open/http/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    monitor-enter p0

    .line 80
    const/16 v0, 0x9

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILcom/maya/open/http/okio/ByteString;)V

    .line 81
    monitor-exit p0

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writePong(Lcom/maya/open/http/okio/ByteString;)V
    .locals 1
    .param p1, "payload"    # Lcom/maya/open/http/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    monitor-enter p0

    .line 87
    const/16 v0, 0xa

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILcom/maya/open/http/okio/ByteString;)V

    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
