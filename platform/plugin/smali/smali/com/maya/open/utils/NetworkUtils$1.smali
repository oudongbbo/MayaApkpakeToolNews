.class final Lcom/maya/open/utils/NetworkUtils$1;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/utils/NetworkUtils;->getDomainAddress(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$domain:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/maya/open/utils/NetworkUtils$1;->val$domain:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 326
    invoke-virtual {p0}, Lcom/maya/open/utils/NetworkUtils$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/utils/NetworkUtils$1;->val$domain:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 332
    .local v0, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 333
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 336
    .end local v0    # "e":Ljava/net/UnknownHostException;
    const/4 v0, 0x0

    return-object v0
.end method
