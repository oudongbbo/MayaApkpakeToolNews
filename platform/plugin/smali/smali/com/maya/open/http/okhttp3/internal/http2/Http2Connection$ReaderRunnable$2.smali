.class Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;
.super Lcom/maya/open/http/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->settings(ZLcom/maya/open/http/okhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method varargs constructor <init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 678
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p0, p2, p3}, Lcom/maya/open/http/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->listener:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;->onSettings(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;)V

    .line 681
    return-void
.end method
