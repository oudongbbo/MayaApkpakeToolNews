.class public final enum Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

.field public static final enum CANCEL:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

.field public static final enum FLOW_CONTROL_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

.field public static final enum NO_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

.field public static final enum PROTOCOL_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

.field public static final enum REFUSED_STREAM:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;


# instance fields
.field public final httpCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 21
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 23
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    const-string v1, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 25
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    const-string v1, "INTERNAL_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 27
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    const-string v1, "FLOW_CONTROL_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 29
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    const-string v1, "REFUSED_STREAM"

    const/4 v6, 0x4

    const/4 v7, 0x7

    invoke-direct {v0, v1, v6, v7}, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 31
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    const-string v1, "CANCEL"

    const/4 v7, 0x5

    const/16 v8, 0x8

    invoke-direct {v0, v1, v7, v8}, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->$VALUES:[Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "httpCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->httpCode:I

    .line 37
    return-void
.end method

.method public static fromHttp2(I)Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    .locals 5
    .param p0, "code"    # I

    .line 40
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->values()[Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 41
    .local v3, "errorCode":Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    iget v4, v3, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->httpCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    .line 40
    .end local v3    # "errorCode":Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    .locals 1

    .line 19
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->$VALUES:[Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0}, [Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    return-object v0
.end method
