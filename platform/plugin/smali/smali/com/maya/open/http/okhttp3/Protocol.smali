.class public final enum Lcom/maya/open/http/okhttp3/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/maya/open/http/okhttp3/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/maya/open/http/okhttp3/Protocol;

.field public static final enum HTTP_1_0:Lcom/maya/open/http/okhttp3/Protocol;

.field public static final enum HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

.field public static final enum HTTP_2:Lcom/maya/open/http/okhttp3/Protocol;

.field public static final enum SPDY_3:Lcom/maya/open/http/okhttp3/Protocol;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    new-instance v0, Lcom/maya/open/http/okhttp3/Protocol;

    const-string v1, "HTTP_1_0"

    const-string v2, "http/1.0"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/maya/open/http/okhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_0:Lcom/maya/open/http/okhttp3/Protocol;

    .line 43
    new-instance v0, Lcom/maya/open/http/okhttp3/Protocol;

    const-string v1, "HTTP_1_1"

    const-string v2, "http/1.1"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/maya/open/http/okhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    .line 53
    new-instance v0, Lcom/maya/open/http/okhttp3/Protocol;

    const-string v1, "SPDY_3"

    const-string v2, "spdy/3.1"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/maya/open/http/okhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/maya/open/http/okhttp3/Protocol;->SPDY_3:Lcom/maya/open/http/okhttp3/Protocol;

    .line 64
    new-instance v0, Lcom/maya/open/http/okhttp3/Protocol;

    const-string v1, "HTTP_2"

    const-string v2, "h2"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/maya/open/http/okhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_2:Lcom/maya/open/http/okhttp3/Protocol;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/maya/open/http/okhttp3/Protocol;

    sget-object v1, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_0:Lcom/maya/open/http/okhttp3/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/maya/open/http/okhttp3/Protocol;->SPDY_3:Lcom/maya/open/http/okhttp3/Protocol;

    aput-object v1, v0, v5

    sget-object v1, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_2:Lcom/maya/open/http/okhttp3/Protocol;

    aput-object v1, v0, v6

    sput-object v0, Lcom/maya/open/http/okhttp3/Protocol;->$VALUES:[Lcom/maya/open/http/okhttp3/Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/Protocol;->protocol:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Protocol;
    .locals 3
    .param p0, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_0:Lcom/maya/open/http/okhttp3/Protocol;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_0:Lcom/maya/open/http/okhttp3/Protocol;

    return-object v0

    .line 80
    :cond_0
    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    return-object v0

    .line 81
    :cond_1
    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_2:Lcom/maya/open/http/okhttp3/Protocol;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_2:Lcom/maya/open/http/okhttp3/Protocol;

    return-object v0

    .line 82
    :cond_2
    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->SPDY_3:Lcom/maya/open/http/okhttp3/Protocol;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->SPDY_3:Lcom/maya/open/http/okhttp3/Protocol;

    return-object v0

    .line 83
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Protocol;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/maya/open/http/okhttp3/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/maya/open/http/okhttp3/Protocol;

    return-object v0
.end method

.method public static values()[Lcom/maya/open/http/okhttp3/Protocol;
    .locals 1

    .line 31
    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->$VALUES:[Lcom/maya/open/http/okhttp3/Protocol;

    invoke-virtual {v0}, [Lcom/maya/open/http/okhttp3/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/maya/open/http/okhttp3/Protocol;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Protocol;->protocol:Ljava/lang/String;

    return-object v0
.end method
