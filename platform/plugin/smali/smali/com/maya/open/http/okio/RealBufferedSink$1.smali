.class Lcom/maya/open/http/okio/RealBufferedSink$1;
.super Ljava/io/OutputStream;
.source "RealBufferedSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okio/RealBufferedSink;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okio/RealBufferedSink;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okio/RealBufferedSink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/http/okio/RealBufferedSink;

    .line 193
    iput-object p1, p0, Lcom/maya/open/http/okio/RealBufferedSink$1;->this$0:Lcom/maya/open/http/okio/RealBufferedSink;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

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

    .line 214
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink$1;->this$0:Lcom/maya/open/http/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/RealBufferedSink;->close()V

    .line 215
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink$1;->this$0:Lcom/maya/open/http/okio/RealBufferedSink;

    iget-boolean v0, v0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink$1;->this$0:Lcom/maya/open/http/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/RealBufferedSink;->flush()V

    .line 211
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSink$1;->this$0:Lcom/maya/open/http/okio/RealBufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink$1;->this$0:Lcom/maya/open/http/okio/RealBufferedSink;

    iget-boolean v0, v0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink$1;->this$0:Lcom/maya/open/http/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 197
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink$1;->this$0:Lcom/maya/open/http/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    .line 198
    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink$1;->this$0:Lcom/maya/open/http/okio/RealBufferedSink;

    iget-boolean v0, v0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink$1;->this$0:Lcom/maya/open/http/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->write([BII)Lcom/maya/open/http/okio/Buffer;

    .line 203
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink$1;->this$0:Lcom/maya/open/http/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    .line 204
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
