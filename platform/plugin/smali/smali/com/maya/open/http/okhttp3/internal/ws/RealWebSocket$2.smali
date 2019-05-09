.class Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->connect(Lcom/maya/open/http/okhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;

.field final synthetic val$pingIntervalMillis:I

.field final synthetic val$request:Lcom/maya/open/http/okhttp3/Request;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;Lcom/maya/open/http/okhttp3/Request;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;

    .line 181
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;

    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;->val$request:Lcom/maya/open/http/okhttp3/Request;

    iput p3, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;->val$pingIntervalMillis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/maya/open/http/okhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 209
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/maya/open/http/okhttp3/Response;)V

    .line 210
    return-void
.end method

.method public onResponse(Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 6
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/Call;
    .param p2, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0, p2}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->checkResponse(Lcom/maya/open/http/okhttp3/Response;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    nop

    .line 192
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/internal/Internal;->streamAllocation(Lcom/maya/open/http/okhttp3/Call;)Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    .line 193
    .local v0, "streamAllocation":Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 194
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->newWebSocketStreams(Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;

    move-result-object v1

    .line 198
    .local v1, "streams":Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
    :try_start_1
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;

    iget-object v2, v2, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->listener:Lcom/maya/open/http/okhttp3/WebSocketListener;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v2, v3, p2}, Lcom/maya/open/http/okhttp3/WebSocketListener;->onOpen(Lcom/maya/open/http/okhttp3/WebSocket;Lcom/maya/open/http/okhttp3/Response;)V

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OkHttp WebSocket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;->val$request:Lcom/maya/open/http/okhttp3/Request;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;

    iget v4, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;->val$pingIntervalMillis:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;JLcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;)V

    .line 201
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 202
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->loopReader()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/maya/open/http/okhttp3/Response;)V

    .line 206
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 185
    .end local v0    # "streamAllocation":Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
    .end local v1    # "streams":Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/net/ProtocolException;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v1, v0, p2}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/maya/open/http/okhttp3/Response;)V

    .line 187
    invoke-static {p2}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 188
    return-void
.end method
