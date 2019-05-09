.class final Lcom/maya/open/http/okhttp3/internal/http2/PushObserver$1;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(ILcom/maya/open/http/okio/BufferedSource;IZ)Z
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "source"    # Lcom/maya/open/http/okio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public onHeaders(ILjava/util/List;Z)Z
    .locals 1
    .param p1, "streamId"    # I
    .param p3, "last"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;Z)Z"
        }
    .end annotation

    .line 85
    .local p2, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onRequest(ILjava/util/List;)Z
    .locals 1
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;)Z"
        }
    .end annotation

    .line 81
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onReset(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 95
    return-void
.end method
