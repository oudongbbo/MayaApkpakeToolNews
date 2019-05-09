.class public final Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lcom/maya/open/http/okhttp3/WebSocket;
.implements Lcom/maya/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$CancelRunnable;,
        Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;,
        Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;,
        Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Message;,
        Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$PingRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CANCEL_AFTER_CLOSE_MILLIS:J = 0xea60L

.field private static final MAX_QUEUE_SIZE:J = 0x1000000L

.field private static final ONLY_HTTP1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private call:Lcom/maya/open/http/okhttp3/Call;

.field private cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private enqueuedClose:Z

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private failed:Z

.field private final key:Ljava/lang/String;

.field final listener:Lcom/maya/open/http/okhttp3/WebSocketListener;

.field private final messageAndCloseQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final originalRequest:Lcom/maya/open/http/okhttp3/Request;

.field pingCount:I

.field pongCount:I

.field private final pongQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/maya/open/http/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private queueSize:J

.field private final random:Ljava/util/Random;

.field private reader:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketReader;

.field private receivedCloseCode:I

.field private receivedCloseReason:Ljava/lang/String;

.field private streams:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;

.field private writer:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

.field private final writerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    nop

    .line 55
    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/WebSocketListener;Ljava/util/Random;)V
    .locals 3
    .param p1, "request"    # Lcom/maya/open/http/okhttp3/Request;
    .param p2, "listener"    # Lcom/maya/open/http/okhttp3/WebSocketListener;
    .param p3, "random"    # Ljava/util/Random;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    .line 104
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 134
    const-string v0, "GET"

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->originalRequest:Lcom/maya/open/http/okhttp3/Request;

    .line 138
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->listener:Lcom/maya/open/http/okhttp3/WebSocketListener;

    .line 139
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    .line 141
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 142
    .local v0, "nonce":[B
    invoke-virtual {p3, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 143
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->of([B)Lcom/maya/open/http/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    .line 145
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$1;

    invoke-direct {v1, p0}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$1;-><init>(Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;)V

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    .line 155
    return-void

    .line 135
    .end local v0    # "nonce":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request must be GET: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private runWriter()V
    .locals 2

    .line 421
    nop

    .line 423
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 426
    :cond_0
    return-void
.end method

.method private declared-synchronized send(Lcom/maya/open/http/okio/ByteString;I)Z
    .locals 6
    .param p1, "data"    # Lcom/maya/open/http/okio/ByteString;
    .param p2, "formatOpcode"    # I

    monitor-enter p0

    .line 370
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->failed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iget-wide v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 374
    const/16 v0, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return v1

    .line 379
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 380
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Message;

    invoke-direct {v1, p2, p1}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Message;-><init>(ILcom/maya/open/http/okio/ByteString;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 370
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    .line 369
    .end local p1    # "data":Lcom/maya/open/http/okio/ByteString;
    .end local p2    # "formatOpcode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method awaitTermination(ILjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 286
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->call:Lcom/maya/open/http/okhttp3/Call;

    invoke-interface {v0}, Lcom/maya/open/http/okhttp3/Call;->cancel()V

    .line 167
    return-void
.end method

.method checkResponse(Lcom/maya/open/http/okhttp3/Response;)V
    .locals 7
    .param p1, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    .line 220
    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "headerConnection":Ljava/lang/String;
    const-string v1, "Upgrade"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    const-string v1, "Upgrade"

    invoke-virtual {p1, v1}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "headerUpgrade":Ljava/lang/String;
    const-string v2, "websocket"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    const-string v2, "Sec-WebSocket-Accept"

    invoke-virtual {p1, v2}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "headerAccept":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Lcom/maya/open/http/okio/ByteString;->sha1()Lcom/maya/open/http/okio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "acceptExpected":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    return-void

    .line 236
    :cond_0
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' but was \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 228
    .end local v2    # "headerAccept":Ljava/lang/String;
    .end local v3    # "acceptExpected":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    .end local v1    # "headerUpgrade":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    .end local v0    # "headerConnection":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected HTTP 101 response but was \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(ILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 395
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method declared-synchronized close(ILjava/lang/String;J)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cancelAfterCloseMillis"    # J

    monitor-enter p0

    .line 399
    :try_start_0
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "reasonBytes":Lcom/maya/open/http/okio/ByteString;
    if-eqz p2, :cond_1

    .line 403
    invoke-static {p2}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v1

    move-object v0, v1

    .line 404
    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x7b

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason.size() > 123: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 412
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    .line 415
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;

    invoke-direct {v3, p1, v0, p3, p4}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;-><init>(ILcom/maya/open/http/okio/ByteString;J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit p0

    return v1

    .line 409
    :cond_3
    :goto_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 398
    .end local v0    # "reasonBytes":Lcom/maya/open/http/okio/ByteString;
    .end local p1    # "code":I
    .end local p2    # "reason":Ljava/lang/String;
    .end local p3    # "cancelAfterCloseMillis":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public connect(Lcom/maya/open/http/okhttp3/OkHttpClient;)V
    .locals 4
    .param p1, "client"    # Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 170
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->newBuilder()Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    .line 171
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->build()Lcom/maya/open/http/okhttp3/OkHttpClient;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v0

    .line 174
    .local v0, "pingIntervalMillis":I
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->originalRequest:Lcom/maya/open/http/okhttp3/Request;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Request;->newBuilder()Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Upgrade"

    const-string v3, "websocket"

    .line 175
    invoke-virtual {v1, v2, v3}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Connection"

    const-string v3, "Upgrade"

    .line 176
    invoke-virtual {v1, v2, v3}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Key"

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    .line 177
    invoke-virtual {v1, v2, v3}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Version"

    const-string v3, "13"

    .line 178
    invoke-virtual {v1, v2, v3}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->build()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v1

    .line 180
    .local v1, "request":Lcom/maya/open/http/okhttp3/Request;
    sget-object v2, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    invoke-virtual {v2, p1, v1}, Lcom/maya/open/http/okhttp3/internal/Internal;->newWebSocketCall(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->call:Lcom/maya/open/http/okhttp3/Call;

    .line 181
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->call:Lcom/maya/open/http/okhttp3/Call;

    new-instance v3, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;-><init>(Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;Lcom/maya/open/http/okhttp3/Request;I)V

    invoke-interface {v2, v3}, Lcom/maya/open/http/okhttp3/Call;->enqueue(Lcom/maya/open/http/okhttp3/Callback;)V

    .line 212
    return-void
.end method

.method public failWebSocket(Ljava/lang/Exception;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 534
    monitor-enter p0

    .line 535
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 536
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->failed:Z

    .line 537
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->streams:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;

    .line 538
    .local v0, "streamsToClose":Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->streams:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;

    .line 539
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 541
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 544
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->listener:Lcom/maya/open/http/okhttp3/WebSocketListener;

    invoke-virtual {v1, p0, p1, p2}, Lcom/maya/open/http/okhttp3/WebSocketListener;->onFailure(Lcom/maya/open/http/okhttp3/WebSocket;Ljava/lang/Throwable;Lcom/maya/open/http/okhttp3/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 547
    nop

    .line 548
    return-void

    .line 546
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 547
    throw v1

    .line 541
    .end local v0    # "streamsToClose":Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public initReaderAndWriter(Ljava/lang/String;JLcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pingIntervalMillis"    # J
    .param p4, "streams"    # Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    monitor-enter p0

    .line 244
    :try_start_0
    iput-object p4, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->streams:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;

    .line 245
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    iget-boolean v1, p4, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object v2, p4, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;-><init>(ZLcom/maya/open/http/okio/BufferedSink;Ljava/util/Random;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->writer:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    .line 246
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 247
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 248
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$PingRunnable;

    invoke-direct {v4, p0}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$PingRunnable;-><init>(Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v5, p2

    move-wide v7, p2

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 254
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketReader;

    iget-boolean v1, p4, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object v2, p4, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-direct {v0, v1, v2, p0}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketReader;-><init>(ZLcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okhttp3/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->reader:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketReader;

    .line 257
    return-void

    .line 254
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public loopReader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    :goto_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->reader:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method

.method public onReadClose(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 330
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, "toClose":Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
    monitor-enter p0

    .line 334
    :try_start_0
    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    if-ne v2, v0, :cond_3

    .line 335
    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 336
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    .line 337
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->streams:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;

    move-object v1, v0

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->streams:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;

    .line 340
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 343
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 346
    :try_start_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->listener:Lcom/maya/open/http/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Lcom/maya/open/http/okhttp3/WebSocketListener;->onClosing(Lcom/maya/open/http/okhttp3/WebSocket;ILjava/lang/String;)V

    .line 348
    if-eqz v1, :cond_2

    .line 349
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->listener:Lcom/maya/open/http/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Lcom/maya/open/http/okhttp3/WebSocketListener;->onClosed(Lcom/maya/open/http/okhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :cond_2
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 353
    nop

    .line 354
    return-void

    .line 352
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 353
    throw v0

    .line 334
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 330
    .end local v1    # "toClose":Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public onReadMessage(Lcom/maya/open/http/okio/ByteString;)V
    .locals 1
    .param p1, "bytes"    # Lcom/maya/open/http/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->listener:Lcom/maya/open/http/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Lcom/maya/open/http/okhttp3/WebSocketListener;->onMessage(Lcom/maya/open/http/okhttp3/WebSocket;Lcom/maya/open/http/okio/ByteString;)V

    .line 313
    return-void
.end method

.method public onReadMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->listener:Lcom/maya/open/http/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Lcom/maya/open/http/okhttp3/WebSocketListener;->onMessage(Lcom/maya/open/http/okhttp3/WebSocket;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public declared-synchronized onReadPing(Lcom/maya/open/http/okio/ByteString;)V
    .locals 1
    .param p1, "payload"    # Lcom/maya/open/http/okio/ByteString;

    monitor-enter p0

    .line 317
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 321
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->pingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->pingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 317
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 316
    .end local p1    # "payload":Lcom/maya/open/http/okio/ByteString;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReadPong(Lcom/maya/open/http/okio/ByteString;)V
    .locals 1
    .param p1, "buffer"    # Lcom/maya/open/http/okio/ByteString;

    monitor-enter p0

    .line 326
    :try_start_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->pongCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->pongCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 325
    .end local p1    # "buffer":Lcom/maya/open/http/okio/ByteString;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pingCount()I
    .locals 1

    monitor-enter p0

    .line 300
    :try_start_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->pingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pong(Lcom/maya/open/http/okio/ByteString;)Z
    .locals 1
    .param p1, "payload"    # Lcom/maya/open/http/okio/ByteString;

    monitor-enter p0

    .line 387
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 387
    :cond_1
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 386
    .end local p1    # "payload":Lcom/maya/open/http/okio/ByteString;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pongCount()I
    .locals 1

    monitor-enter p0

    .line 304
    :try_start_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->pongCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method processNextFrame()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->reader:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    .line 274
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/maya/open/http/okhttp3/Response;)V

    .line 277
    return v0
.end method

.method public declared-synchronized queueSize()J
    .locals 2

    monitor-enter p0

    .line 162
    :try_start_0
    iget-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->queueSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Lcom/maya/open/http/okhttp3/Request;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->originalRequest:Lcom/maya/open/http/okhttp3/Request;

    return-object v0
.end method

.method public send(Lcom/maya/open/http/okio/ByteString;)Z
    .locals 2
    .param p1, "bytes"    # Lcom/maya/open/http/okio/ByteString;

    .line 364
    if-eqz p1, :cond_0

    .line 365
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->send(Lcom/maya/open/http/okio/ByteString;I)Z

    move-result v0

    return v0

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 359
    if-eqz p1, :cond_0

    .line 360
    invoke-static {p1}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->send(Lcom/maya/open/http/okio/ByteString;I)Z

    move-result v0

    return v0

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method tearDown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 296
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 297
    return-void
.end method

.method writeOneFrame()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "messageOrClose":Ljava/lang/Object;
    const/4 v1, -0x1

    .line 446
    .local v1, "receivedCloseCode":I
    const/4 v2, 0x0

    .line 447
    .local v2, "receivedCloseReason":Ljava/lang/String;
    const/4 v3, 0x0

    .line 449
    .local v3, "streamsToClose":Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
    monitor-enter p0

    .line 450
    :try_start_0
    iget-boolean v4, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->failed:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 451
    monitor-exit p0

    return v5

    .line 454
    :cond_0
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->writer:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    .line 455
    .local v4, "writer":Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;
    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/maya/open/http/okio/ByteString;

    .line 456
    .local v6, "pong":Lcom/maya/open/http/okio/ByteString;
    if-nez v6, :cond_3

    .line 457
    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .line 458
    instance-of v7, v0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v7, :cond_2

    .line 459
    iget v5, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    move v1, v5

    .line 460
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    move-object v2, v5

    .line 461
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 462
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->streams:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;

    move-object v3, v5

    .line 463
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->streams:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;

    .line 464
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto :goto_0

    .line 467
    :cond_1
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$CancelRunnable;

    invoke-direct {v7, p0}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$CancelRunnable;-><init>(Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;)V

    move-object v8, v0

    check-cast v8, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;

    iget-wide v8, v8, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v7, v8, v9, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    iput-object v5, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 470
    :cond_2
    if-nez v0, :cond_3

    .line 471
    monitor-exit p0

    return v5

    .line 474
    :cond_3
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v5, v6

    .line 477
    .end local v6    # "pong":Lcom/maya/open/http/okio/ByteString;
    .local v5, "pong":Lcom/maya/open/http/okio/ByteString;
    if-eqz v5, :cond_4

    .line 478
    :try_start_1
    invoke-virtual {v4, v5}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->writePong(Lcom/maya/open/http/okio/ByteString;)V

    goto :goto_1

    .line 505
    :catchall_0
    move-exception v6

    goto :goto_2

    .line 480
    :cond_4
    instance-of v6, v0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Message;

    if-eqz v6, :cond_5

    .line 481
    move-object v6, v0

    check-cast v6, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Message;

    iget-object v6, v6, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Message;->data:Lcom/maya/open/http/okio/ByteString;

    .line 482
    .local v6, "data":Lcom/maya/open/http/okio/ByteString;
    move-object v7, v0

    check-cast v7, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Message;

    iget v7, v7, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 483
    invoke-virtual {v6}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v8

    int-to-long v8, v8

    .line 482
    invoke-virtual {v4, v7, v8, v9}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->newMessageSink(IJ)Lcom/maya/open/http/okio/Sink;

    move-result-object v7

    invoke-static {v7}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v7

    .line 484
    .local v7, "sink":Lcom/maya/open/http/okio/BufferedSink;
    invoke-interface {v7, v6}, Lcom/maya/open/http/okio/BufferedSink;->write(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/BufferedSink;

    .line 485
    invoke-interface {v7}, Lcom/maya/open/http/okio/BufferedSink;->close()V

    .line 486
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    :try_start_2
    iget-wide v8, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {v6}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 488
    monitor-exit p0

    .line 490
    .end local v6    # "data":Lcom/maya/open/http/okio/ByteString;
    .end local v7    # "sink":Lcom/maya/open/http/okio/BufferedSink;
    goto :goto_1

    .line 488
    .restart local v6    # "data":Lcom/maya/open/http/okio/ByteString;
    .restart local v7    # "sink":Lcom/maya/open/http/okio/BufferedSink;
    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v8

    .line 490
    .end local v6    # "data":Lcom/maya/open/http/okio/ByteString;
    .end local v7    # "sink":Lcom/maya/open/http/okio/BufferedSink;
    :cond_5
    instance-of v6, v0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v6, :cond_7

    .line 491
    move-object v6, v0

    check-cast v6, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;

    .line 492
    .local v6, "close":Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;
    iget v7, v6, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;->code:I

    iget-object v8, v6, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;->reason:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v4, v7, v8}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->writeClose(ILcom/maya/open/http/okio/ByteString;)V

    .line 495
    if-eqz v3, :cond_6

    .line 496
    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->listener:Lcom/maya/open/http/okhttp3/WebSocketListener;

    invoke-virtual {v7, p0, v1, v2}, Lcom/maya/open/http/okhttp3/WebSocketListener;->onClosed(Lcom/maya/open/http/okhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    .end local v6    # "close":Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Close;
    :cond_6
    nop

    .line 503
    :goto_1
    const/4 v6, 0x1

    .line 505
    invoke-static {v3}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 503
    return v6

    .line 500
    :cond_7
    :try_start_4
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 505
    :goto_2
    invoke-static {v3}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    throw v6

    .line 474
    .end local v4    # "writer":Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;
    .end local v5    # "pong":Lcom/maya/open/http/okio/ByteString;
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4
.end method

.method writePingFrame()V
    .locals 3

    .line 520
    monitor-enter p0

    .line 521
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->writer:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    .line 523
    .local v0, "writer":Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :try_start_1
    sget-object v1, Lcom/maya/open/http/okio/ByteString;->EMPTY:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->writePing(Lcom/maya/open/http/okio/ByteString;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 529
    goto :goto_0

    .line 527
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/maya/open/http/okhttp3/Response;)V

    .line 530
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 523
    .end local v0    # "writer":Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
