.class public Lcom/maya/open/http/okgo/convert/StringConvert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okgo/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okgo/convert/StringConvert$ConvertHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/maya/open/http/okgo/convert/Converter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/maya/open/http/okgo/convert/StringConvert;
    .locals 1

    .line 18
    invoke-static {}, Lcom/maya/open/http/okgo/convert/StringConvert$ConvertHolder;->access$000()Lcom/maya/open/http/okgo/convert/StringConvert;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/convert/StringConvert;->convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
