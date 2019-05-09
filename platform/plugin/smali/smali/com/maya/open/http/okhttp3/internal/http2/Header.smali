.class public final Lcom/maya/open/http/okhttp3/internal/http2/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final PSEUDO_PREFIX:Lcom/maya/open/http/okio/ByteString;

.field public static final RESPONSE_STATUS:Lcom/maya/open/http/okio/ByteString;

.field public static final TARGET_AUTHORITY:Lcom/maya/open/http/okio/ByteString;

.field public static final TARGET_METHOD:Lcom/maya/open/http/okio/ByteString;

.field public static final TARGET_PATH:Lcom/maya/open/http/okio/ByteString;

.field public static final TARGET_SCHEME:Lcom/maya/open/http/okio/ByteString;


# instance fields
.field final hpackSize:I

.field public final name:Lcom/maya/open/http/okio/ByteString;

.field public final value:Lcom/maya/open/http/okio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, ":"

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lcom/maya/open/http/okio/ByteString;

    .line 26
    const-string v0, ":status"

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->RESPONSE_STATUS:Lcom/maya/open/http/okio/ByteString;

    .line 27
    const-string v0, ":method"

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_METHOD:Lcom/maya/open/http/okio/ByteString;

    .line 28
    const-string v0, ":path"

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_PATH:Lcom/maya/open/http/okio/ByteString;

    .line 29
    const-string v0, ":scheme"

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_SCHEME:Lcom/maya/open/http/okio/ByteString;

    .line 30
    const-string v0, ":authority"

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lcom/maya/open/http/okio/ByteString;

    return-void
.end method

.method public constructor <init>(Lcom/maya/open/http/okio/ByteString;Lcom/maya/open/http/okio/ByteString;)V
    .locals 2
    .param p1, "name"    # Lcom/maya/open/http/okio/ByteString;
    .param p2, "value"    # Lcom/maya/open/http/okio/ByteString;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->name:Lcom/maya/open/http/okio/ByteString;

    .line 49
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    .line 50
    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->hpackSize:I

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Lcom/maya/open/http/okio/ByteString;
    .param p2, "value"    # Ljava/lang/String;

    .line 44
    invoke-static {p2}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Header;-><init>(Lcom/maya/open/http/okio/ByteString;Lcom/maya/open/http/okio/ByteString;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-static {p2}, Lcom/maya/open/http/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Header;-><init>(Lcom/maya/open/http/okio/ByteString;Lcom/maya/open/http/okio/ByteString;)V

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 54
    instance-of v0, p1, Lcom/maya/open/http/okhttp3/internal/http2/Header;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 55
    move-object v0, p1

    check-cast v0, Lcom/maya/open/http/okhttp3/internal/http2/Header;

    .line 56
    .local v0, "that":Lcom/maya/open/http/okhttp3/internal/http2/Header;
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->name:Lcom/maya/open/http/okio/ByteString;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->name:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v2, v3}, Lcom/maya/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    .line 57
    invoke-virtual {v2, v3}, Lcom/maya/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 56
    :cond_0
    return v1

    .line 59
    .end local v0    # "that":Lcom/maya/open/http/okhttp3/internal/http2/Header;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 63
    const/16 v0, 0x11

    .line 64
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->name:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v2}, Lcom/maya/open/http/okio/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 65
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v2}, Lcom/maya/open/http/okio/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 66
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 70
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->name:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v2}, Lcom/maya/open/http/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v2}, Lcom/maya/open/http/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/maya/open/http/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
