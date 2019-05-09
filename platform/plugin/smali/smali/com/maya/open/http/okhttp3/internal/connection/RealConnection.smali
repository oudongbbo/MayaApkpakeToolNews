.class public final Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
.super Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;
.source "RealConnection.java"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Connection;


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

.field private handshake:Lcom/maya/open/http/okhttp3/Handshake;

.field private http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lcom/maya/open/http/okhttp3/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lcom/maya/open/http/okhttp3/Route;

.field private sink:Lcom/maya/open/http/okio/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Lcom/maya/open/http/okio/BufferedSource;

.field public successCount:I


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Route;)V
    .locals 2
    .param p1, "connectionPool"    # Lcom/maya/open/http/okhttp3/ConnectionPool;
    .param p2, "route"    # Lcom/maya/open/http/okhttp3/Route;

    .line 110
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    .line 108
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 111
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    .line 112
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    .line 113
    return-void
.end method

.method private connectSocket(II)V
    .locals 6
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 214
    .local v0, "proxy":Ljava/net/Proxy;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v1

    .line 216
    .local v1, "address":Lcom/maya/open/http/okhttp3/Address;
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 220
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v2, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 222
    :try_start_0
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v2

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    nop

    .line 228
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v2}, Lcom/maya/open/http/okio/Okio;->source(Ljava/net/Socket;)Lcom/maya/open/http/okio/Source;

    move-result-object v2

    invoke-static {v2}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v2

    iput-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    .line 229
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v2}, Lcom/maya/open/http/okio/Okio;->sink(Ljava/net/Socket;)Lcom/maya/open/http/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v2

    iput-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 230
    return-void

    .line 223
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Ljava/net/ConnectException;
    new-instance v3, Ljava/net/ConnectException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 225
    .local v3, "ce":Ljava/net/ConnectException;
    invoke-virtual {v3, v2}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 226
    throw v3
.end method

