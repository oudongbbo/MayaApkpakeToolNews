.class public abstract Lcom/maya/open/http/okgo/callback/BitmapCallback;
.super Lcom/maya/open/http/okgo/callback/AbsCallback;
.source "BitmapCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maya/open/http/okgo/callback/AbsCallback<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/maya/open/http/okgo/callback/AbsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/maya/open/http/okgo/convert/BitmapConvert;->create()Lcom/maya/open/http/okgo/convert/BitmapConvert;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/convert/BitmapConvert;->convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->close()V

    .line 25
    return-object v0
.end method

.method public bridge synthetic convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/callback/BitmapCallback;->convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
