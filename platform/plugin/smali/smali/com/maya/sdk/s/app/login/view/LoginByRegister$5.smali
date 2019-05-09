.class Lcom/maya/sdk/s/app/login/view/LoginByRegister$5;
.super Landroid/os/Handler;
.source "LoginByRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/view/LoginByRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 264
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$5;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 267
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 268
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u9a8c\u8bc1\u6ce8\u518c\u4fe1\u606f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 271
    .local v0, "regBundle":Landroid/os/Bundle;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "content":Ljava/lang/String;
    const-string v2, "password"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "password":Ljava/lang/String;
    const-string v3, "loginType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 274
    .local v9, "loginType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 277
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    .line 278
    .local v10, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "is_reg"

    const/4 v4, 0x1

    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 279
    const-string v3, "loginType"

    invoke-virtual {v10, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    iget-object v3, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$5;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v3}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v3

    .line 281
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$5;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 282
    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v5}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getChildCallBack()Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    move-result-object v8

    .line 281
    move-object v5, v2

    invoke-virtual/range {v3 .. v8}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 283
    :catch_0
    move-exception v3

    .line 284
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 287
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method
