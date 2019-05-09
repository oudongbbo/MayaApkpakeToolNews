.class public final Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.java"


# instance fields
.field private final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private isFallback:Z

.field private isFallbackPossible:Z

.field private nextModeIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    .line 48
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    .line 49
    return-void
.end method

.method private isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 2
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 137
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okhttp3/ConnectionSpec;

    invoke-virtual {v1, p1}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x1

    return v1

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/maya/open/http/okhttp3/ConnectionSpec;
    .locals 5
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "tlsConfiguration":Lcom/maya/open/http/okhttp3/ConnectionSpec;
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    .local v1, "i":I
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 60
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/maya/open/http/okhttp3/ConnectionSpec;

    .line 61
    .local v3, "connectionSpec":Lcom/maya/open/http/okhttp3/ConnectionSpec;
    invoke-virtual {v3, p1}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    move-object v0, v3

    .line 63
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    .line 64
    goto :goto_1

    .line 59
    .end local v3    # "connectionSpec":Lcom/maya/open/http/okhttp3/ConnectionSpec;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 78
    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    .line 80
    sget-object v1, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    iget-boolean v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v1, v0, p1, v2}, Lcom/maya/open/http/okhttp3/internal/Internal;->apply(Lcom/maya/open/http/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V

    .line 82
    return-object v0

    .line 72
    :cond_2
    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find acceptable protocols. isFallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", modes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", supported protocols="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public connectionFailed(Ljava/io/IOException;)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    .line 96
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 97
    return v2

    .line 101
    :cond_0
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_1

    .line 102
    return v2

    .line 108
    :cond_1
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_2

    .line 109
    return v2

    .line 114
    :cond_2
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_3

    .line 117
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_3

    .line 118
    return v2

    .line 121
    :cond_3
    instance-of v1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_4

    .line 123
    return v2

    .line 128
    :cond_4
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v1, :cond_6

    instance-of v1, p1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    nop

    :cond_6
    :goto_0
    return v0
.end method
