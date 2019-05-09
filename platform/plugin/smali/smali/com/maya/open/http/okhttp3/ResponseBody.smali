.class public abstract Lcom/maya/open/http/okhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;
    }
.end annotation


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentType()Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v0

    .line 188
    .local v0, "contentType":Lcom/maya/open/http/okhttp3/MediaType;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    return-object v1
.end method

.method public static create(Lcom/maya/open/http/okhttp3/MediaType;JLcom/maya/open/http/okio/BufferedSource;)Lcom/maya/open/http/okhttp3/ResponseBody;
    .locals 2
    .param p0, "contentType"    # Lcom/maya/open/http/okhttp3/MediaType;
    .param p1, "contentLength"    # J
    .param p3, "content"    # Lcom/maya/open/http/okio/BufferedSource;

    .line 221
    if-eqz p3, :cond_0

    .line 222
    new-instance v0, Lcom/maya/open/http/okhttp3/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/maya/open/http/okhttp3/ResponseBody$1;-><init>(Lcom/maya/open/http/okhttp3/MediaType;JLcom/maya/open/http/okio/BufferedSource;)V

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/maya/open/http/okhttp3/MediaType;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/ResponseBody;
    .locals 4
    .param p0, "contentType"    # Lcom/maya/open/http/okhttp3/MediaType;
    .param p1, "content"    # Ljava/lang/String;

    .line 200
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 201
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 203
    if-nez v0, :cond_0

    .line 204
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/http/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object p0

    .line 208
    :cond_0
    new-instance v1, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v1}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/maya/open/http/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/maya/open/http/okio/Buffer;

    move-result-object v1

    .line 209
    .local v1, "buffer":Lcom/maya/open/http/okio/Buffer;
    invoke-virtual {v1}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v1}, Lcom/maya/open/http/okhttp3/ResponseBody;->create(Lcom/maya/open/http/okhttp3/MediaType;JLcom/maya/open/http/okio/BufferedSource;)Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v2

    return-object v2
.end method

.method public static create(Lcom/maya/open/http/okhttp3/MediaType;[B)Lcom/maya/open/http/okhttp3/ResponseBody;
    .locals 3
    .param p0, "contentType"    # Lcom/maya/open/http/okhttp3/MediaType;
    .param p1, "content"    # [B

    .line 214
    new-instance v0, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->write([B)Lcom/maya/open/http/okio/Buffer;

    move-result-object v0

    .line 215
    .local v0, "buffer":Lcom/maya/open/http/okio/Buffer;
    array-length v1, p1

    int-to-long v1, v1

    invoke-static {p0, v1, v2, v0}, Lcom/maya/open/http/okhttp3/ResponseBody;->create(Lcom/maya/open/http/okhttp3/MediaType;JLcom/maya/open/http/okio/BufferedSource;)Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/ResponseBody;->source()Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    .line 134
    .local v0, "contentLength":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/ResponseBody;->source()Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v2

    .line 141
    .local v2, "source":Lcom/maya/open/http/okio/BufferedSource;
    :try_start_0
    invoke-interface {v2}, Lcom/maya/open/http/okio/BufferedSource;->readByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .local v3, "bytes":[B
    invoke-static {v2}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 144
    nop

    .line 145
    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    array-length v4, v3

    int-to-long v4, v4

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Length ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") and stream length ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") disagree"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_1
    :goto_0
    return-object v3

    .line 143
    .end local v3    # "bytes":[B
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 144
    throw v3

    .line 135
    .end local v2    # "source":Lcom/maya/open/http/okio/BufferedSource;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final charStream()Ljava/io/Reader;
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ResponseBody;->reader:Ljava/io/Reader;

    .line 163
    .local v0, "r":Ljava/io/Reader;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/ResponseBody;->source()Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v2

    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;-><init>(Lcom/maya/open/http/okio/BufferedSource;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/ResponseBody;->reader:Ljava/io/Reader;

    :goto_0
    return-object v1
.end method

.method public close()V
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/ResponseBody;->source()Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 193
    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lcom/maya/open/http/okhttp3/MediaType;
.end method

.method public abstract source()Lcom/maya/open/http/okio/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/ResponseBody;->source()Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v0

    .line 179
    .local v0, "source":Lcom/maya/open/http/okio/BufferedSource;
    :try_start_0
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/open/http/okhttp3/internal/Util;->bomAwareCharset(Lcom/maya/open/http/okio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 180
    .local v1, "charset":Ljava/nio/charset/Charset;
    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSource;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 180
    return-object v2

    .line 182
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 183
    throw v1
.end method
