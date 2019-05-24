.class Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;
.super Lcom/maya/open/http/okgo/callback/AbsCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okserver/upload/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MergeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maya/open/http/okgo/callback/AbsCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private lastRefreshUiTime:J

.field final synthetic this$0:Lcom/maya/open/http/okserver/upload/UploadTask;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okserver/upload/UploadTask;)V
    .locals 2

    .line 95
    iput-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    invoke-direct {p0}, Lcom/maya/open/http/okgo/callback/AbsCallback;-><init>()V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->lastRefreshUiTime:J

    return-void
.end method


# virtual methods
.method public convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/Response;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onSuccess(Ljava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/maya/open/http/okhttp3/Call;",
            "Lcom/maya/open/http/okhttp3/Response;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public upProgress(JJFJ)V
    .locals 5

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    iget-wide v2, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->lastRefreshUiTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p5, v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    invoke-static {v0}, Lcom/maya/open/http/okserver/upload/UploadTask;->access$000(Lcom/maya/open/http/okserver/upload/UploadTask;)Lcom/maya/open/http/okserver/upload/UploadInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    .line 106
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    invoke-static {v0}, Lcom/maya/open/http/okserver/upload/UploadTask;->access$000(Lcom/maya/open/http/okserver/upload/UploadTask;)Lcom/maya/open/http/okserver/upload/UploadInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setUploadLength(J)V

    .line 107
    iget-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    invoke-static {p1}, Lcom/maya/open/http/okserver/upload/UploadTask;->access$000(Lcom/maya/open/http/okserver/upload/UploadTask;)Lcom/maya/open/http/okserver/upload/UploadInfo;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setTotalLength(J)V

    .line 108
    iget-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    invoke-static {p1}, Lcom/maya/open/http/okserver/upload/UploadTask;->access$000(Lcom/maya/open/http/okserver/upload/UploadTask;)Lcom/maya/open/http/okserver/upload/UploadInfo;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setProgress(F)V

    .line 109
    iget-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    invoke-static {p1}, Lcom/maya/open/http/okserver/upload/UploadTask;->access$000(Lcom/maya/open/http/okserver/upload/UploadTask;)Lcom/maya/open/http/okserver/upload/UploadInfo;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 110
    iget-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, p2}, Lcom/maya/open/http/okserver/upload/UploadTask;->access$100(Lcom/maya/open/http/okserver/upload/UploadTask;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->lastRefreshUiTime:J

    :cond_1
    return-void
.end method
