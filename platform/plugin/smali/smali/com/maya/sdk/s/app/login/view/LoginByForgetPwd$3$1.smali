.class Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3$1;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3;

    .line 249
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$500(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->swtichToAccount()V

    .line 255
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    const-string v1, "\u627e\u56de\u5bc6\u7801\u6210\u529f\uff0c\u8bf7\u60a8\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    .line 256
    return-void
.end method
