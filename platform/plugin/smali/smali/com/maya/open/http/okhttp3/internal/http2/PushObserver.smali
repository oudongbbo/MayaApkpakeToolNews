.class public interface abstract Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CANCEL:Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/PushObserver$1;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/internal/http2/PushObserver$1;-><init>()V

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;->CANCEL:Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;

    return-void
.end method


# virtual methods
.method public abstract onData(ILcom/maya/open/http/okio/BufferedSource;IZ)Z
.end method

.method public abstract onHeaders(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract onRequest(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onReset(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
.end method
