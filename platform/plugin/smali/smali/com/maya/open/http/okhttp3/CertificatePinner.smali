.class public final Lcom/maya/open/http/okhttp3/CertificatePinner;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/CertificatePinner$Builder;,
        Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/maya/open/http/okhttp3/CertificatePinner;


# instance fields
.field private final certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

.field private final pins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/maya/open/http/okhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/CertificatePinner$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/CertificatePinner$Builder;->build()Lcom/maya/open/http/okhttp3/CertificatePinner;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/CertificatePinner;->DEFAULT:Lcom/maya/open/http/okhttp3/CertificatePinner;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;)V
    .locals 0
    .param p2, "certificateChainCleaner"    # Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;",
            ">;",
            "Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;",
            ")V"
        }
    .end annotation

    .line 135
    .local p1, "pins":Ljava/util/Set;, "Ljava/util/Set<Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/CertificatePinner;->pins:Ljava/util/Set;

    .line 137
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/CertificatePinner;->certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    .line 138
    return-void
.end method

.method public static pin(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    .line 244
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sha256/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/maya/open/http/okhttp3/CertificatePinner;->sha256(Ljava/security/cert/X509Certificate;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate pinning requires X509 certificates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sha1(Ljava/security/cert/X509Certificate;)Lcom/maya/open/http/okio/ByteString;
    .locals 1
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .line 251
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->of([B)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->sha1()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static sha256(Ljava/security/cert/X509Certificate;)Lcom/maya/open/http/okio/ByteString;
    .locals 1
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .line 255
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->of([B)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->sha256()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 163
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okhttp3/CertificatePinner;->findMatchingPins(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "pins":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/CertificatePinner;->certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/CertificatePinner;->certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v1, p2, p1}, Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;->clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 170
    :cond_1
    const/4 v1, 0x0

    .local v1, "c":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "certsSize":I
    :goto_0
    if-ge v1, v2, :cond_8

    .line 171
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 174
    .local v3, "x509Certificate":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 175
    .local v4, "sha1":Lcom/maya/open/http/okio/ByteString;
    const/4 v5, 0x0

    .line 177
    .local v5, "sha256":Lcom/maya/open/http/okio/ByteString;
    const/4 v6, 0x0

    .local v6, "p":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "pinsSize":I
    :goto_1
    if-ge v6, v7, :cond_7

    .line 178
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;

    .line 179
    .local v8, "pin":Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;
    iget-object v9, v8, Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const-string v10, "sha256/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 180
    if-nez v5, :cond_2

    invoke-static {v3}, Lcom/maya/open/http/okhttp3/CertificatePinner;->sha256(Ljava/security/cert/X509Certificate;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v5

    .line 181
    :cond_2
    iget-object v9, v8, Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v9, v5}, Lcom/maya/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    return-void

    .line 182
    :cond_3
    iget-object v9, v8, Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const-string v10, "sha1/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 183
    if-nez v4, :cond_4

    invoke-static {v3}, Lcom/maya/open/http/okhttp3/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v4

    .line 184
    :cond_4
    iget-object v9, v8, Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;->hash:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v9, v4}, Lcom/maya/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    return-void

    .line 177
    .end local v8    # "pin":Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 186
    .restart local v8    # "pin":Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;
    :cond_6
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 170
    .end local v3    # "x509Certificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "sha1":Lcom/maya/open/http/okio/ByteString;
    .end local v5    # "sha256":Lcom/maya/open/http/okio/ByteString;
    .end local v6    # "p":I
    .end local v7    # "pinsSize":I
    .end local v8    # "pin":Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "c":I
    .end local v2    # "certsSize":I
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate pinning failure!"

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  Peer certificate chain:"

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    .local v1, "message":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "c":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "certsSize":I
    :goto_2
    if-ge v2, v3, :cond_9

    .line 196
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 197
    .local v4, "x509Certificate":Ljava/security/cert/X509Certificate;
    const-string v5, "\n    "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/maya/open/http/okhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 198
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .end local v4    # "x509Certificate":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 200
    .end local v2    # "c":I
    .end local v3    # "certsSize":I
    :cond_9
    const-string v2, "\n  Pinned certificates for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const/4 v2, 0x0

    .local v2, "p":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "pinsSize":I
    :goto_3
    if-ge v2, v3, :cond_a

    .line 202
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;

    .line 203
    .local v4, "pin":Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;
    const-string v5, "\n    "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .end local v4    # "pin":Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 205
    .end local v2    # "p":I
    .end local v3    # "pinsSize":I
    :cond_a
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public varargs check(Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "peerCertificates"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/maya/open/http/okhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 213
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 141
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 142
    :cond_0
    instance-of v1, p1, Lcom/maya/open/http/okhttp3/CertificatePinner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/CertificatePinner;->certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    move-object v2, p1

    check-cast v2, Lcom/maya/open/http/okhttp3/CertificatePinner;

    iget-object v2, v2, Lcom/maya/open/http/okhttp3/CertificatePinner;->certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    .line 143
    invoke-static {v1, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/CertificatePinner;->pins:Ljava/util/Set;

    move-object v2, p1

    check-cast v2, Lcom/maya/open/http/okhttp3/CertificatePinner;

    iget-object v2, v2, Lcom/maya/open/http/okhttp3/CertificatePinner;->pins:Ljava/util/Set;

    .line 144
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0
.end method

.method findMatchingPins(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 221
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;>;"
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/CertificatePinner;->pins:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;

    .line 222
    .local v2, "pin":Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;
    invoke-virtual {v2, p1}, Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 224
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v2    # "pin":Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;
    :cond_1
    goto :goto_0

    .line 227
    :cond_2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/CertificatePinner;->certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/CertificatePinner;->certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 149
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/CertificatePinner;->pins:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 150
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method withCertificateChainCleaner(Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;)Lcom/maya/open/http/okhttp3/CertificatePinner;
    .locals 2
    .param p1, "certificateChainCleaner"    # Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    .line 232
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/CertificatePinner;->certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    invoke-static {v0, p1}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/maya/open/http/okhttp3/CertificatePinner;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/CertificatePinner;->pins:Ljava/util/Set;

    invoke-direct {v0, v1, p1}, Lcom/maya/open/http/okhttp3/CertificatePinner;-><init>(Ljava/util/Set;Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;)V

    :goto_0
    return-object v0
.end method
