.class public abstract Lcom/maya/open/http/okgo/callback/FileCallback;
.super Lcom/maya/open/http/okgo/callback/AbsCallback;
.source "FileCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maya/open/http/okgo/callback/AbsCallback<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private convert:Lcom/maya/open/http/okgo/convert/FileConvert;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/maya/open/http/okgo/callback/FileCallback;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "destFileName"    # Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/maya/open/http/okgo/callback/FileCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "destFileDir"    # Ljava/lang/String;
    .param p2, "destFileName"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/maya/open/http/okgo/callback/AbsCallback;-><init>()V

    .line 32
    new-instance v0, Lcom/maya/open/http/okgo/convert/FileConvert;

    invoke-direct {v0, p1, p2}, Lcom/maya/open/http/okgo/convert/FileConvert;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/maya/open/http/okgo/callback/FileCallback;->convert:Lcom/maya/open/http/okgo/convert/FileConvert;

    .line 33
    iget-object v0, p0, Lcom/maya/open/http/okgo/callback/FileCallback;->convert:Lcom/maya/open/http/okgo/convert/FileConvert;

    invoke-virtual {v0, p0}, Lcom/maya/open/http/okgo/convert/FileConvert;->setCallback(Lcom/maya/open/http/okgo/callback/AbsCallback;)V

    .line 34
    return-void
.end method


# virtual methods
.method public convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/io/File;
    .locals 1
    .param p1, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/maya/open/http/okgo/callback/FileCallback;->convert:Lcom/maya/open/http/okgo/convert/FileConvert;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/convert/FileConvert;->convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/io/File;

    move-result-object v0

    .line 39
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->close()V

    .line 40
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
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/callback/FileCallback;->convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
