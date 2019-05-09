.class public final Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field private final address:Lcom/maya/open/http/okhttp3/Address;

.field private inetSocketAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private lastInetSocketAddress:Ljava/net/InetSocketAddress;

.field private lastProxy:Ljava/net/Proxy;

.field private nextInetSocketAddressIndex:I

.field private nextProxyIndex:I

.field private final postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Route;",
            ">;"
        }
    .end annotation
.end field

.field private proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final routeDatabase:Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;)V
    .locals 2
    .param p1, "address"    # Lcom/maya/open/http/okhttp3/Address;
    .param p2, "routeDatabase"    # Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->address:Lcom/maya/open/http/okhttp3/Address;

    .line 60
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->routeDatabase:Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;

    .line 62
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Address;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->resetNextProxy(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/net/Proxy;)V

    .line 63
    return-void
.end method

.method static getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "socketAddress"    # Ljava/net/InetSocketAddress;

    .line 188
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 189
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 197
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hasNextInetSocketAddress()Z
    .locals 2

    .line 202
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasNextPostponed()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private hasNextProxy()Z
    .locals 2

    .line 128
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextPostponed()Lcom/maya/open/http/okhttp3/Route;
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/open/http/okhttp3/Route;

    return-object v0
.end method

.method private nextProxy()Ljava/net/Proxy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 138
    .local v0, "result":Ljava/net/Proxy;
    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    .line 139
    return-object v0

    .line 134
    .end local v0    # "result":Ljava/net/Proxy;
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .locals 8
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 149
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 154
    .local v0, "proxyAddress":Ljava/net/SocketAddress;
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_1

    .line 158
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 159
    .local v1, "proxySocketAddress":Ljava/net/InetSocketAddress;
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "socketHost":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_1

    .line 155
    .end local v1    # "proxySocketAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "socketHost":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    .end local v0    # "proxyAddress":Ljava/net/SocketAddress;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    .line 151
    .restart local v2    # "socketHost":Ljava/lang/String;
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result v0

    .line 160
    .local v0, "socketPort":I
    :goto_1
    nop

    .line 163
    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    const v1, 0xffff

    if-gt v0, v1, :cond_5

    .line 168
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v3, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v1, v3, :cond_3

    .line 169
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-static {v2, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Address;->dns()Lcom/maya/open/http/okhttp3/Dns;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/maya/open/http/okhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_2
    if-ge v3, v4, :cond_4

    .line 174
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 175
    .local v5, "inetAddress":Ljava/net/InetAddress;
    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v5, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 179
    .end local v1    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_4
    :goto_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddressIndex:I

    .line 180
    return-void

    .line 164
    :cond_5
    new-instance v1, Ljava/net/SocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No route to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; port is out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private resetNextProxy(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/net/Proxy;)V
    .locals 4
    .param p1, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .line 113
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 115
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    goto :goto_1

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "proxiesOrNull":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v3, v2, v0

    .line 121
    invoke-static {v2}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    .line 123
    .end local v1    # "proxiesOrNull":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    :goto_1
    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    .line 124
    return-void
.end method


# virtual methods
.method public connectFailed(Lcom/maya/open/http/okhttp3/Route;Ljava/io/IOException;)V
    .locals 3
    .param p1, "failedRoute"    # Lcom/maya/open/http/okhttp3/Route;
    .param p2, "failure"    # Ljava/io/IOException;

    .line 102
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->address:Lcom/maya/open/http/okhttp3/Address;

    .line 105
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->routeDatabase:Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;->failed(Lcom/maya/open/http/okhttp3/Route;)V

    .line 109
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->hasNextPostponed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 69
    :goto_1
    return v0
.end method

.method public next()Lcom/maya/open/http/okhttp3/Route;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->hasNextPostponed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->nextPostponed()Lcom/maya/open/http/okhttp3/Route;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->nextProxy()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->lastProxy:Ljava/net/Proxy;

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->nextInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 87
    new-instance v0, Lcom/maya/open/http/okhttp3/Route;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->address:Lcom/maya/open/http/okhttp3/Address;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->lastProxy:Ljava/net/Proxy;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, Lcom/maya/open/http/okhttp3/Route;-><init>(Lcom/maya/open/http/okhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 88
    .local v0, "route":Lcom/maya/open/http/okhttp3/Route;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->routeDatabase:Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;->shouldPostpone(Lcom/maya/open/http/okhttp3/Route;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->next()Lcom/maya/open/http/okhttp3/Route;

    move-result-object v1

    return-object v1

    .line 94
    :cond_3
    return-object v0
.end method
