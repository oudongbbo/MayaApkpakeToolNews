.class Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1$1;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1;

    .line 353
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByPhone$3;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->showToast(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByPhone$3;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$600(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v1

    const-string v3, ""

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByPhone$3;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    .line 358
    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$600(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getChildCallBack()Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    move-result-object v6

    .line 357
    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 359
    return-void
.end method
