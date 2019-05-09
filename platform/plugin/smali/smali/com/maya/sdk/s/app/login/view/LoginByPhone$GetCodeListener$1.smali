.class Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    .line 290
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->showToast(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$900(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Lcom/maya/sdk/framework/view/common/CountDownView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/CountDownView;->stopCountDown()V

    .line 318
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$600(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 311
    return-void
.end method
