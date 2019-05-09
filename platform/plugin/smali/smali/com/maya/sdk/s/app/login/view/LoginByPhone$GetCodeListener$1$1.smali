.class Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;
.super Ljava/lang/Object;
.source "LoginByPhone.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;

    .line 297
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->showToast(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByPhone;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->access$900(Lcom/maya/sdk/s/app/login/view/LoginByPhone;)Lcom/maya/sdk/framework/view/common/CountDownView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/CountDownView;->stopCountDown()V

    .line 308
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    const-string v1, "maya_common_toast_vcode_sent"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByPhone$GetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {v2}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;->showToast(Ljava/lang/String;)V

    .line 302
    return-void
.end method
