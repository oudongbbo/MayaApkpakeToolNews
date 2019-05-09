.class Lcom/maya/open/main/OpenHttpUtils$2;
.super Lcom/maya/open/http/okgo/callback/StringCallback;
.source "OpenHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/main/OpenHttpUtils;->post(Ljava/lang/String;Ljava/util/Map;Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/main/OpenHttpUtils;

.field final synthetic val$callback:Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;


# direct methods
.method constructor <init>(Lcom/maya/open/main/OpenHttpUtils;Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/main/OpenHttpUtils;

    .line 202
    iput-object p1, p0, Lcom/maya/open/main/OpenHttpUtils$2;->this$0:Lcom/maya/open/main/OpenHttpUtils;

    iput-object p2, p0, Lcom/maya/open/main/OpenHttpUtils$2;->val$callback:Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;

    invoke-direct {p0}, Lcom/maya/open/http/okgo/callback/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/Call;
    .param p2, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .param p3, "ex"    # Ljava/lang/Exception;

    .line 218
    invoke-super {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/callback/StringCallback;->onError(Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    .line 220
    if-eqz p2, :cond_0

    .line 222
    iget-object v0, p0, Lcom/maya/open/main/OpenHttpUtils$2;->val$callback:Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;

    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http Error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;->onFail(ILjava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/maya/open/main/OpenHttpUtils$2;->val$callback:Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;

    const/4 v1, 0x0

    const-string v2, "Request Fail:Not HttpException!"

    invoke-interface {v0, v1, v2}, Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;->onFail(ILjava/lang/String;)V

    .line 227
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 0

    .line 202
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/maya/open/main/OpenHttpUtils$2;->onSuccess(Ljava/lang/String;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 1
    .param p1, "paramT"    # Ljava/lang/String;
    .param p2, "paramCall"    # Lcom/maya/open/http/okhttp3/Call;
    .param p3, "paramResponse"    # Lcom/maya/open/http/okhttp3/Response;

    .line 213
    iget-object v0, p0, Lcom/maya/open/main/OpenHttpUtils$2;->val$callback:Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;

    invoke-interface {v0, p1}, Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;->onSuccess(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public upProgress(JJFJ)V
    .locals 3
    .param p1, "currentSize"    # J
    .param p3, "totalSize"    # J
    .param p5, "progress"    # F
    .param p6, "networkSpeed"    # J

    .line 207
    iget-object v0, p0, Lcom/maya/open/main/OpenHttpUtils$2;->this$0:Lcom/maya/open/main/OpenHttpUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/main/OpenHttpUtils;->printLog(Ljava/lang/String;)V

    .line 208
    return-void
.end method
