.class Lcom/maya/open/http/okio/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lcom/maya/open/http/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okio/AsyncTimeout;->source(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okio/AsyncTimeout;

.field final synthetic val$source:Lcom/maya/open/http/okio/Source;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okio/AsyncTimeout;Lcom/maya/open/http/okio/Source;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/http/okio/AsyncTimeout;

    .line 231
    iput-object p1, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->val$source:Lcom/maya/open/http/okio/Source;

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

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "throwOnTimeout":Z
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->val$source:Lcom/maya/open/http/okio/Source;

    invoke-interface {v1}, Lcom/maya/open/http/okio/Source;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    const/4 v0, 0x1

    .line 254
    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    .line 255
    nop

    .line 256
    return-void

    .line 254
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v2, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    .line 255
    throw v1
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 4
    .param p1, "sink"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "throwOnTimeout":Z
    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v1}, Lcom/maya/open/http/okio/AsyncTimeout;->enter()V

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->val$source:Lcom/maya/open/http/okio/Source;

    invoke-interface {v1, p1, p2, p3}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .local v1, "result":J
    const/4 v0, 0x1

    .line 238
    nop

    .line 242
    iget-object v3, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v3, v0}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    .line 238
    return-wide v1

    .line 242
    .end local v1    # "result":J
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v2, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    .line 243
    throw v1
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->val$source:Lcom/maya/open/http/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
