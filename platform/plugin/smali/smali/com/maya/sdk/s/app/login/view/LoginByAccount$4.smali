.class Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;
.super Ljava/lang/Object;
.source "LoginByAccount.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByAccount;->visitorlogin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

.field final synthetic val$pwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 417
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    iput-object p2, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->showToast(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$500(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 441
    return-void
.end method
