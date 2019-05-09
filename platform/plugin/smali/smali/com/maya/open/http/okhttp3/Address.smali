.class public final Lcom/maya/open/http/okhttp3/Address;
.super Ljava/lang/Object;
.source "Address.java"


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
    .param p1, "uriHost"    # Ljava/lang/String;
    .param p2, "uriPort"    # I
    .param p3, "dns"    # Lcom/maya/open/http/okhttp3/Dns;
    .param p4, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .param p7, "certificatePinner"    # Lcom/maya/open/http/okhttp3/CertificatePinner;
    .param p8, "proxyAuthenticator"    # Lcom/maya/open/http/okhttp3/Authenticator;
    .param p9, "proxy"    # Ljava/net/Proxy;
    .param p12, "proxySelector"    # Ljava/net/ProxySelector;
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
    .local p10, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Protocol;>;"
    .local p11, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/ConnectionSpec;>;"
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

    move-result-object v0

    .line 66
    invoke-virtual {v0, p2}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->port(I)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->build()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    .line 69
    if-eqz p3, :cond_6

    .line 70
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/Address;->dns:Lcom/maya/open/http/okhttp3/Dns;

    .line 72
    if-eqz p4, :cond_5

    .line 73
    iput-object p4, p0, Lcom/maya/open/http/okhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    .line 75
    if-eqz p8, :cond_4

    .line 78
    iput-object p8, p0, Lcom/maya/open/http/okhttp3/Address;->proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    .line 80
    if-eqz p10, :cond_3

    .line 81
    invoke-static {p10}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->protocols:Ljava/util/List;

    .line 83
    if-eqz p11, :cond_2

    .line 84
    invoke-static {p11}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 86
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

    .line 93
    return-void

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 162
    instance-of v0, p1, Lcom/maya/open/http/okhttp3/Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 163
    move-object v0, p1

    check-cast v0, Lcom/maya/open/http/okhttp3/Address;

    .line 164
    .local v0, "that":Lcom/maya/open/http/okhttp3/Address;
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Address;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    invoke-virtual {v2, v3}, Lcom/maya/open/http/okhttp3/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->dns:Lcom/maya/open/http/okhttp3/Dns;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Address;->dns:Lcom/maya/open/http/okhttp3/Dns;

    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Address;->proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->protocols:Ljava/util/List;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Address;->protocols:Ljava/util/List;

    .line 167
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 168
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 170
    invoke-static {v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 171
    invoke-static {v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 172
    invoke-static {v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Address;->certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

    .line 173
    invoke-static {v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 164
    :cond_0
    return v1

    .line 175
    .end local v0    # "that":Lcom/maya/open/http/okhttp3/Address;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 179
    const/16 v0, 0x11

    .line 180
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/HttpUrl;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 181
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->dns:Lcom/maya/open/http/okhttp3/Dns;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 182
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 183
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 184
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 185
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 186
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 187
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    .line 188
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v1, v2

    .line 189
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Address;->certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/CertificatePinner;->hashCode()I

    move-result v3

    nop

    :cond_3
    add-int/2addr v0, v3

    .line 190
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
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

    move-result-object v0

    .line 198
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 199
    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 201
    :cond_0
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    :goto_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public url()Lcom/maya/open/http/okhttp3/HttpUrl;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Address;->url:Lcom/maya/open/http/okhttp3/HttpUrl;

    return-object v0
.end method
