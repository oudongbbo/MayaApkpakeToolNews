.class public final Lcom/maya/open/http/okhttp3/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

.field private final localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final tlsVersion:Lcom/maya/open/http/okhttp3/TlsVersion;


# direct methods
.method private constructor <init>(Lcom/maya/open/http/okhttp3/TlsVersion;Lcom/maya/open/http/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "tlsVersion"    # Lcom/maya/open/http/okhttp3/TlsVersion;
    .param p2, "cipherSuite"    # Lcom/maya/open/http/okhttp3/CipherSuite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/TlsVersion;",
            "Lcom/maya/open/http/okhttp3/CipherSuite;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p3, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p4, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Handshake;->tlsVersion:Lcom/maya/open/http/okhttp3/TlsVersion;

    .line 49
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    .line 50
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    .line 51
    iput-object p4, p0, Lcom/maya/open/http/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    .line 52
    return-void
.end method

.method public static get(Lcom/maya/open/http/okhttp3/TlsVersion;Lcom/maya/open/http/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lcom/maya/open/http/okhttp3/Handshake;
    .locals 3
    .param p0, "tlsVersion"    # Lcom/maya/open/http/okhttp3/TlsVersion;
    .param p1, "cipherSuite"    # Lcom/maya/open/http/okhttp3/CipherSuite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/TlsVersion;",
            "Lcom/maya/open/http/okhttp3/CipherSuite;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lcom/maya/open/http/okhttp3/Handshake;"
        }
    .end annotation

    .line 83
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p3, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz p1, :cond_0

    .line 84
    new-instance v0, Lcom/maya/open/http/okhttp3/Handshake;

    invoke-static {p2}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-static {p3}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/maya/open/http/okhttp3/Handshake;-><init>(Lcom/maya/open/http/okhttp3/TlsVersion;Lcom/maya/open/http/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    .line 84
    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Ljavax/net/ssl/SSLSession;)Lcom/maya/open/http/okhttp3/Handshake;
    .locals 9
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;

    .line 55
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "cipherSuiteString":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 57
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/CipherSuite;

    move-result-object v1

    .line 59
    .local v1, "cipherSuite":Lcom/maya/open/http/okhttp3/CipherSuite;
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "tlsVersionString":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 61
    invoke-static {v2}, Lcom/maya/open/http/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/TlsVersion;

    move-result-object v3

    .line 65
    .local v3, "tlsVersion":Lcom/maya/open/http/okhttp3/TlsVersion;
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .local v4, "peerCertificates":[Ljava/security/cert/Certificate;
    goto :goto_0

    .line 66
    .end local v4    # "peerCertificates":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v4

    .line 67
    .local v4, "ignored":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v4, 0x0

    .line 69
    .local v4, "peerCertificates":[Ljava/security/cert/Certificate;
    :goto_0
    if-eqz v4, :cond_0

    .line 70
    invoke-static {v4}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 71
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 73
    .local v5, "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 74
    .local v6, "localCertificates":[Ljava/security/cert/Certificate;
    if-eqz v6, :cond_1

    .line 75
    invoke-static {v6}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_2

    .line 76
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 78
    .local v7, "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_2
    new-instance v8, Lcom/maya/open/http/okhttp3/Handshake;

    invoke-direct {v8, v3, v1, v5, v7}, Lcom/maya/open/http/okhttp3/Handshake;-><init>(Lcom/maya/open/http/okhttp3/TlsVersion;Lcom/maya/open/http/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 60
    .end local v3    # "tlsVersion":Lcom/maya/open/http/okhttp3/TlsVersion;
    .end local v4    # "peerCertificates":[Ljava/security/cert/Certificate;
    .end local v5    # "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v6    # "localCertificates":[Ljava/security/cert/Certificate;
    .end local v7    # "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "tlsVersion == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    .end local v1    # "cipherSuite":Lcom/maya/open/http/okhttp3/CipherSuite;
    .end local v2    # "tlsVersionString":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cipherSuite == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public cipherSuite()Lcom/maya/open/http/okhttp3/CipherSuite;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 126
    instance-of v0, p1, Lcom/maya/open/http/okhttp3/Handshake;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/maya/open/http/okhttp3/Handshake;

    .line 128
    .local v0, "that":Lcom/maya/open/http/okhttp3/Handshake;
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    invoke-static {v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    .line 130
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    .line 131
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 128
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 135
    const/16 v0, 0x11

    .line 136
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Handshake;->tlsVersion:Lcom/maya/open/http/okhttp3/TlsVersion;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Handshake;->tlsVersion:Lcom/maya/open/http/okhttp3/TlsVersion;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/TlsVersion;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 137
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 138
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 139
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 140
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public localCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-object v0
.end method

.method public localPrincipal()Ljava/security/Principal;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    const/4 v1, 0x0

    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0
.end method

.method public peerCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    return-object v0
.end method

.method public peerPrincipal()Ljava/security/Principal;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    const/4 v1, 0x0

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0
.end method

.method public tlsVersion()Lcom/maya/open/http/okhttp3/TlsVersion;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->tlsVersion:Lcom/maya/open/http/okhttp3/TlsVersion;

    return-object v0
.end method
