.class Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;
.super Lcom/maya/open/http/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    iput-object p5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;->val$requestHeaders:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/maya/open/http/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pushObserver:Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;

    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;->val$requestHeaders:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;->onRequest(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    sget-object v2, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->rstStream(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    .line 794
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 796
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method