.method private connectTls(Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 10
    .param p1, "connectionSpecSelector"    # Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v0

    .line 253
    .local v0, "address":Lcom/maya/open/http/okhttp3/Address;
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 254
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v2, 0x0

    .line 255
    .local v2, "success":Z
    const/4 v3, 0x0

    move-object v4, v3

    .line 258
    .local v4, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 259
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result v7

    const/4 v8, 0x1

    .line 258
    invoke-virtual {v1, v5, v6, v7, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/SSLSocket;

    move-object v4, v5

    .line 262
    invoke-virtual {p1, v4}, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/maya/open/http/okhttp3/ConnectionSpec;

    move-result-object v5

    .line 263
    .local v5, "connectionSpec":Lcom/maya/open/http/okhttp3/ConnectionSpec;
    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 264
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v6

    .line 265
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v8

    .line 264
    invoke-virtual {v6, v4, v7, v8}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 269
    :cond_0
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 270
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    invoke-static {v6}, Lcom/maya/open/http/okhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/maya/open/http/okhttp3/Handshake;

    move-result-object v6

    .line 273
    .local v6, "unverifiedHandshake":Lcom/maya/open/http/okhttp3/Handshake;
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v7

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 282
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->certificatePinner()Lcom/maya/open/http/okhttp3/CertificatePinner;

    move-result-object v7

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    .line 283
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v9

    .line 282
    invoke-virtual {v7, v8, v9}, Lcom/maya/open/http/okhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 286
    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 287
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v3

    nop

    .line 289
    .local v3, "maybeProtocol":Ljava/lang/String;
    :cond_1
    iput-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 290
    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v7}, Lcom/maya/open/http/okio/Okio;->source(Ljava/net/Socket;)Lcom/maya/open/http/okio/Source;

    move-result-object v7

    invoke-static {v7}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v7

    iput-object v7, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    .line 291
    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v7}, Lcom/maya/open/http/okio/Okio;->sink(Ljava/net/Socket;)Lcom/maya/open/http/okio/Sink;

    move-result-object v7

    invoke-static {v7}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v7

    iput-object v7, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 292
    iput-object v6, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    .line 293
    if-eqz v3, :cond_2

    .line 294
    invoke-static {v3}, Lcom/maya/open/http/okhttp3/Protocol;->get(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Protocol;

    move-result-object v7

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    :goto_0
    iput-object v7, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->protocol:Lcom/maya/open/http/okhttp3/Protocol;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    const/4 v2, 0x1

    .line 301
    .end local v3    # "maybeProtocol":Ljava/lang/String;
    .end local v5    # "connectionSpec":Lcom/maya/open/http/okhttp3/ConnectionSpec;
    .end local v6    # "unverifiedHandshake":Lcom/maya/open/http/okhttp3/Handshake;
    if-eqz v4, :cond_3

    .line 302
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 304
    :cond_3
    if-nez v2, :cond_4

    .line 305
    invoke-static {v4}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 308
    :cond_4
    return-void

    .line 274
    .restart local v5    # "connectionSpec":Lcom/maya/open/http/okhttp3/ConnectionSpec;
    .restart local v6    # "unverifiedHandshake":Lcom/maya/open/http/okhttp3/Handshake;
    :cond_5
    :try_start_1
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 275
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    new-instance v7, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hostname "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not verified:\n    certificate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-static {v3}, Lcom/maya/open/http/okhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n    DN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n    subjectAltNames: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {v3}, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "connectionSpec":Lcom/maya/open/http/okhttp3/ConnectionSpec;
    .end local v6    # "unverifiedHandshake":Lcom/maya/open/http/okhttp3/Handshake;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 297
    :catch_0
    move-exception v3

    .line 298
    .local v3, "e":Ljava/lang/AssertionError;
    :try_start_2
    invoke-static {v3}, Lcom/maya/open/http/okhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 299
    :cond_6
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    .end local v3    # "e":Ljava/lang/AssertionError;
    :goto_1
    if-eqz v4, :cond_7

    .line 302
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 304
    :cond_7
    if-nez v2, :cond_8

    .line 305
    invoke-static {v4}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 307
    :cond_8
    throw v3
.end method

.method private connectTunnel(III)V
    .locals 7
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->createTunnelRequest()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    .line 189
    .local v0, "tunnelRequest":Lcom/maya/open/http/okhttp3/Request;
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v1

    .line 190
    .local v1, "url":Lcom/maya/open/http/okhttp3/HttpUrl;
    const/4 v2, 0x0

    .line 191
    .local v2, "attemptedConnections":I
    const/16 v3, 0x15

    .line 193
    .local v3, "maxAttempts":I
    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v3, :cond_1

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectSocket(II)V

    .line 198
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->createTunnel(IILcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    .line 200
    if-nez v0, :cond_0

    .line 209
    return-void

    .line 204
    :cond_0
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v4}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 205
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 206
    iput-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 207
    iput-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    goto :goto_0

    .line 194
    :cond_1
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many tunnel connections attempted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private createTunnel(IILcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Request;
    .locals 9
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "tunnelRequest"    # Lcom/maya/open/http/okhttp3/Request;
    .param p4, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lcom/maya/open/http/okhttp3/internal/Util;->hostHeader(Lcom/maya/open/http/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "requestLine":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;-><init>(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okio/BufferedSink;)V

    .line 320
    .local v1, "tunnelConnection":Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v2}, Lcom/maya/open/http/okio/BufferedSource;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v2

    int-to-long v5, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v3}, Lcom/maya/open/http/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okio/Timeout;

    .line 321
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v2}, Lcom/maya/open/http/okio/BufferedSink;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v2

    int-to-long v5, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v3}, Lcom/maya/open/http/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okio/Timeout;

    .line 322
    invoke-virtual {p3}, Lcom/maya/open/http/okhttp3/Request;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->writeRequest(Lcom/maya/open/http/okhttp3/Headers;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->finishRequest()V

    .line 324
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->readResponseHeaders(Z)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v2

    .line 325
    invoke-virtual {v2, p3}, Lcom/maya/open/http/okhttp3/Response$Builder;->request(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v2

    .line 329
    .local v2, "response":Lcom/maya/open/http/okhttp3/Response;
    invoke-static {v2}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->contentLength(Lcom/maya/open/http/okhttp3/Response;)J

    move-result-wide v5

    .line 330
    .local v5, "contentLength":J
    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    .line 331
    const-wide/16 v5, 0x0

    .line 333
    :cond_0
    invoke-virtual {v1, v5, v6}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lcom/maya/open/http/okio/Source;

    move-result-object v3

    .line 334
    .local v3, "body":Lcom/maya/open/http/okio/Source;
    const v7, 0x7fffffff

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v7, v8}, Lcom/maya/open/http/okhttp3/internal/Util;->skipAll(Lcom/maya/open/http/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 335
    invoke-interface {v3}, Lcom/maya/open/http/okio/Source;->close()V

    .line 337
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_4

    const/16 v4, 0x197

    if-ne v7, v4, :cond_3

    .line 349
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/Address;->proxyAuthenticator()Lcom/maya/open/http/okhttp3/Authenticator;

    move-result-object v4

    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-interface {v4, v7, v2}, Lcom/maya/open/http/okhttp3/Authenticator;->authenticate(Lcom/maya/open/http/okhttp3/Route;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Request;

    move-result-object p3

    .line 350
    if-eqz p3, :cond_2

    .line 352
    const-string v4, "close"

    const-string v7, "Connection"

    invoke-virtual {v2, v7}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    return-object p3

    .line 361
    .end local v1    # "tunnelConnection":Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;
    .end local v2    # "response":Lcom/maya/open/http/okhttp3/Response;
    .end local v3    # "body":Lcom/maya/open/http/okio/Source;
    .end local v5    # "contentLength":J
    :cond_1
    goto/16 :goto_0

    .line 350
    .restart local v1    # "tunnelConnection":Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;
    .restart local v2    # "response":Lcom/maya/open/http/okhttp3/Response;
    .restart local v3    # "body":Lcom/maya/open/http/okio/Source;
    .restart local v5    # "contentLength":J
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v7, "Failed to authenticate with proxy"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 358
    :cond_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected response code for CONNECT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 343
    :cond_4
    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v7}, Lcom/maya/open/http/okio/BufferedSource;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/maya/open/http/okio/Buffer;->exhausted()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v7}, Lcom/maya/open/http/okio/BufferedSink;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/maya/open/http/okio/Buffer;->exhausted()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 346
    return-object v4

    .line 344
    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v7, "TLS tunnel buffered too many bytes!"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private createTunnelRequest()Lcom/maya/open/http/okhttp3/Request;
    .locals 4

    .line 370
    new-instance v0, Lcom/maya/open/http/okhttp3/Request$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    .line 371
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->url(Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Host"

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    .line 372
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->hostHeader(Lcom/maya/open/http/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 373
    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    .line 374
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request$Builder;->build()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    .line 370
    return-object v0
.end method

.method private establishProtocol(Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 5
    .param p1, "connectionSpecSelector"    # Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 234
    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    .line 235
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 236
    return-void

    .line 239
    :cond_0
    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectTls(Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 241
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    sget-object v1, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_2:Lcom/maya/open/http/okhttp3/Protocol;

    if-ne v0, v1, :cond_1

    .line 242
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 243
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;-><init>(Z)V

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    .line 244
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okio/BufferedSink;)Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->listener(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;)Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->build()Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    .line 247
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->start()V

    .line 249
    :cond_1
    return-void
.end method

.method public static testConnection(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Route;Ljava/net/Socket;J)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    .locals 1
    .param p0, "connectionPool"    # Lcom/maya/open/http/okhttp3/ConnectionPool;
    .param p1, "route"    # Lcom/maya/open/http/okhttp3/Route;
    .param p2, "socket"    # Ljava/net/Socket;
    .param p3, "idleAtNanos"    # J

    .line 117
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    invoke-direct {v0, p0, p1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;-><init>(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Route;)V

    .line 118
    .local v0, "result":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    iput-object p2, v0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 119
    iput-wide p3, v0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 120
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 412
    return-void
.end method

.method public connect(IIIZ)V
    .locals 8
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z

    .line 125
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    if-nez v0, :cond_7

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "routeException":Lcom/maya/open/http/okhttp3/internal/connection/RouteException;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Address;->connectionSpecs()Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/ConnectionSpec;>;"
    new-instance v2, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;

    invoke-direct {v2, v1}, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 131
    .local v2, "connectionSpecSelector":Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    if-nez v3, :cond_2

    .line 132
    sget-object v3, Lcom/maya/open/http/okhttp3/ConnectionSpec;->CLEARTEXT:Lcom/maya/open/http/okhttp3/ConnectionSpec;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "host":Ljava/lang/String;
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v3    # "host":Ljava/lang/String;
    goto :goto_0

    .line 138
    .restart local v3    # "host":Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;

    new-instance v5, Ljava/net/UnknownServiceException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLEARTEXT communication to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not permitted by network security policy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v4

    .line 133
    .end local v3    # "host":Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;

    new-instance v4, Ljava/net/UnknownServiceException;

    const-string v5, "CLEARTEXT communication not enabled for client"

    invoke-direct {v4, v5}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 145
    :cond_2
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Route;->requiresTunnel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectTunnel(III)V

    goto :goto_1

    .line 148
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectSocket(II)V

    .line 150
    :goto_1
    invoke-direct {p0, v2}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->establishProtocol(Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    nop

    .line 175
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    if-eqz v3, :cond_4

    .line 176
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v3

    .line 177
    :try_start_1
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v4

    iput v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 178
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 180
    :cond_4
    :goto_2
    return-void

    .line 152
    :catch_0
    move-exception v3

    .line 153
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v4}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 154
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v4}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 155
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 156
    iput-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 157
    iput-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    .line 158
    iput-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 159
    iput-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    .line 160
    iput-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    .line 161
    iput-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    .line 163
    if-nez v0, :cond_5

    .line 164
    new-instance v4, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;

    invoke-direct {v4, v3}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v0, v4

    goto :goto_3

    .line 166
    :cond_5
    invoke-virtual {v0, v3}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    .line 169
    :goto_3
    if-eqz p4, :cond_6

    invoke-virtual {v2, v3}, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 172
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 170
    .restart local v3    # "e":Ljava/io/IOException;
    :cond_6
    throw v0

    .line 125
    .end local v0    # "routeException":Lcom/maya/open/http/okhttp3/internal/connection/RouteException;
    .end local v1    # "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/ConnectionSpec;>;"
    .end local v2    # "connectionSpecSelector":Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handshake()Lcom/maya/open/http/okhttp3/Handshake;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    return-object v0
.end method

.method public isEligible(Lcom/maya/open/http/okhttp3/Address;)Z
    .locals 2
    .param p1, "address"    # Lcom/maya/open/http/okhttp3/Address;

    .line 380
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    if-ge v0, v1, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route()Lcom/maya/open/http/okhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 380
    :goto_0
    return v0
.end method

.method public isHealthy(Z)Z
    .locals 5
    .param p1, "doExtensiveChecks"    # Z

    .line 420
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->isShutdown()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 428
    :cond_1
    if-eqz p1, :cond_3

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .local v0, "readTimeout":I
    :try_start_1
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 433
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v3}, Lcom/maya/open/http/okio/BufferedSource;->exhausted()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 434
    nop

    .line 438
    :try_start_2
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 434
    return v1

    .line 436
    :cond_2
    nop

    .line 438
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 436
    return v2

    .line 438
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 439
    throw v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 442
    .end local v0    # "readTimeout":I
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/io/IOException;
    return v1

    .line 440
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 444
    nop

    .line 447
    :cond_3
    return v2

    .line 421
    :cond_4
    :goto_0
    return v1
.end method

.method public isMultiplexed()Z
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newCodec(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;
    .locals 4
    .param p1, "client"    # Lcom/maya/open/http/okhttp3/OkHttpClient;
    .param p2, "streamAllocation"    # Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p1, p2, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Codec;-><init>(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;)V

    return-object v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 391
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/maya/open/http/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okio/Timeout;

    .line 392
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/maya/open/http/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okio/Timeout;

    .line 393
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;-><init>(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okio/BufferedSink;)V

    return-object v0
.end method

.method public newWebSocketStreams(Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket$Streams;
    .locals 7
    .param p1, "streamAllocation"    # Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    .line 398
    new-instance v6, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection$1;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    const/4 v2, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection$1;-><init>(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;ZLcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okio/BufferedSink;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)V

    return-object v6
.end method

.method public onSettings(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    .line 457
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 458
    :try_start_0
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v1

    iput v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 459
    monitor-exit v0

    .line 460
    return-void

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStream(Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;)V
    .locals 1
    .param p1, "stream"    # Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->close(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    .line 453
    return-void
.end method

.method public protocol()Lcom/maya/open/http/okhttp3/Protocol;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    return-object v0
.end method

.method public route()Lcom/maya/open/http/okhttp3/Route;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    return-object v0
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    .line 480
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    .line 482
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    .line 484
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    .line 486
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite()Lcom/maya/open/http/okhttp3/CipherSuite;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    return-object v0
.end method
