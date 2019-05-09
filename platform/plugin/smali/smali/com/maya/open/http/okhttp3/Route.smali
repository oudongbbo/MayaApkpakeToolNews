.class public final Lcom/maya/open/http/okhttp3/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final address:Lcom/maya/open/http/okhttp3/Address;

.field final inetSocketAddress:Ljava/net/InetSocketAddress;

.field final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "address"    # Lcom/maya/open/http/okhttp3/Address;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "inetSocketAddress"    # Ljava/net/InetSocketAddress;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-eqz p1, :cond_2

    .line 48
    if-eqz p2, :cond_1

    .line 51
    if-eqz p3, :cond_0

    .line 54
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Route;->address:Lcom/maya/open/http/okhttp3/Address;

    .line 55
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 56
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 57
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public address()Lcom/maya/open/http/okhttp3/Address;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Route;->address:Lcom/maya/open/http/okhttp3/Address;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    instance-of v0, p1, Lcom/maya/open/http/okhttp3/Route;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p1

    check-cast v0, Lcom/maya/open/http/okhttp3/Route;

    .line 88
    .local v0, "other":Lcom/maya/open/http/okhttp3/Route;
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Route;->address:Lcom/maya/open/http/okhttp3/Address;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Route;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v2, v3}, Lcom/maya/open/http/okhttp3/Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Route;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 89
    invoke-virtual {v2, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 90
    invoke-virtual {v2, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 88
    :cond_0
    return v1

    .line 92
    .end local v0    # "other":Lcom/maya/open/http/okhttp3/Route;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 96
    const/16 v0, 0x11

    .line 97
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Route;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Address;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 98
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 99
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 100
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Route;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public requiresTunnel()Z
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Route;->address:Lcom/maya/open/http/okhttp3/Address;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public socketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Route{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
