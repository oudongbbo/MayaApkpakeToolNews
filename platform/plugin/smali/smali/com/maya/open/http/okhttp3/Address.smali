.class public final Lcom/maya/open/http/okhttp3/Address;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final dns:Lcom/maya/open/http/okhttp3/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final url:Lcom/maya/open/http/okhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/maya/open/http/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/maya/open/http/okhttp3/CertificatePinner;Lcom/maya/open/http/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/maya/open/http/okhttp3/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/maya/open/http/okhttp3/CertificatePinner;",
            "Lcom/maya/open/http/okhttp3/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Protocol;",
            ">;",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;-><init>()V

    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    .line 64
    :goto_0
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->port(I)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->build()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Address;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    if-eqz p3, :cond_6

    .line 70
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/Address;->dns:Lcom/maya/open/http/okhttp3/Dns;

    if-eqz p4, :cond_5

    .line 73
    iput-object p4, p0, Lcom/maya/open/http/okhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    if-eqz p8, :cond_4

    .line 78
    iput-object p8, p0, Lcom/maya/open/http/okhttp3/Address;->proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    if-eqz p10, :cond_3

    .line 81
    invoke-static {p10}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Address;->protocols:Ljava/util/List;

    if-eqz p11, :cond_2

    .line 84
    invoke-static {p11}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    if-eqz p12, :cond_1

    .line 87
    iput-object p12, p0, Lcom/maya/open/http/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 89
    iput-object p9, p0, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 90
    iput-object p5, p0, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 91
    iput-object p6, p0, Lcom/maya/open/http/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 92
    iput-object p7, p0, Lcom/maya/open/http/okhttp3/Address;->certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

    return-void

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connectionSpecs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyAuthenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "socketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public certificatePinner()Lcom/maya/open/http/okhttp3/CertificatePinner;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public dns()Lcom/maya/open/http/okhttp3/Dns;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->dns:Lcom/maya/open/http/okhttp3/Dns;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 162
    instance-of v0, p1, Lcom/maya/open/http/okhttp3/Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 163
    check-cast p1, Lcom/maya/open/http/okhttp3/Address;

    .line 164
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/Address;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    invoke-virtual {v0, v2}, Lcom/maya/open/http/okhttp3/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->dns:Lcom/maya/open/http/okhttp3/Dns;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/Address;->dns:Lcom/maya/open/http/okhttp3/Dns;

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/Address;->proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->protocols:Ljava/util/List;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/Address;->protocols:Ljava/util/List;

    .line 167
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 168
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 170
    invoke-static {v0, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 171
    invoke-static {v0, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 172
    invoke-static {v0, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

    iget-object p1, p1, Lcom/maya/open/http/okhttp3/Address;->certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

    .line 173
    invoke-static {v0, p1}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 181
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->dns:Lcom/maya/open/http/okhttp3/Dns;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 182
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 183
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 184
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 185
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 186
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 187
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 188
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 189
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/CertificatePinner;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v1, v2

    return v1
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lcom/maya/open/http/okhttp3/Authenticator;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address{"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Address;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    .line 196
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Address;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    const-string v1, ", proxy="

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ", proxySelector="

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Lcom/maya/open/http/okhttp3/HttpUrl;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    return-object v0
.end method
