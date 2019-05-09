.class public final Lcom/maya/open/http/okhttp3/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field private static final APPROVED_CIPHER_SUITES:[Lcom/maya/open/http/okhttp3/CipherSuite;

.field public static final CLEARTEXT:Lcom/maya/open/http/okhttp3/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Lcom/maya/open/http/okhttp3/ConnectionSpec;

.field public static final MODERN_TLS:Lcom/maya/open/http/okhttp3/ConnectionSpec;


# instance fields
.field final cipherSuites:[Ljava/lang/String;

.field final supportsTlsExtensions:Z

.field final tls:Z

.field final tlsVersions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 46
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/maya/open/http/okhttp3/CipherSuite;

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/16 v7, 0x8

    aput-object v1, v0, v7

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/16 v7, 0x9

    aput-object v1, v0, v7

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/16 v7, 0xa

    aput-object v1, v0, v7

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/16 v7, 0xb

    aput-object v1, v0, v7

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/16 v7, 0xc

    aput-object v1, v0, v7

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/16 v7, 0xd

    aput-object v1, v0, v7

    sget-object v1, Lcom/maya/open/http/okhttp3/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/maya/open/http/okhttp3/CipherSuite;

    const/16 v7, 0xe

    aput-object v1, v0, v7

    sput-object v0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lcom/maya/open/http/okhttp3/CipherSuite;

    .line 69
    new-instance v0, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;-><init>(Z)V

    sget-object v1, Lcom/maya/open/http/okhttp3/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lcom/maya/open/http/okhttp3/CipherSuite;

    .line 70
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->cipherSuites([Lcom/maya/open/http/okhttp3/CipherSuite;)Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v6, [Lcom/maya/open/http/okhttp3/TlsVersion;

    sget-object v6, Lcom/maya/open/http/okhttp3/TlsVersion;->TLS_1_3:Lcom/maya/open/http/okhttp3/TlsVersion;

    aput-object v6, v1, v2

    sget-object v6, Lcom/maya/open/http/okhttp3/TlsVersion;->TLS_1_2:Lcom/maya/open/http/okhttp3/TlsVersion;

    aput-object v6, v1, v3

    sget-object v6, Lcom/maya/open/http/okhttp3/TlsVersion;->TLS_1_1:Lcom/maya/open/http/okhttp3/TlsVersion;

    aput-object v6, v1, v4

    sget-object v4, Lcom/maya/open/http/okhttp3/TlsVersion;->TLS_1_0:Lcom/maya/open/http/okhttp3/TlsVersion;

    aput-object v4, v1, v5

    .line 71
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->tlsVersions([Lcom/maya/open/http/okhttp3/TlsVersion;)Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v3}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->build()Lcom/maya/open/http/okhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->MODERN_TLS:Lcom/maya/open/http/okhttp3/ConnectionSpec;

    .line 76
    new-instance v0, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;

    sget-object v1, Lcom/maya/open/http/okhttp3/ConnectionSpec;->MODERN_TLS:Lcom/maya/open/http/okhttp3/ConnectionSpec;

    invoke-direct {v0, v1}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;-><init>(Lcom/maya/open/http/okhttp3/ConnectionSpec;)V

    new-array v1, v3, [Lcom/maya/open/http/okhttp3/TlsVersion;

    sget-object v4, Lcom/maya/open/http/okhttp3/TlsVersion;->TLS_1_0:Lcom/maya/open/http/okhttp3/TlsVersion;

    aput-object v4, v1, v2

    .line 77
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->tlsVersions([Lcom/maya/open/http/okhttp3/TlsVersion;)Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v3}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->build()Lcom/maya/open/http/okhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lcom/maya/open/http/okhttp3/ConnectionSpec;

    .line 82
    new-instance v0, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;

    invoke-direct {v0, v2}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->build()Lcom/maya/open/http/okhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->CLEARTEXT:Lcom/maya/open/http/okhttp3/ConnectionSpec;

    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->tls:Z

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tls:Z

    .line 91
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 93
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    .line 94
    return-void
.end method

.method private static nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v1, p0

    if-eqz v1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 207
    .local v3, "toFind":Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 208
    const/4 v0, 0x1

    return v0

    .line 206
    .end local v3    # "toFind":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_2
    return v0

    .line 204
    :cond_3
    :goto_1
    return v0
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/maya/open/http/okhttp3/ConnectionSpec;
    .locals 4
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .line 149
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "cipherSuitesIntersection":[Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const-class v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "tlsVersionsIntersection":[Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 159
    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-static {v0, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_2
    new-instance v2, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;

    invoke-direct {v2, p0}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;-><init>(Lcom/maya/open/http/okhttp3/ConnectionSpec;)V

    .line 163
    invoke-virtual {v2, v0}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;

    move-result-object v2

    .line 164
    invoke-virtual {v2, v1}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/ConnectionSpec$Builder;->build()Lcom/maya/open/http/okhttp3/ConnectionSpec;

    move-result-object v2

    .line 162
    return-object v2
.end method


# virtual methods
.method apply(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 2
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/maya/open/http/okhttp3/ConnectionSpec;

    move-result-object v0

    .line 136
    .local v0, "specToApply":Lcom/maya/open/http/okhttp3/ConnectionSpec;
    iget-object v1, v0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, v0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-object v1, v0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, v0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 142
    :cond_1
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/CipherSuite;>;"
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 109
    .local v4, "cipherSuite":Ljava/lang/String;
    invoke-static {v4}, Lcom/maya/open/http/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/CipherSuite;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v4    # "cipherSuite":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 215
    instance-of v0, p1, Lcom/maya/open/http/okhttp3/ConnectionSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 216
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 218
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/maya/open/http/okhttp3/ConnectionSpec;

    .line 219
    .local v2, "that":Lcom/maya/open/http/okhttp3/ConnectionSpec;
    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tls:Z

    iget-boolean v4, v2, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tls:Z

    if-eq v3, v4, :cond_2

    return v1

    .line 221
    :cond_2
    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tls:Z

    if-eqz v3, :cond_5

    .line 222
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v4, v2, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 223
    :cond_3
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v4, v2, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 224
    :cond_4
    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean v4, v2, Lcom/maya/open/http/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    if-eq v3, v4, :cond_5

    return v1

    .line 227
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 231
    const/16 v0, 0x11

    .line 232
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tls:Z

    if-eqz v1, :cond_0

    .line 233
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 234
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 235
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    xor-int/lit8 v2, v2, 0x1

    add-int v0, v1, v2

    .line 237
    :cond_0
    return v0
.end method

.method public isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 180
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tls:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 181
    return v1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    return v1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    return v1

    .line 194
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isTls()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tls:Z

    return v0
.end method

.method public supportsTlsExtensions()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/TlsVersion;>;"
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 123
    .local v4, "tlsVersion":Ljava/lang/String;
    invoke-static {v4}, Lcom/maya/open/http/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/TlsVersion;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v4    # "tlsVersion":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 241
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tls:Z

    if-nez v0, :cond_0

    .line 242
    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "[all enabled]"

    .line 246
    .local v0, "cipherSuitesString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "[all enabled]"

    .line 247
    .local v1, "tlsVersionsString":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tlsVersions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", supportsTlsExtensions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/ConnectionSpec;->supportsTlsExtensions:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
