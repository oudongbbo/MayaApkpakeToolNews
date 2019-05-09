.class Lcom/maya/sdk/s/app/login/view/LoginByPhone$3;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByPhone;->LoginByPhone(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    .line 343
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->showToast(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$600(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone$3$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByPhone$3;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 376
    return-void
.end method
