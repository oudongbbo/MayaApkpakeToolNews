.class Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;
.super Lcom/maya/open/http/okio/ForwardingSink;
.source "SourceFile"


# instance fields
.field private hasErrors:Z


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okio/Sink;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/ForwardingSink;-><init>(Lcom/maya/open/http/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

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

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 61
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

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

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 51
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method protected onException(Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->skip(J)V

    return-void

    .line 38
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/maya/open/http/okio/ForwardingSink;->write(Lcom/maya/open/http/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 40
    iput-boolean p2, p0, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 41
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
