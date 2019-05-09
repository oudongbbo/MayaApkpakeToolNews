.class public final Lcom/maya/open/http/okgo/model/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final rawResponse:Lcom/maya/open/http/okhttp3/Response;


# direct methods
.method private constructor <init>(Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Object;)V
    .locals 0
    .param p1, "rawResponse"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/Response;",
            "TT;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lcom/maya/open/http/okgo/model/Response;, "Lcom/maya/open/http/okgo/model/Response<TT;>;"
    .local p2, "body":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/maya/open/http/okgo/model/Response;->rawResponse:Lcom/maya/open/http/okhttp3/Response;

    .line 23
    iput-object p2, p0, Lcom/maya/open/http/okgo/model/Response;->body:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public static success(Ljava/lang/Object;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okgo/model/Response;
    .locals 2
    .param p1, "rawResponse"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/maya/open/http/okhttp3/Response;",
            ")",
            "Lcom/maya/open/http/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .line 51
    .local p0, "body":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/maya/open/http/okgo/model/Response;

    invoke-direct {v0, p1, p0}, Lcom/maya/open/http/okgo/model/Response;-><init>(Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Object;)V

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse must be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rawResponse == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/maya/open/http/okgo/model/Response;, "Lcom/maya/open/http/okgo/model/Response<TT;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/Response;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public code()I
    .locals 1

    .line 31
    .local p0, "this":Lcom/maya/open/http/okgo/model/Response;, "Lcom/maya/open/http/okgo/model/Response<TT;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/Response;->rawResponse:Lcom/maya/open/http/okhttp3/Response;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public headers()Lcom/maya/open/http/okhttp3/Headers;
    .locals 1

    .line 39
    .local p0, "this":Lcom/maya/open/http/okgo/model/Response;, "Lcom/maya/open/http/okgo/model/Response<TT;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/Response;->rawResponse:Lcom/maya/open/http/okhttp3/Response;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 43
    .local p0, "this":Lcom/maya/open/http/okgo/model/Response;, "Lcom/maya/open/http/okgo/model/Response<TT;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/Response;->rawResponse:Lcom/maya/open/http/okhttp3/Response;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->isSuccessful()Z

    move-result v0

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 35
    .local p0, "this":Lcom/maya/open/http/okgo/model/Response;, "Lcom/maya/open/http/okgo/model/Response<TT;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/Response;->rawResponse:Lcom/maya/open/http/okhttp3/Response;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public raw()Lcom/maya/open/http/okhttp3/Response;
    .locals 1

    .line 27
    .local p0, "this":Lcom/maya/open/http/okgo/model/Response;, "Lcom/maya/open/http/okgo/model/Response<TT;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/model/Response;->rawResponse:Lcom/maya/open/http/okhttp3/Response;

    return-object v0
.end method