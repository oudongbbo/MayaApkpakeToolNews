.class public final Lcom/maya/open/http/okhttp3/Handshake;
.super Ljava/lang/Object;
.source "SourceFile"


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Handshake;->tlsVersion:Lcom/maya/open/http/okhttp3/TlsVersion;

    .line 49
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    .line 50
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    .line 51
    iput-object p4, p0, Lcom/maya/open/http/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-void
.end method

.method public static get(Lcom/maya/open/http/okhttp3/TlsVersion;Lcom/maya/open/http/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lcom/maya/open/http/okhttp3/Handshake;
    .locals 1
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

    if-eqz p1, :cond_0

    .line 84
    new-instance v0, Lcom/maya/open/http/okhttp3/Handshake;

    invoke-static {p2}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 85
    invoke-static {p3}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/maya/open/http/okhttp3/Handshake;-><init>(Lcom/maya/open/http/okhttp3/TlsVersion;Lcom/maya/open/http/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "cipherSuite == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Ljavax/net/ssl/SSLSession;)Lcom/maya/open/http/okhttp3/Handshake;
    .locals 4

    .line 55
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 57
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/CipherSuite;

    move-result-object v0

    .line 59
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 61
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/TlsVersion;

    move-result-object v1

    .line 65
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 70
    invoke-static {v2}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 71
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 73
    :goto_1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 75
    invoke-static {p0}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    .line 76
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 78
    :goto_2
    new-instance v3, Lcom/maya/open/http/okhttp3/Handshake;

    invoke-direct {v3, v1, v0, v2, p0}, Lcom/maya/open/http/okhttp3/Handshake;-><init>(Lcom/maya/open/http/okhttp3/TlsVersion;Lcom/maya/open/http/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v3

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "tlsVersion == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cipherSuite == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cipherSuite()Lcom/maya/open/http/okhttp3/CipherSuite;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 126
    instance-of v0, p1, Lcom/maya/open/http/okhttp3/Handshake;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    check-cast p1, Lcom/maya/open/http/okhttp3/Handshake;

    .line 128
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    invoke-static {v0, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    iget-object p1, p1, Lcom/maya/open/http/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    .line 131
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->tlsVersion:Lcom/maya/open/http/okhttp3/TlsVersion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->tlsVersion:Lcom/maya/open/http/okhttp3/TlsVersion;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/TlsVersion;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 137
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->cipherSuite:Lcom/maya/open/http/okhttp3/CipherSuite;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 138
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 139
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
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

    :goto_0
    return-object v0
.end method

.method public tlsVersion()Lcom/maya/open/http/okhttp3/TlsVersion;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Handshake;->tlsVersion:Lcom/maya/open/http/okhttp3/TlsVersion;

    return-object v0
.end method
