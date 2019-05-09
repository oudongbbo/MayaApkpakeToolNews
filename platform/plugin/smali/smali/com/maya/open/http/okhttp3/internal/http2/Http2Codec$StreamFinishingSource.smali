.class Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
.super Lcom/maya/open/http/okio/ForwardingSource;
.source "Http2Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;Lcom/maya/open/http/okio/Source;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;
    .param p2, "delegate"    # Lcom/maya/open/http/okio/Source;

    .line 194
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;

    .line 195
    invoke-direct {p0, p2}, Lcom/maya/open/http/okio/ForwardingSource;-><init>(Lcom/maya/open/http/okio/Source;)V

    .line 196
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

    .line 199
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLcom/maya/open/http/okhttp3/internal/http/HttpCodec;)V

    .line 200
    invoke-super {p0}, Lcom/maya/open/http/okio/ForwardingSource;->close()V

    .line 201
    return-void
.end method
