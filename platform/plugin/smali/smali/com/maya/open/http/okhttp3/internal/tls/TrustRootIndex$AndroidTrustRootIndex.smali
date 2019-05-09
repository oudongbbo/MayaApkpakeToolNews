.class final Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;
.super Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;
.source "TrustRootIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AndroidTrustRootIndex"
.end annotation


# instance fields
.field private final findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

.field private final trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
    .param p2, "findByIssuerAndSignatureMethod"    # Ljava/lang/reflect/Method;

    .line 65
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 67
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 87
    return v0

    .line 89
    :cond_0
    instance-of v1, p1, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 90
    return v2

    .line 92
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;

    .line 93
    .local v1, "that":Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    iget-object v4, v1, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iget-object v4, v1, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 93
    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 72
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 74
    .local v1, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    move-object v0, v2

    goto :goto_0

    .line 75
    :cond_0
    nop

    .line 74
    :goto_0
    return-object v0

    .line 79
    .end local v1    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    return-object v0

    .line 77
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
