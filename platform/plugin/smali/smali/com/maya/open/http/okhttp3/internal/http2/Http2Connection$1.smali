.class Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$1;
.super Lcom/maya/open/http/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$1;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$1;->val$streamId:I

    iput-object p5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$1;->val$errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/maya/open/http/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$1;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$1;->val$streamId:I

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$1;->val$errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writeSynReset(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
