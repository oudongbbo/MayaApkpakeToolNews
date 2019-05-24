.class Lcom/maya/open/http/okio/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 231
    iput-object p1, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->val$source:Lcom/maya/open/http/okio/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->val$source:Lcom/maya/open/http/okio/Source;

    invoke-interface {v0}, Lcom/maya/open/http/okio/Source;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 254
    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 252
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    .line 255
    throw v0
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/AsyncTimeout;->enter()V

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->val$source:Lcom/maya/open/http/okio/Source;

    invoke-interface {v0, p1, p2, p3}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x1

    .line 242
    iget-object v0, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {v0, p3}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 240
    :try_start_1
    iget-object p2, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    invoke-virtual {p2, p1}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :goto_0
    iget-object p2, p0, Lcom/maya/open/http/okio/AsyncTimeout$2;->this$0:Lcom/maya/open/http/okio/AsyncTimeout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/maya/open/http/okio/AsyncTimeout;->exit(Z)V

    .line 243
    throw p1
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
