.class Lcom/maya/open/http/okgo/OkGo$OkGoHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okgo/OkGo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OkGoHolder"
.end annotation


# static fields
.field private static holder:Lcom/maya/open/http/okgo/OkGo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/maya/open/http/okgo/OkGo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/maya/open/http/okgo/OkGo;-><init>(Lcom/maya/open/http/okgo/OkGo$1;)V

    sput-object v0, Lcom/maya/open/http/okgo/OkGo$OkGoHolder;->holder:Lcom/maya/open/http/okgo/OkGo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/maya/open/http/okgo/OkGo;
    .locals 1

    .line 72
    sget-object v0, Lcom/maya/open/http/okgo/OkGo$OkGoHolder;->holder:Lcom/maya/open/http/okgo/OkGo;

    return-object v0
.end method
