.class final Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;
.super Ljava/io/Reader;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BomAwareReader"
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private closed:Z

.field private delegate:Ljava/io/Reader;

.field private final source:Lcom/maya/open/http/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okio/BufferedSource;Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "source"    # Lcom/maya/open/http/okio/BufferedSource;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 244
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;->source:Lcom/maya/open/http/okio/BufferedSource;

    .line 246
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    .line 247
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;->closed:Z

    .line 262
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->close()V

    .line 267
    :goto_0
    return-void
.end method

.method public read([CII)I
    .locals 4
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;->closed:Z

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    .line 253
    .local v0, "delegate":Ljava/io/Reader;
    if-nez v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;->source:Lcom/maya/open/http/okio/BufferedSource;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->bomAwareCharset(Lcom/maya/open/http/okio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 255
    .local v1, "charset":Ljava/nio/charset/Charset;
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v3}, Lcom/maya/open/http/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v2, p0, Lcom/maya/open/http/okhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    move-object v0, v2

    .line 257
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    return v1

    .line 250
    .end local v0    # "delegate":Ljava/io/Reader;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
