.class Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;
.super Lcom/maya/open/http/okgo/callback/AbsCallback;
.source "UploadTask.java"


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
    .local p0, "this":Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;, "Lcom/maya/open/http/okserver/upload/UploadTask<TT;>.MergeListener;"
    iput-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    invoke-direct {p0}, Lcom/maya/open/http/okgo/callback/AbsCallback;-><init>()V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->lastRefreshUiTime:J

    .line 97
    return-void
.end method


# virtual methods
.method public convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/Object;
    .locals 1
    .param p1, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/Response;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;, "Lcom/maya/open/http/okserver/upload/UploadTask<TT;>.MergeListener;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSuccess(Ljava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 0
    .param p2, "call"    # Lcom/maya/open/http/okhttp3/Call;
    .param p3, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/maya/open/http/okhttp3/Call;",
            "Lcom/maya/open/http/okhttp3/Response;",
            ")V"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;, "Lcom/maya/open/http/okserver/upload/UploadTask<TT;>.MergeListener;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public upProgress(JJFJ)V
    .locals 7
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "progress"    # F
    .param p6, "networkSpeed"    # J

    .line 102
    .local p0, "this":Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;, "Lcom/maya/open/http/okserver/upload/UploadTask<TT;>.MergeListener;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    .local v0, "curTime":J
    iget-wide v2, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->lastRefreshUiTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p5, v2

    if-nez v2, :cond_1

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    # getter for: Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;
    invoke-static {v2}, Lcom/maya/open/http/okserver/upload/UploadTask;->access$000(Lcom/maya/open/http/okserver/upload/UploadTask;)Lcom/maya/open/http/okserver/upload/UploadInfo;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    .line 106
    iget-object v2, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    # getter for: Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;
    invoke-static {v2}, Lcom/maya/open/http/okserver/upload/UploadTask;->access$000(Lcom/maya/open/http/okserver/upload/UploadTask;)Lcom/maya/open/http/okserver/upload/UploadInfo;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setUploadLength(J)V

    .line 107
    iget-object v2, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    # getter for: Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;
    invoke-static {v2}, Lcom/maya/open/http/okserver/upload/UploadTask;->access$000(Lcom/maya/open/http/okserver/upload/UploadTask;)Lcom/maya/open/http/okserver/upload/UploadInfo;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setTotalLength(J)V

    .line 108
    iget-object v2, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    # getter for: Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;
    invoke-static {v2}, Lcom/maya/open/http/okserver/upload/UploadTask;->access$000(Lcom/maya/open/http/okserver/upload/UploadTask;)Lcom/maya/open/http/okserver/upload/UploadInfo;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setProgress(F)V

    .line 109
    iget-object v2, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    # getter for: Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;
    invoke-static {v2}, Lcom/maya/open/http/okserver/upload/UploadTask;->access$000(Lcom/maya/open/http/okserver/upload/UploadTask;)Lcom/maya/open/http/okserver/upload/UploadInfo;

    move-result-object v2

    invoke-virtual {v2, p6, p7}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 110
    iget-object v2, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->this$0:Lcom/maya/open/http/okserver/upload/UploadTask;

    const/4 v3, 0x0

    # invokes: Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v2, v3, v3, v3}, Lcom/maya/open/http/okserver/upload/UploadTask;->access$100(Lcom/maya/open/http/okserver/upload/UploadTask;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;->lastRefreshUiTime:J

    .line 113
    :cond_1
    return-void
.end method
