.class public abstract Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;,
        Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljavax/net/ssl/X509TrustManager;)Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;
    .locals 6

    .line 39
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 42
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;

    invoke-direct {v1, p0, v0}, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$AndroidTrustRootIndex;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 44
    :catch_0
    invoke-interface {p0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;->get([Ljava/security/cert/X509Certificate;)Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get([Ljava/security/cert/X509Certificate;)Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;
    .locals 1

    .line 49
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex$BasicTrustRootIndex;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method


# virtual methods
.method public abstract findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
.end method
