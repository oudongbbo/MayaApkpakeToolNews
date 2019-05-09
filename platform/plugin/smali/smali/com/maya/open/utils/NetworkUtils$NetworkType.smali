.class public final enum Lcom/maya/open/utils/NetworkUtils$NetworkType;
.super Ljava/lang/Enum;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/utils/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/maya/open/utils/NetworkUtils$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/maya/open/utils/NetworkUtils$NetworkType;

.field public static final enum NETWORK_2G:Lcom/maya/open/utils/NetworkUtils$NetworkType;

.field public static final enum NETWORK_3G:Lcom/maya/open/utils/NetworkUtils$NetworkType;

.field public static final enum NETWORK_4G:Lcom/maya/open/utils/NetworkUtils$NetworkType;

.field public static final enum NETWORK_NO:Lcom/maya/open/utils/NetworkUtils$NetworkType;

.field public static final enum NETWORK_UNKNOWN:Lcom/maya/open/utils/NetworkUtils$NetworkType;

.field public static final enum NETWORK_WIFI:Lcom/maya/open/utils/NetworkUtils$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 38
    new-instance v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/maya/open/utils/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    .line 39
    new-instance v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_4G"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/maya/open/utils/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_4G:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    .line 40
    new-instance v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_3G"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/maya/open/utils/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    .line 41
    new-instance v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_2G"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/maya/open/utils/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_2G:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    .line 42
    new-instance v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/maya/open/utils/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    .line 43
    new-instance v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;

    const-string v1, "NETWORK_NO"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/maya/open/utils/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/maya/open/utils/NetworkUtils$NetworkType;

    sget-object v1, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_4G:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_2G:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->$VALUES:[Lcom/maya/open/utils/NetworkUtils$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/maya/open/utils/NetworkUtils$NetworkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/maya/open/utils/NetworkUtils$NetworkType;
    .locals 1

    .line 37
    sget-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->$VALUES:[Lcom/maya/open/utils/NetworkUtils$NetworkType;

    invoke-virtual {v0}, [Lcom/maya/open/utils/NetworkUtils$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/maya/open/utils/NetworkUtils$NetworkType;

    return-object v0
.end method
