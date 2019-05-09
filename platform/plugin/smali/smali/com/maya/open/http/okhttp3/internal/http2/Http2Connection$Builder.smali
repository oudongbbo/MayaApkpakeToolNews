.class public Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field client:Z

.field hostname:Ljava/lang/String;

.field listener:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;

.field pushObserver:Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;

.field sink:Lcom/maya/open/http/okio/BufferedSink;

.field socket:Ljava/net/Socket;

.field source:Lcom/maya/open/http/okio/BufferedSource;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "client"    # Z

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;

    .line 510
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;->CANCEL:Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;

    .line 518
    iput-boolean p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    .line 519
    return-void
.end method


# virtual methods
.method public build()Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;)V

    return-object v0
.end method

.method public listener(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;)Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;

    .line 536
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;

    .line 537
    return-object p0
.end method

.method public pushObserver(Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;)Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "pushObserver"    # Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;

    .line 541
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;

    .line 542
    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->source(Ljava/net/Socket;)Lcom/maya/open/http/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v1

    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->sink(Ljava/net/Socket;)Lcom/maya/open/http/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v2

    .line 522
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okio/BufferedSink;)Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okio/BufferedSink;)Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "source"    # Lcom/maya/open/http/okio/BufferedSource;
    .param p4, "sink"    # Lcom/maya/open/http/okio/BufferedSink;

    .line 528
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    .line 529
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    .line 530
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->source:Lcom/maya/open/http/okio/BufferedSource;

    .line 531
    iput-object p4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 532
    return-object p0
.end method
