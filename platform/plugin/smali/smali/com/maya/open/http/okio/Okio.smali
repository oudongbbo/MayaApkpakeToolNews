.class public final Lcom/maya/open/http/okio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/maya/open/http/okio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Lcom/maya/open/http/okio/Sink;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 184
    if-eqz p0, :cond_0

    .line 185
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lcom/maya/open/http/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/maya/open/http/okio/Sink;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blackhole()Lcom/maya/open/http/okio/Sink;
    .locals 1

    .line 198
    new-instance v0, Lcom/maya/open/http/okio/Okio$3;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Okio$3;-><init>()V

    return-object v0
.end method

.method public static buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1
    .param p0, "sink"    # Lcom/maya/open/http/okio/Sink;

    .line 58
    new-instance v0, Lcom/maya/open/http/okio/RealBufferedSink;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okio/RealBufferedSink;-><init>(Lcom/maya/open/http/okio/Sink;)V

    return-object v0
.end method

.method public static buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;
    .locals 1
    .param p0, "source"    # Lcom/maya/open/http/okio/Source;

    .line 49
    new-instance v0, Lcom/maya/open/http/okio/RealBufferedSource;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okio/RealBufferedSource;-><init>(Lcom/maya/open/http/okio/Source;)V

    return-object v0
.end method

.method static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/AssertionError;

    .line 260
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0
.end method

.method public static sink(Ljava/io/File;)Lcom/maya/open/http/okio/Sink;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 178
    if-eqz p0, :cond_0

    .line 179
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/maya/open/http/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/maya/open/http/okio/Sink;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sink(Ljava/io/OutputStream;)Lcom/maya/open/http/okio/Sink;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 63
    new-instance v0, Lcom/maya/open/http/okio/Timeout;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/maya/open/http/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/maya/open/http/okio/Timeout;)Lcom/maya/open/http/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method private static sink(Ljava/io/OutputStream;Lcom/maya/open/http/okio/Timeout;)Lcom/maya/open/http/okio/Sink;
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "timeout"    # Lcom/maya/open/http/okio/Timeout;

    .line 67
    if-eqz p0, :cond_1

    .line 68
    if-eqz p1, :cond_0

    .line 70
    new-instance v0, Lcom/maya/open/http/okio/Okio$1;

    invoke-direct {v0, p1, p0}, Lcom/maya/open/http/okio/Okio$1;-><init>(Lcom/maya/open/http/okio/Timeout;Ljava/io/OutputStream;)V

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sink(Ljava/net/Socket;)Lcom/maya/open/http/okio/Sink;
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    if-eqz p0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/maya/open/http/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/maya/open/http/okio/AsyncTimeout;

    move-result-object v0

    .line 116
    .local v0, "timeout":Lcom/maya/open/http/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/maya/open/http/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/maya/open/http/okio/Timeout;)Lcom/maya/open/http/okio/Sink;

    move-result-object v1

    .line 117
    .local v1, "sink":Lcom/maya/open/http/okio/Sink;
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/AsyncTimeout;->sink(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/Sink;

    move-result-object v2

    return-object v2

    .line 114
    .end local v0    # "timeout":Lcom/maya/open/http/okio/AsyncTimeout;
    .end local v1    # "sink":Lcom/maya/open/http/okio/Sink;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/maya/open/http/okio/Sink;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    if-eqz p0, :cond_0

    .line 193
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/maya/open/http/okio/Sink;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static source(Ljava/io/File;)Lcom/maya/open/http/okio/Source;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 164
    if-eqz p0, :cond_0

    .line 165
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/maya/open/http/okio/Okio;->source(Ljava/io/InputStream;)Lcom/maya/open/http/okio/Source;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static source(Ljava/io/InputStream;)Lcom/maya/open/http/okio/Source;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .line 122
    new-instance v0, Lcom/maya/open/http/okio/Timeout;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/maya/open/http/okio/Okio;->source(Ljava/io/InputStream;Lcom/maya/open/http/okio/Timeout;)Lcom/maya/open/http/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method private static source(Ljava/io/InputStream;Lcom/maya/open/http/okio/Timeout;)Lcom/maya/open/http/okio/Source;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "timeout"    # Lcom/maya/open/http/okio/Timeout;

    .line 126
    if-eqz p0, :cond_1

    .line 127
    if-eqz p1, :cond_0

    .line 129
    new-instance v0, Lcom/maya/open/http/okio/Okio$2;

    invoke-direct {v0, p1, p0}, Lcom/maya/open/http/okio/Okio$2;-><init>(Lcom/maya/open/http/okio/Timeout;Ljava/io/InputStream;)V

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static source(Ljava/net/Socket;)Lcom/maya/open/http/okio/Source;
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    if-eqz p0, :cond_0

    .line 222
    invoke-static {p0}, Lcom/maya/open/http/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/maya/open/http/okio/AsyncTimeout;

    move-result-object v0

    .line 223
    .local v0, "timeout":Lcom/maya/open/http/okio/AsyncTimeout;
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/maya/open/http/okio/Okio;->source(Ljava/io/InputStream;Lcom/maya/open/http/okio/Timeout;)Lcom/maya/open/http/okio/Source;

    move-result-object v1

    .line 224
    .local v1, "source":Lcom/maya/open/http/okio/Source;
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/AsyncTimeout;->source(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/Source;

    move-result-object v2

    return-object v2

    .line 221
    .end local v0    # "timeout":Lcom/maya/open/http/okio/AsyncTimeout;
    .end local v1    # "source":Lcom/maya/open/http/okio/Source;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/maya/open/http/okio/Source;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    if-eqz p0, :cond_0

    .line 173
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okio/Okio;->source(Ljava/io/InputStream;)Lcom/maya/open/http/okio/Source;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static timeout(Ljava/net/Socket;)Lcom/maya/open/http/okio/AsyncTimeout;
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .line 228
    new-instance v0, Lcom/maya/open/http/okio/Okio$4;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okio/Okio$4;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
