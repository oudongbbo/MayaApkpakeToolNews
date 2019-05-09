.class Lcom/maya/sdk/demo/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/maya/sdk/m/MyMsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/demo/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/demo/MainActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/demo/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/demo/MainActivity;

    .line 35
    iput-object p1, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitGameFail()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    const-string v1, "\u7528\u6237\u53d6\u6d88\u9000\u51fa"

    # invokes: Lcom/maya/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/demo/MainActivity;->access$000(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onExitGameSuccess()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    const-string v1, "\u8bf7CP\u8fdb\u884c\u6e38\u620f\u5185\u9000\u51fa\u64cd\u4f5c"

    # invokes: Lcom/maya/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/demo/MainActivity;->access$000(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    invoke-virtual {v0}, Lcom/maya/sdk/demo/MainActivity;->finish()V

    .line 116
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 117
    return-void
.end method

.method public onInitFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25\uff0c\u63d0\u793a\u73a9\u5bb6\u9000\u51fa\u91cd\u65b0\u8fdb\u5165"

    # invokes: Lcom/maya/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/demo/MainActivity;->access$000(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onInitSuccess()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    const-string v1, "\u521d\u59cb\u5316\u6210\u529f\uff0c\u6e38\u620f\u4e2d\u4e0d\u9700\u8981\u6b64\u63d0\u793a"

    # invokes: Lcom/maya/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/demo/MainActivity;->access$000(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onLoginFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 61
    const-string v0, "login_cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d6\u6d88\u767b\u5f55:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/demo/MainActivity;->access$000(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u767b\u5f55\u5931\u8d25:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/demo/MainActivity;->access$000(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void
.end method

.method public onLoginSuccess(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 52
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u767b\u5f55\u6210\u529f:\n token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/demo/MainActivity;->access$000(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onLogoutFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 136
    return-void
.end method

.method public onLogoutSuccess()V
    .locals 2

    .line 130
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getInstance()Lcom/maya/sdk/m/MayaMsdk;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/MayaMsdk;->userLogin(Landroid/content/Context;)V

    .line 131
    return-void
.end method

.method public onPayFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 103
    const-string v0, "pay_cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d6\u6d88\u652f\u4ed8:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/demo/MainActivity;->access$000(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u652f\u4ed8\u5931\u8d25:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/demo/MainActivity;->access$000(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void
.end method

.method public onPaySuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 94
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    const-string v1, "\u652f\u4ed8\u6210\u529f\uff0c\u8bf7\u5728\u6e38\u620f\u5185\u53d1\u8d27"

    # invokes: Lcom/maya/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/demo/MainActivity;->access$000(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onUserSwitchFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 84
    const-string v0, "switch_cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d6\u6d88\u5207\u6362:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/demo/MainActivity;->access$000(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5207\u6362\u5931\u8d25:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/demo/MainActivity;->access$000(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void
.end method

.method public onUserSwitchSuccess(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 74
    iget-object v0, p0, Lcom/maya/sdk/demo/MainActivity$1;->this$0:Lcom/maya/sdk/demo/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5207\u6362\u5e10\u53f7\u6210\u529f:\n token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/demo/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/demo/MainActivity;->access$000(Lcom/maya/sdk/demo/MainActivity;Ljava/lang/String;)V

    .line 75
    return-void
.end method
