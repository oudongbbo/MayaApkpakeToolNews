.class public abstract Lcom/maya/open/http/okgo/callback/StringCallback;
.super Lcom/maya/open/http/okgo/callback/AbsCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maya/open/http/okgo/callback/AbsCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/maya/open/http/okgo/callback/AbsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/callback/StringCallback;->convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/String;
    .locals 1

    .line 21
    invoke-static {}, Lcom/maya/open/http/okgo/convert/StringConvert;->create()Lcom/maya/open/http/okgo/convert/StringConvert;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/convert/StringConvert;->convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->close()V

    return-object v0
.end method
