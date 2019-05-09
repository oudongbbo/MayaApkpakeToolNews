.class Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;
.super Lcom/maya/open/http/okio/ForwardingSink;
.source "FaultHidingSink.java"


# instance fields
.field private hasErrors:Z


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okio/Sink;)V
    .locals 0
    .param p1, "delegate"    # Lcom/maya/open/http/okio/Sink;

    .line 29
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/ForwardingSink;-><init>(Lcom/maya/open/http/okio/Sink;)V

    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/maya/open/http/okio/ForwardingSink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 61
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/maya/open/http/okio/ForwardingSink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 51
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 53
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected onException(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;

    .line 66
    return-void
.end method

.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 2
    .param p1, "source"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->skip(J)V

    .line 35
    return-void

    .line 38
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/maya/open/http/okio/ForwardingSink;->write(Lcom/maya/open/http/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 41
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 43
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
