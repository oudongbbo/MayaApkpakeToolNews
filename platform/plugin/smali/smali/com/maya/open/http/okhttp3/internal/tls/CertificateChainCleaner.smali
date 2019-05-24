.class public abstract Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljavax/net/ssl/X509TrustManager;)Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;
    .locals 1

    .line 46
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get([Ljava/security/cert/X509Certificate;)Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;
    .locals 1

    .line 50
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;

    invoke-static {p0}, Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;->get([Ljava/security/cert/X509Certificate;)Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/internal/tls/BasicCertificateChainCleaner;-><init>(Lcom/maya/open/http/okhttp3/internal/tls/TrustRootIndex;)V

    return-object v0
.end method


# virtual methods
.method public abstract clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
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
.end method
