.class final Lcom/maya/open/http/okio/Okio$3;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/maya/open/http/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okio/Okio;->blackhole()Lcom/maya/open/http/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    return-void
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 207
    sget-object v0, Lcom/maya/open/http/okio/Timeout;->NONE:Lcom/maya/open/http/okio/Timeout;

    return-object v0
.end method

.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 0
    .param p1, "source"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-virtual {p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->skip(J)V

    .line 201
    return-void
.end method
