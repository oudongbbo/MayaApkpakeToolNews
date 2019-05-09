.class public final Lcom/maya/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;
.super Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;
.source "BasicCertificateChainCleaner.java"


# static fields
.field private static final MAX_SIGNERS:I = 0x9


# instance fields
.field private final trustRootIndex:Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;)V
    .locals 0
    .param p1, "trustRootIndex"    # Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;

    .line 47
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;

    .line 49
    return-void
.end method

.method private verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p1, "toVerify"    # Ljava/security/cert/X509Certificate;
    .param p2, "signingCert"    # Ljava/security/cert/X509Certificate;

    .line 110
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v0, 0x1

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "verifyFailed":Ljava/security/GeneralSecurityException;
    return v1
.end method


# virtual methods
.method public clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 60
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 61
    .local v0, "queue":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/security/cert/Certificate;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const/4 v2, 0x0

    .line 66
    .local v2, "foundTrustedCertificate":Z
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_0
    const/16 v4, 0x9

    if-ge v3, v4, :cond_7

    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 72
    .local v4, "toVerify":Ljava/security/cert/X509Certificate;
    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;

    invoke-virtual {v6, v4}, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 73
    .local v6, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_3

    .line 74
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v5, :cond_0

    invoke-virtual {v4, v6}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 75
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1
    invoke-direct {p0, v6, v6}, Lcom/maya/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    return-object v1

    .line 80
    :cond_2
    const/4 v2, 0x1

    .line 81
    goto :goto_2

    .line 86
    :cond_3
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/Certificate;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 87
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 88
    .local v7, "signingCert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v4, v7}, Lcom/maya/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 89
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 90
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    nop

    .line 66
    .end local v4    # "toVerify":Ljava/security/cert/X509Certificate;
    .end local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/Certificate;>;"
    .end local v6    # "trustedCert":Ljava/security/cert/X509Certificate;
    .end local v7    # "signingCert":Ljava/security/cert/X509Certificate;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .restart local v4    # "toVerify":Ljava/security/cert/X509Certificate;
    .restart local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/Certificate;>;"
    .restart local v6    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_4
    goto :goto_1

    .line 96
    .end local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/Certificate;>;"
    :cond_5
    if-eqz v2, :cond_6

    .line 97
    return-object v1

    .line 101
    :cond_6
    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find a trusted cert that signed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 105
    .end local v3    # "c":I
    .end local v4    # "toVerify":Ljava/security/cert/X509Certificate;
    .end local v6    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_7
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate chain too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 124
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 125
    :cond_0
    instance-of v1, p1, Lcom/maya/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/maya/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
