.class Lcom/maya/sdk/s/app/login/view/LoginByAccount$4$1;
.super Ljava/lang/Object;
.source "LoginByAccount.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;

    .line 421
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->showToast(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8
    .param p1, "content"    # Ljava/lang/String;

    .line 427
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "is_reg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 429
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;

    iget-object v1, v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v2

    .line 430
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;

    iget-object v4, v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;->val$pwd:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;

    iget-object v1, v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 431
    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getChildCallBack()Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    move-result-object v7

    .line 430
    invoke-virtual/range {v2 .. v7}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 435
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
