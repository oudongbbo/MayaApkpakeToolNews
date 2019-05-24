.class Lcom/maya/open/http/okhttp3/internal/connection/RealConnection$1;
.super Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->newWebSocketStreams(Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

.field final synthetic val$streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;ZLcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okio/BufferedSink;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection$1;->this$0:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iput-object p5, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-direct {p0, p2, p3, p4}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okio/BufferedSink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec()Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLcom/maya/open/http/okhttp3/internal/http/HttpCodec;)V

    return-void
.end method
