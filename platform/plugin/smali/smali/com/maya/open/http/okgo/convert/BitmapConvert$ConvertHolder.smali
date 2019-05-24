.class Lcom/maya/open/http/okgo/convert/BitmapConvert$ConvertHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okgo/convert/BitmapConvert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConvertHolder"
.end annotation


# static fields
.field private static convert:Lcom/maya/open/http/okgo/convert/BitmapConvert;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/maya/open/http/okgo/convert/BitmapConvert;

    invoke-direct {v0}, Lcom/maya/open/http/okgo/convert/BitmapConvert;-><init>()V

    sput-object v0, Lcom/maya/open/http/okgo/convert/BitmapConvert$ConvertHolder;->convert:Lcom/maya/open/http/okgo/convert/BitmapConvert;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/maya/open/http/okgo/convert/BitmapConvert;
    .locals 1

    .line 26
    sget-object v0, Lcom/maya/open/http/okgo/convert/BitmapConvert$ConvertHolder;->convert:Lcom/maya/open/http/okgo/convert/BitmapConvert;

    return-object v0
.end method
