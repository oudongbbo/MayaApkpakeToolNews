.class public abstract Lcom/maya/open/http/okserver/listener/UploadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_UPLOAD_LISTENER:Lcom/maya/open/http/okserver/listener/UploadListener;


# instance fields
.field private userTag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/maya/open/http/okserver/listener/UploadListener$1;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/listener/UploadListener$1;-><init>()V

    sput-object v0, Lcom/maya/open/http/okserver/listener/UploadListener;->DEFAULT_UPLOAD_LISTENER:Lcom/maya/open/http/okserver/listener/UploadListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserTag()Ljava/lang/Object;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/maya/open/http/okserver/listener/UploadListener;->userTag:Ljava/lang/Object;

    return-object v0
.end method

.method public onAdd(Lcom/maya/open/http/okserver/upload/UploadInfo;)V
    .locals 0

    return-void
.end method

.method public abstract onError(Lcom/maya/open/http/okserver/upload/UploadInfo;Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onFinish(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onProgress(Lcom/maya/open/http/okserver/upload/UploadInfo;)V
.end method

.method public onRemove(Lcom/maya/open/http/okserver/upload/UploadInfo;)V
    .locals 0

    return-void
.end method

.method public abstract parseNetworkResponse(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/Response;",
            ")TT;"
        }
    .end annotation
.end method

.method public setUserTag(Ljava/lang/Object;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/maya/open/http/okserver/listener/UploadListener;->userTag:Ljava/lang/Object;

    return-void
.end method
