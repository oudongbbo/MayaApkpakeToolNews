.class Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;
.super Lcom/maya/open/http/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(Lcom/maya/open/http/okhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field final synthetic val$peerSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;


# direct methods
.method varargs constructor <init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lcom/maya/open/http/okhttp3/internal/http2/Settings;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iput-object p4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->val$peerSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    invoke-direct {p0, p2, p3}, Lcom/maya/open/http/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->val$peerSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lcom/maya/open/http/okhttp3/internal/http2/Settings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
