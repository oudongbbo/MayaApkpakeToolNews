.class Lcom/maya/open/http/okio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lcom/maya/open/http/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okio/AsyncTimeout;->sink(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okio/AsyncTimeout;

.field final synthetic val$sink:Lcom/maya/open/http/okio/Sink;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okio/AsyncTimeout;Lcom/maya/open/http/okio/Sink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/http/okio/AsyncTimeout;

    .line 159
    iput-object p1, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->val$sink:Lcom/maya/open/http/okio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "throwOnTimeout":Z
    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v1}, Lcom/maya/open/http/okio/AsyncTimeout;->enter()V

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->val$sink:Lcom/maya/open/http/okio/Sink;

    invoke-interface {v1}, Lcom/maya/open/http/okio/Sink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    const/4 v0, 0x1

    .line 212
    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    .line 213
    nop

    .line 214
    return-void

    .line 212
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v2, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    .line 213
    throw v1
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "throwOnTimeout":Z
    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v1}, Lcom/maya/open/http/okio/AsyncTimeout;->enter()V

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->val$sink:Lcom/maya/open/http/okio/Sink;

    invoke-interface {v1}, Lcom/maya/open/http/okio/Sink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    const/4 v0, 0x1

    .line 199
    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    .line 200
    nop

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v2, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    .line 200
    throw v1
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->val$sink:Lcom/maya/open/http/okio/Sink;

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

    .line 161
    iget-wide v0, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/maya/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 163
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    .line 165
    const-wide/16 v0, 0x0

    .line 166
    .local v0, "toWrite":J
    iget-object v2, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .local v2, "s":Lcom/maya/open/http/okio/Segment;
    :goto_1
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    .line 167
    iget-object v3, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    iget v3, v3, Lcom/maya/open/http/okio/Segment;->limit:I

    iget-object v4, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    iget v4, v4, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    .line 168
    .local v3, "segmentSize":I
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 169
    cmp-long v4, v0, p2

    if-ltz v4, :cond_0

    .line 170
    move-wide v0, p2

    .line 171
    goto :goto_2

    .line 166
    .end local v3    # "segmentSize":I
    :cond_0
    iget-object v2, v2, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    goto :goto_1

    .line 176
    .end local v2    # "s":Lcom/maya/open/http/okio/Segment;
    :cond_1
    :goto_2
    const/4 v2, 0x0

    .line 177
    .local v2, "throwOnTimeout":Z
    iget-object v3, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v3}, Lcom/maya/open/http/okio/AsyncTimeout;->enter()V

    .line 179
    :try_start_0
    iget-object v3, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->val$sink:Lcom/maya/open/http/okio/Sink;

    invoke-interface {v3, p1, v0, v1}, Lcom/maya/open/http/okio/Sink;->write(Lcom/maya/open/http/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    const/4 v3, 0x0

    sub-long/2addr p2, v0

    .line 181
    const/4 v2, 0x1

    .line 185
    iget-object v3, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v3, v2}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    .line 186
    nop

    .line 187
    .end local v0    # "toWrite":J
    .end local v2    # "throwOnTimeout":Z
    goto :goto_0

    .line 185
    .restart local v0    # "toWrite":J
    .restart local v2    # "throwOnTimeout":Z
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 182
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v4, v3}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    iget-object v4, p0, Lcom/maya/open/http/okio/AsyncTimeout$1;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v4, v2}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    .line 186
    throw v3

    .line 188
    .end local v0    # "toWrite":J
    .end local v2    # "throwOnTimeout":Z
    :cond_2
    return-void
.end method
