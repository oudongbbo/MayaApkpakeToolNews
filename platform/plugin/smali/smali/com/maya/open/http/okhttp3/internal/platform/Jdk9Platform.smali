.class final Lcom/maya/open/http/okhttp3/internal/platform/Jdk9Platform;
.super Lcom/maya/open/http/okhttp3/internal/platform/Platform;
.source "Jdk9Platform.java"


# instance fields
.field final getProtocolMethod:Ljava/lang/reflect/Method;

.field final setProtocolMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "setProtocolMethod"    # Ljava/lang/reflect/Method;
    .param p2, "getProtocolMethod"    # Ljava/lang/reflect/Method;

    .line 38
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    .line 40
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    .line 41
    return-void
.end method

.method public static buildIfSupported()Lcom/maya/open/http/okhttp3/internal/platform/Jdk9Platform;
    .locals 5

    .line 89
    :try_start_0
    const-class v0, Ljavax/net/ssl/SSLParameters;

    const-string v1, "setApplicationProtocols"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 91
    .local v0, "setProtocolMethod":Ljava/lang/reflect/Method;
    const-class v1, Ljavax/net/ssl/SSLSocket;

    const-string v2, "getApplicationProtocol"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 93
    .local v1, "getProtocolMethod":Ljava/lang/reflect/Method;
    new-instance v2, Lcom/maya/open/http/okhttp3/internal/platform/Jdk9Platform;

    invoke-direct {v2, v0, v1}, Lcom/maya/open/http/okhttp3/internal/platform/Jdk9Platform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 94
    .end local v0    # "setProtocolMethod":Ljava/lang/reflect/Method;
    .end local v1    # "getProtocolMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Protocol;>;"
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 49
    .local v0, "sslParameters":Ljavax/net/ssl/SSLParameters;
    invoke-static {p3}, Lcom/maya/open/http/okhttp3/internal/platform/Jdk9Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 51
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 51
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "sslParameters":Ljavax/net/ssl/SSLParameters;
    .end local v1    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 2
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "protocol":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    return-object v0

    .line 68
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 72
    .end local v0    # "protocol":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on JDK 9+"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
