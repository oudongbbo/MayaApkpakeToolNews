.class public final enum Lcom/maya/open/http/okgo/cache/CacheMode;
.super Ljava/lang/Enum;
.source "CacheMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/maya/open/http/okgo/cache/CacheMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/maya/open/http/okgo/cache/CacheMode;

.field public static final enum DEFAULT:Lcom/maya/open/http/okgo/cache/CacheMode;

.field public static final enum FIRST_CACHE_THEN_REQUEST:Lcom/maya/open/http/okgo/cache/CacheMode;

.field public static final enum IF_NONE_CACHE_REQUEST:Lcom/maya/open/http/okgo/cache/CacheMode;

.field public static final enum NO_CACHE:Lcom/maya/open/http/okgo/cache/CacheMode;

.field public static final enum REQUEST_FAILED_READ_CACHE:Lcom/maya/open/http/okgo/cache/CacheMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcom/maya/open/http/okgo/cache/CacheMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/maya/open/http/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/open/http/okgo/cache/CacheMode;->DEFAULT:Lcom/maya/open/http/okgo/cache/CacheMode;

    .line 8
    new-instance v0, Lcom/maya/open/http/okgo/cache/CacheMode;

    const-string v1, "NO_CACHE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/maya/open/http/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/open/http/okgo/cache/CacheMode;->NO_CACHE:Lcom/maya/open/http/okgo/cache/CacheMode;

    .line 11
    new-instance v0, Lcom/maya/open/http/okgo/cache/CacheMode;

    const-string v1, "REQUEST_FAILED_READ_CACHE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/maya/open/http/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/open/http/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/maya/open/http/okgo/cache/CacheMode;

    .line 14
    new-instance v0, Lcom/maya/open/http/okgo/cache/CacheMode;

    const-string v1, "IF_NONE_CACHE_REQUEST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/maya/open/http/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/open/http/okgo/cache/CacheMode;->IF_NONE_CACHE_REQUEST:Lcom/maya/open/http/okgo/cache/CacheMode;

    .line 17
    new-instance v0, Lcom/maya/open/http/okgo/cache/CacheMode;

    const-string v1, "FIRST_CACHE_THEN_REQUEST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/maya/open/http/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/open/http/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/maya/open/http/okgo/cache/CacheMode;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/maya/open/http/okgo/cache/CacheMode;

    sget-object v1, Lcom/maya/open/http/okgo/cache/CacheMode;->DEFAULT:Lcom/maya/open/http/okgo/cache/CacheMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/maya/open/http/okgo/cache/CacheMode;->NO_CACHE:Lcom/maya/open/http/okgo/cache/CacheMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/maya/open/http/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/maya/open/http/okgo/cache/CacheMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/maya/open/http/okgo/cache/CacheMode;->IF_NONE_CACHE_REQUEST:Lcom/maya/open/http/okgo/cache/CacheMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/maya/open/http/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/maya/open/http/okgo/cache/CacheMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/maya/open/http/okgo/cache/CacheMode;->$VALUES:[Lcom/maya/open/http/okgo/cache/CacheMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/maya/open/http/okgo/cache/CacheMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/maya/open/http/okgo/cache/CacheMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/maya/open/http/okgo/cache/CacheMode;

    return-object v0
.end method

.method public static values()[Lcom/maya/open/http/okgo/cache/CacheMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/maya/open/http/okgo/cache/CacheMode;->$VALUES:[Lcom/maya/open/http/okgo/cache/CacheMode;

    invoke-virtual {v0}, [Lcom/maya/open/http/okgo/cache/CacheMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/maya/open/http/okgo/cache/CacheMode;

    return-object v0
.end method
