.class final Lcom/maya/open/http/okhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lcom/maya/open/http/okhttp3/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Lcom/maya/open/http/okhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/maya/open/http/okhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lcom/maya/open/http/okhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/maya/open/http/okhttp3/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 596
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->varyHeaders(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/maya/open/http/okhttp3/Headers;

    .line 597
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 598
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->protocol()Lcom/maya/open/http/okhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    .line 599
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->code:I

    .line 600
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 601
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/maya/open/http/okhttp3/Headers;

    .line 602
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->handshake()Lcom/maya/open/http/okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    .line 603
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 604
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 605
    return-void
.end method

.method public constructor <init>(Lcom/maya/open/http/okio/Source;)V
    .locals 16
    .param p1, "in"    # Lcom/maya/open/http/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 542
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v0

    .line 543
    .local v0, "source":Lcom/maya/open/http/okio/BufferedSource;
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/maya/open/http/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 544
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/maya/open/http/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 545
    new-instance v2, Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-direct {v2}, Lcom/maya/open/http/okhttp3/Headers$Builder;-><init>()V

    .line 546
    .local v2, "varyHeadersBuilder":Lcom/maya/open/http/okhttp3/Headers$Builder;
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/Cache;->readInt(Lcom/maya/open/http/okio/BufferedSource;)I

    move-result v3

    .line 547
    .local v3, "varyRequestHeaderLineCount":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 548
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/maya/open/http/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    .line 547
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 550
    .end local v5    # "i":I
    :cond_0
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Headers$Builder;->build()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v5

    iput-object v5, v1, Lcom/maya/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/maya/open/http/okhttp3/Headers;

    .line 552
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/internal/http/StatusLine;

    move-result-object v5

    .line 553
    .local v5, "statusLine":Lcom/maya/open/http/okhttp3/internal/http/StatusLine;
    iget-object v6, v5, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    iput-object v6, v1, Lcom/maya/open/http/okhttp3/Cache$Entry;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    .line 554
    iget v6, v5, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->code:I

    iput v6, v1, Lcom/maya/open/http/okhttp3/Cache$Entry;->code:I

    .line 555
    iget-object v6, v5, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v6, v1, Lcom/maya/open/http/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 556
    new-instance v6, Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-direct {v6}, Lcom/maya/open/http/okhttp3/Headers$Builder;-><init>()V

    .line 557
    .local v6, "responseHeadersBuilder":Lcom/maya/open/http/okhttp3/Headers$Builder;
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/Cache;->readInt(Lcom/maya/open/http/okio/BufferedSource;)I

    move-result v7

    .line 558
    .local v7, "responseHeaderLineCount":I
    nop

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_1

    .line 559
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/maya/open/http/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    .line 558
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 561
    .end local v4    # "i":I
    :cond_1
    sget-object v4, Lcom/maya/open/http/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/maya/open/http/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 562
    .local v4, "sendRequestMillisString":Ljava/lang/String;
    sget-object v8, Lcom/maya/open/http/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/maya/open/http/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 563
    .local v8, "receivedResponseMillisString":Ljava/lang/String;
    sget-object v9, Lcom/maya/open/http/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/maya/open/http/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    .line 564
    sget-object v9, Lcom/maya/open/http/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/maya/open/http/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    .line 565
    const-wide/16 v9, 0x0

    if-eqz v4, :cond_2

    .line 566
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_2

    :cond_2
    move-wide v11, v9

    :goto_2
    iput-wide v11, v1, Lcom/maya/open/http/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 568
    if-eqz v8, :cond_3

    .line 569
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    nop

    :cond_3
    iput-wide v9, v1, Lcom/maya/open/http/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 571
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Headers$Builder;->build()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v9

    iput-object v9, v1, Lcom/maya/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/maya/open/http/okhttp3/Headers;

    .line 573
    invoke-direct/range {p0 .. p0}, Lcom/maya/open/http/okhttp3/Cache$Entry;->isHttps()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_6

    .line 574
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v9

    .line 575
    .local v9, "blank":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_5

    .line 578
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    .line 579
    .local v11, "cipherSuiteString":Ljava/lang/String;
    invoke-static {v11}, Lcom/maya/open/http/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/CipherSuite;

    move-result-object v12

    .line 580
    .local v12, "cipherSuite":Lcom/maya/open/http/okhttp3/CipherSuite;
    invoke-direct {v1, v0}, Lcom/maya/open/http/okhttp3/Cache$Entry;->readCertificateList(Lcom/maya/open/http/okio/BufferedSource;)Ljava/util/List;

    move-result-object v13

    .line 581
    .local v13, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {v1, v0}, Lcom/maya/open/http/okhttp3/Cache$Entry;->readCertificateList(Lcom/maya/open/http/okio/BufferedSource;)Ljava/util/List;

    move-result-object v14

    .line 582
    .local v14, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->exhausted()Z

    move-result v15

    if-nez v15, :cond_4

    .line 583
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/maya/open/http/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/TlsVersion;

    move-result-object v10

    nop

    .line 585
    .local v10, "tlsVersion":Lcom/maya/open/http/okhttp3/TlsVersion;
    :cond_4
    invoke-static {v10, v12, v13, v14}, Lcom/maya/open/http/okhttp3/Handshake;->get(Lcom/maya/open/http/okhttp3/TlsVersion;Lcom/maya/open/http/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lcom/maya/open/http/okhttp3/Handshake;

    move-result-object v15

    iput-object v15, v1, Lcom/maya/open/http/okhttp3/Cache$Entry;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    .line 586
    .end local v9    # "blank":Ljava/lang/String;
    .end local v10    # "tlsVersion":Lcom/maya/open/http/okhttp3/TlsVersion;
    .end local v11    # "cipherSuiteString":Ljava/lang/String;
    .end local v12    # "cipherSuite":Lcom/maya/open/http/okhttp3/CipherSuite;
    .end local v13    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v14    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    goto :goto_3

    .line 576
    .restart local v9    # "blank":Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "expected \"\" but was \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 587
    .end local v9    # "blank":Ljava/lang/String;
    :cond_6
    iput-object v10, v1, Lcom/maya/open/http/okhttp3/Cache$Entry;->handshake:Lcom/maya/open/http/okhttp3/Handshake;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    .end local v0    # "source":Lcom/maya/open/http/okio/BufferedSource;
    .end local v2    # "varyHeadersBuilder":Lcom/maya/open/http/okhttp3/Headers$Builder;
    .end local v3    # "varyRequestHeaderLineCount":I
    .end local v4    # "sendRequestMillisString":Ljava/lang/String;
    .end local v5    # "statusLine":Lcom/maya/open/http/okhttp3/internal/http/StatusLine;
    .end local v6    # "responseHeadersBuilder":Lcom/maya/open/http/okhttp3/Headers$Builder;
    .end local v7    # "responseHeaderLineCount":I
    .end local v8    # "receivedResponseMillisString":Ljava/lang/String;
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/maya/open/http/okio/Source;->close()V

    .line 591
    nop

    .line 592
    return-void

    .line 590
    :catchall_0
    move-exception v0

    invoke-interface/range {p1 .. p1}, Lcom/maya/open/http/okio/Source;->close()V

    .line 591
    throw v0
.end method

.method private isHttps()Z
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lcom/maya/open/http/okio/BufferedSource;)Ljava/util/List;
    .locals 7
    .param p1, "source"    # Lcom/maya/open/http/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okio/BufferedSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/Cache;->readInt(Lcom/maya/open/http/okio/BufferedSource;)I

    move-result v0

    .line 663
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 666
    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 667
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 669
    invoke-interface {p1}, Lcom/maya/open/http/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, "line":Ljava/lang/String;
    new-instance v5, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v5}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    .line 671
    .local v5, "bytes":Lcom/maya/open/http/okio/Buffer;
    invoke-static {v4}, Lcom/maya/open/http/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/maya/open/http/okio/Buffer;->write(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/Buffer;

    .line 672
    invoke-virtual {v5}, Lcom/maya/open/http/okio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "bytes":Lcom/maya/open/http/okio/Buffer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 675
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v1

    .line 676
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeCertList(Lcom/maya/open/http/okio/BufferedSink;Ljava/util/List;)V
    .locals 6
    .param p1, "sink"    # Lcom/maya/open/http/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okio/BufferedSink;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeDecimalLong(J)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v0

    .line 684
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 685
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 686
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 687
    .local v3, "bytes":[B
    invoke-static {v3}, Lcom/maya/open/http/okio/ByteString;->of([B)Lcom/maya/open/http/okio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/maya/open/http/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v4

    .line 688
    .local v4, "line":Ljava/lang/String;
    invoke-interface {p1, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v5

    .line 689
    invoke-interface {v5, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v3    # "bytes":[B
    .end local v4    # "line":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 693
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_0
    nop

    .line 694
    return-void

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public matches(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/Response;)Z
    .locals 2
    .param p1, "request"    # Lcom/maya/open/http/okhttp3/Request;
    .param p2, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 697
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 698
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/maya/open/http/okhttp3/Headers;

    .line 699
    invoke-static {p2, v0, p1}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->varyMatches(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 697
    :goto_0
    return v0
.end method

.method public response(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;)Lcom/maya/open/http/okhttp3/Response;
    .locals 6
    .param p1, "snapshot"    # Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 703
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/maya/open/http/okhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "contentType":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/maya/open/http/okhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "contentLength":Ljava/lang/String;
    new-instance v2, Lcom/maya/open/http/okhttp3/Request$Builder;

    invoke-direct {v2}, Lcom/maya/open/http/okhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 706
    invoke-virtual {v2, v3}, Lcom/maya/open/http/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 707
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/maya/open/http/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/maya/open/http/okhttp3/Headers;

    .line 708
    invoke-virtual {v2, v3}, Lcom/maya/open/http/okhttp3/Request$Builder;->headers(Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v2

    .line 709
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Request$Builder;->build()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v2

    .line 710
    .local v2, "cacheRequest":Lcom/maya/open/http/okhttp3/Request;
    new-instance v3, Lcom/maya/open/http/okhttp3/Response$Builder;

    invoke-direct {v3}, Lcom/maya/open/http/okhttp3/Response$Builder;-><init>()V

    .line 711
    invoke-virtual {v3, v2}, Lcom/maya/open/http/okhttp3/Response$Builder;->request(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    .line 712
    invoke-virtual {v3, v4}, Lcom/maya/open/http/okhttp3/Response$Builder;->protocol(Lcom/maya/open/http/okhttp3/Protocol;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget v4, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->code:I

    .line 713
    invoke-virtual {v3, v4}, Lcom/maya/open/http/okhttp3/Response$Builder;->code(I)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 714
    invoke-virtual {v3, v4}, Lcom/maya/open/http/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/maya/open/http/okhttp3/Headers;

    .line 715
    invoke-virtual {v3, v4}, Lcom/maya/open/http/okhttp3/Response$Builder;->headers(Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v3

    new-instance v4, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;

    invoke-direct {v4, p1, v0, v1}, Lcom/maya/open/http/okhttp3/Cache$CacheResponseBody;-><init>(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v3, v4}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    .line 717
    invoke-virtual {v3, v4}, Lcom/maya/open/http/okhttp3/Response$Builder;->handshake(Lcom/maya/open/http/okhttp3/Handshake;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget-wide v4, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 718
    invoke-virtual {v3, v4, v5}, Lcom/maya/open/http/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v3

    iget-wide v4, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 719
    invoke-virtual {v3, v4, v5}, Lcom/maya/open/http/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v3

    .line 720
    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v3

    .line 710
    return-object v3
.end method

.method public writeTo(Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 6
    .param p1, "editor"    # Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lcom/maya/open/http/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v0

    .line 610
    .local v0, "sink":Lcom/maya/open/http/okio/BufferedSink;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    .line 611
    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 612
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    .line 613
    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 614
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/maya/open/http/okhttp3/Headers;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeDecimalLong(J)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    .line 615
    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 616
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/maya/open/http/okhttp3/Headers;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 617
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/maya/open/http/okhttp3/Headers;

    invoke-virtual {v4, v1}, Lcom/maya/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v4

    const-string v5, ": "

    .line 618
    invoke-interface {v4, v5}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v4

    iget-object v5, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->varyHeaders:Lcom/maya/open/http/okhttp3/Headers;

    .line 619
    invoke-virtual {v5, v1}, Lcom/maya/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v4

    .line 620
    invoke-interface {v4, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_0
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    iget v4, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->code:I

    iget-object v5, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;-><init>(Lcom/maya/open/http/okhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    .line 624
    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 625
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/maya/open/http/okhttp3/Headers;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeDecimalLong(J)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    .line 626
    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 627
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/maya/open/http/okhttp3/Headers;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v3

    .restart local v3    # "size":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 628
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/maya/open/http/okhttp3/Headers;

    invoke-virtual {v4, v1}, Lcom/maya/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v4

    const-string v5, ": "

    .line 629
    invoke-interface {v4, v5}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v4

    iget-object v5, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->responseHeaders:Lcom/maya/open/http/okhttp3/Headers;

    .line 630
    invoke-virtual {v5, v1}, Lcom/maya/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v4

    .line 631
    invoke-interface {v4, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 633
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_1
    sget-object v1, Lcom/maya/open/http/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    const-string v3, ": "

    .line 634
    invoke-interface {v1, v3}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    iget-wide v3, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 635
    invoke-interface {v1, v3, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeDecimalLong(J)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    .line 636
    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 637
    sget-object v1, Lcom/maya/open/http/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    const-string v3, ": "

    .line 638
    invoke-interface {v1, v3}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    iget-wide v3, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 639
    invoke-interface {v1, v3, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeDecimalLong(J)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    .line 640
    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 642
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/Cache$Entry;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 643
    invoke-interface {v0, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 644
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite()Lcom/maya/open/http/okhttp3/CipherSuite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    .line 645
    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 646
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/maya/open/http/okhttp3/Cache$Entry;->writeCertList(Lcom/maya/open/http/okio/BufferedSink;Ljava/util/List;)V

    .line 647
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/maya/open/http/okhttp3/Cache$Entry;->writeCertList(Lcom/maya/open/http/okio/BufferedSink;Ljava/util/List;)V

    .line 649
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Handshake;->tlsVersion()Lcom/maya/open/http/okhttp3/TlsVersion;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 650
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cache$Entry;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Handshake;->tlsVersion()Lcom/maya/open/http/okhttp3/TlsVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v1

    .line 651
    invoke-interface {v1, v2}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 654
    :cond_2
    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->close()V

    .line 655
    return-void
.end method
