.class Lcom/maya/open/http/okgo/convert/StringConvert$ConvertHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okgo/convert/StringConvert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConvertHolder"
.end annotation


# static fields
.field private static convert:Lcom/maya/open/http/okgo/convert/StringConvert;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/maya/open/http/okgo/convert/StringConvert;

    invoke-direct {v0}, Lcom/maya/open/http/okgo/convert/StringConvert;-><init>()V

    sput-object v0, Lcom/maya/open/http/okgo/convert/StringConvert$ConvertHolder;->convert:Lcom/maya/open/http/okgo/convert/StringConvert;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/maya/open/http/okgo/convert/StringConvert;
    .locals 1

    .line 21
    sget-object v0, Lcom/maya/open/http/okgo/convert/StringConvert$ConvertHolder;->convert:Lcom/maya/open/http/okgo/convert/StringConvert;

    return-object v0
.end method
