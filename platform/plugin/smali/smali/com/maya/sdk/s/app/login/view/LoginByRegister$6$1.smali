.class Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;

    .line 299
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loadLocalName()V
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$400(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    .line 330
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;->handlGetUname(Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 326
    return-void
.end method
