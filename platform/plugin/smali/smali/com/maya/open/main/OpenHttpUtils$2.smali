.class Lcom/maya/open/main/OpenHttpUtils$2;
.super Lcom/maya/open/http/okgo/callback/StringCallback;
.source "SourceFile"


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

    .line 202
    iput-object p1, p0, Lcom/maya/open/main/OpenHttpUtils$2;->this$0:Lcom/maya/open/main/OpenHttpUtils;

    iput-object p2, p0, Lcom/maya/open/main/OpenHttpUtils$2;->val$callback:Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;

    invoke-direct {p0}, Lcom/maya/open/http/okgo/callback/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V
    .locals 2

    .line 218
    invoke-super {p0, p1, p2, p3}, Lcom/maya/open/http/okgo/callback/StringCallback;->onError(Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    if-eqz p2, :cond_0

    .line 222
    iget-object p1, p0, Lcom/maya/open/main/OpenHttpUtils$2;->val$callback:Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;

    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Http Error!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;->onFail(ILjava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/maya/open/main/OpenHttpUtils$2;->val$callback:Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;

    const/4 p2, 0x0

    const-string p3, "Request Fail:Not HttpException!"

    invoke-interface {p1, p2, p3}, Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;->onFail(ILjava/lang/String;)V

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
    .locals 0

    .line 213
    iget-object p2, p0, Lcom/maya/open/main/OpenHttpUtils$2;->val$callback:Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;

    invoke-interface {p2, p1}, Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public upProgress(JJFJ)V
    .locals 0

    .line 207
    iget-object p1, p0, Lcom/maya/open/main/OpenHttpUtils$2;->this$0:Lcom/maya/open/main/OpenHttpUtils;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "upload:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/maya/open/main/OpenHttpUtils;->printLog(Ljava/lang/String;)V

    return-void
.end method
