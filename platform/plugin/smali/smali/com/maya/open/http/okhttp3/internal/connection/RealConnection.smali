.class public final Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
.super Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;
.source "SourceFile"

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

    .line 110
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    const/4 v0, 0x1

    .line 102
    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 108
    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 111
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    .line 112
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    return-void
.end method

.method private connectSocket(II)V
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v1

    .line 216
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
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 220
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 222
    :try_start_0
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object p2

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->source(Ljava/net/Socket;)Lcom/maya/open/http/okio/Source;

    move-result-object p1

    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    .line 229
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->sink(Ljava/net/Socket;)Lcom/maya/open/http/okio/Sink;

    move-result-object p1

    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    return-void

    :catch_0
    move-exception p1

    .line 224
    new-instance p2, Ljava/net/ConnectException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to connect to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 226
    throw p2
.end method

.method private connectTls(Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 7

    .line 252
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 258
    :try_start_0
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 259
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result v5

    const/4 v6, 0x1

    .line 258
    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 262
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/maya/open/http/okhttp3/ConnectionSpec;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v3

    .line 265
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v5

    .line 264
    invoke-virtual {v3, v1, v4, v5}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 269
    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 270
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-static {v3}, Lcom/maya/open/http/okhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/maya/open/http/okhttp3/Handshake;

    move-result-object v3

    .line 273
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 282
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->certificatePinner()Lcom/maya/open/http/okhttp3/CertificatePinner;

    move-result-object v4

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v5

    .line 282
    invoke-virtual {v4, v0, v5}, Lcom/maya/open/http/okhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 286
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 287
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    .line 289
    :cond_1
    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 290
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->source(Ljava/net/Socket;)Lcom/maya/open/http/okio/Source;

    move-result-object p1

    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    .line 291
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->sink(Ljava/net/Socket;)Lcom/maya/open/http/okio/Sink;

    move-result-object p1

    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 292
    iput-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    if-eqz v2, :cond_2

    .line 294
    invoke-static {v2}, Lcom/maya/open/http/okhttp3/Protocol;->get(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Protocol;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    :goto_0
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->protocol:Lcom/maya/open/http/okhttp3/Protocol;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 302
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    :cond_3
    return-void

    .line 274
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 275
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hostname "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    .line 298
    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 299
    :cond_5
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v1, :cond_6

    .line 302
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 305
    :cond_6
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 307
    throw p1
.end method

.method private connectTunnel(III)V
    .locals 4

    .line 188
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->createTunnelRequest()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectSocket(II)V

    .line 198
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->createTunnel(IILcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    const/4 v3, 0x0

    .line 205
    iput-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 206
    iput-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 207
    iput-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    goto :goto_0

    .line 194
    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many tunnel connections attempted: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createTunnel(IILcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Request;
    .locals 7

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lcom/maya/open/http/okhttp3/internal/Util;->hostHeader(Lcom/maya/open/http/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 319
    :goto_0
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;-><init>(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okio/BufferedSink;)V

    .line 320
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v1}, Lcom/maya/open/http/okio/BufferedSource;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lcom/maya/open/http/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okio/Timeout;

    .line 321
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v1}, Lcom/maya/open/http/okio/BufferedSink;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v1

    int-to-long v4, p2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lcom/maya/open/http/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okio/Timeout;

    .line 322
    invoke-virtual {p3}, Lcom/maya/open/http/okhttp3/Request;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->writeRequest(Lcom/maya/open/http/okhttp3/Headers;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->finishRequest()V

    const/4 v1, 0x0

    .line 324
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->readResponseHeaders(Z)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    .line 325
    invoke-virtual {v1, p3}, Lcom/maya/open/http/okhttp3/Response$Builder;->request(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p3

    .line 326
    invoke-virtual {p3}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object p3

    .line 329
    invoke-static {p3}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->contentLength(Lcom/maya/open/http/okhttp3/Response;)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    const-wide/16 v1, 0x0

    .line 333
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lcom/maya/open/http/okio/Source;

    move-result-object v0

    const v1, 0x7fffffff

    .line 334
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->skipAll(Lcom/maya/open/http/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 335
    invoke-interface {v0}, Lcom/maya/open/http/okio/Source;->close()V

    .line 337
    invoke-virtual {p3}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    .line 349
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->proxyAuthenticator()Lcom/maya/open/http/okhttp3/Authenticator;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-interface {v0, v1, p3}, Lcom/maya/open/http/okhttp3/Authenticator;->authenticate(Lcom/maya/open/http/okhttp3/Route;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "close"

    const-string v2, "Connection"

    .line 352
    invoke-virtual {p3, v2}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    move-object p3, v0

    goto/16 :goto_0

    .line 350
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p3}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 343
    :cond_4
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {p1}, Lcom/maya/open/http/okio/BufferedSource;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {p1}, Lcom/maya/open/http/okio/BufferedSink;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    .line 344
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
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

    return-object v0
.end method

.method private establishProtocol(Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 234
    sget-object p1, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    .line 235
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-void

    .line 239
    :cond_0
    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectTls(Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 241
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_2:Lcom/maya/open/http/okhttp3/Protocol;

    if-ne p1, v0, :cond_1

    .line 242
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 243
    new-instance p1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;-><init>(Z)V

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    .line 244
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okio/BufferedSink;)Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object p1

    .line 245
    invoke-virtual {p1, p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->listener(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;)Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->build()Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    .line 247
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->start()V

    :cond_1
    return-void
.end method

.method public static testConnection(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Route;Ljava/net/Socket;J)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    .locals 1

    .line 117
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    invoke-direct {v0, p0, p1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;-><init>(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Route;)V

    .line 118
    iput-object p2, v0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 119
    iput-wide p3, v0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void
.end method

.method public connect(IIIZ)V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    if-nez v0, :cond_7

    .line 128
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->connectionSpecs()Ljava/util/List;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;

    invoke-direct {v1, v0}, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 131
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-nez v2, :cond_2

    .line 132
    sget-object v2, Lcom/maya/open/http/okhttp3/ConnectionSpec;->CLEARTEXT:Lcom/maya/open/http/okhttp3/ConnectionSpec;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;

    new-instance p2, Ljava/net/UnknownServiceException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CLEARTEXT communication to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " not permitted by network security policy"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 133
    :cond_1
    new-instance p1, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication not enabled for client"

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    move-object v2, v0

    .line 145
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Route;->requiresTunnel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectTunnel(III)V

    goto :goto_2

    .line 148
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectSocket(II)V

    .line 150
    :goto_2
    invoke-direct {p0, v1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->establishProtocol(Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    if-eqz p1, :cond_4

    .line 176
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter p1

    .line 177
    :try_start_1
    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result p2

    iput p2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 178
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_4
    :goto_3
    return-void

    :catch_0
    move-exception v3

    .line 153
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v4}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 154
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v4}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 155
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 156
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 157
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    .line 158
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 159
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    .line 160
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->protocol:Lcom/maya/open/http/okhttp3/Protocol;

    .line 161
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    if-nez v2, :cond_5

    .line 164
    new-instance v2, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;

    invoke-direct {v2, v3}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_4

    .line 166
    :cond_5
    invoke-virtual {v2, v3}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    :goto_4
    if-eqz p4, :cond_6

    .line 169
    invoke-virtual {v1, v3}, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 170
    :cond_6
    throw v2

    .line 125
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handshake()Lcom/maya/open/http/okhttp3/Handshake;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->handshake:Lcom/maya/open/http/okhttp3/Handshake;

    return-object v0
.end method

.method public isEligible(Lcom/maya/open/http/okhttp3/Address;)Z
    .locals 2

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

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHealthy(Z)Z
    .locals 4

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
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->http2Connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->isShutdown()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_1
    if-eqz p1, :cond_3

    .line 430
    :try_start_0
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :try_start_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 433
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->exhausted()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 438
    :try_start_2
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 439
    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v2

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
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 458
    :try_start_0
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result p1

    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 459
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStream(Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;)V
    .locals 1

    .line 452
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->close(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

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

    return-object v0
.end method
