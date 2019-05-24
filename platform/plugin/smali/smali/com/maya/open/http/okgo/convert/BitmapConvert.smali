.class public Lcom/maya/open/http/okgo/convert/BitmapConvert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okgo/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okgo/convert/BitmapConvert$ConvertHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/maya/open/http/okgo/convert/Converter<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/maya/open/http/okgo/convert/BitmapConvert;
    .locals 1

    .line 23
    invoke-static {}, Lcom/maya/open/http/okgo/convert/BitmapConvert$ConvertHolder;->access$000()Lcom/maya/open/http/okgo/convert/BitmapConvert;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Landroid/graphics/Bitmap;
    .locals 0

    .line 32
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/convert/BitmapConvert;->convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
