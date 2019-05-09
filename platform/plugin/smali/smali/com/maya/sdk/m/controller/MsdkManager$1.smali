.class Lcom/maya/sdk/m/controller/MsdkManager$1;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/maya/sdk/m/MyMsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/MsdkManager;->createNewCallBack(Lcom/maya/sdk/m/MyMsdkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/MsdkManager;

.field final synthetic val$callback:Lcom/maya/sdk/m/MyMsdkCallback;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/MsdkManager;Lcom/maya/sdk/m/MyMsdkCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 101
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitGameFail()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onExitGameFail()V

    .line 227
    return-void
.end method

.method public onExitGameSuccess()V
    .locals 4

    .line 187
    :try_start_0
    sget v0, Lcom/maya/sdk/m/views/UpdateDialog;->notificationId:I

    .line 188
    .local v0, "downloadId":I
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    const-string v2, "\u6e05\u9664\u4e0b\u8f7d\u6846"

    # invokes: Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/maya/sdk/m/controller/MsdkManager;->access$500(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/m/controller/MsdkManager;->access$200(Lcom/maya/sdk/m/controller/MsdkManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/m/model/MConfigManager;->getUpdateStartState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 194
    .local v1, "isStartDownload":Z
    if-eqz v1, :cond_0

    .line 195
    iget-object v2, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    const-string v3, "\u5f00\u59cb\u4e0b\u8f7d\uff0c\u540c\u65f6\u6ca1\u6709\u4e0b\u8f7d\u5b8c\u6210\uff0c\u9700\u8981\u53d6\u6d88\u901a\u77e5\u680f"

    # invokes: Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/maya/sdk/m/controller/MsdkManager;->access$500(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/m/controller/MsdkManager;->access$200(Lcom/maya/sdk/m/controller/MsdkManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "downloadId":I
    .end local v1    # "isStartDownload":Z
    :cond_0
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->isLoginSuccess:Z
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$300(Lcom/maya/sdk/m/controller/MsdkManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u63d0\u4ea4\u9000\u51fa\u4fe1\u606f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$600(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/http/MReqManager;

    move-result-object v0

    const-string v1, "logout"

    new-instance v2, Lcom/maya/sdk/m/controller/MsdkManager$1$1;

    invoke-direct {v2, p0}, Lcom/maya/sdk/m/controller/MsdkManager$1$1;-><init>(Lcom/maya/sdk/m/controller/MsdkManager$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/m/http/MReqManager;->submitSdkAction(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    goto :goto_1

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onExitGameSuccess()V

    .line 223
    :goto_1
    return-void
.end method

.method public onInitFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # invokes: Lcom/maya/sdk/m/controller/MsdkManager;->hideInitSplash()V
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$000(Lcom/maya/sdk/m/controller/MsdkManager;)V

    .line 116
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    const-string v1, "error_init"

    invoke-virtual {v0, v1, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->postEventSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onInitFail(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onInitSuccess()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # invokes: Lcom/maya/sdk/m/controller/MsdkManager;->hideInitSplash()V
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$000(Lcom/maya/sdk/m/controller/MsdkManager;)V

    .line 106
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onInitSuccess()V

    .line 108
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$100(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/controller/PlatformLogCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$100(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/controller/PlatformLogCore;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/m/controller/MsdkManager;->access$200(Lcom/maya/sdk/m/controller/MsdkManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/controller/PlatformLogCore;->onInit(Landroid/content/Context;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onLoginFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 129
    const-string v0, "login_cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    const-string v1, "error_login"

    invoke-virtual {v0, v1, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->postEventSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onLoginFail(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onLoginSuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 121
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    const/4 v1, 0x1

    # setter for: Lcom/maya/sdk/m/controller/MsdkManager;->isLoginSuccess:Z
    invoke-static {v0, v1}, Lcom/maya/sdk/m/controller/MsdkManager;->access$302(Lcom/maya/sdk/m/controller/MsdkManager;Z)Z

    .line 122
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onLoginSuccess(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # invokes: Lcom/maya/sdk/m/controller/MsdkManager;->reportPlatformLoginLog(Landroid/os/Bundle;)V
    invoke-static {v0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->access$400(Lcom/maya/sdk/m/controller/MsdkManager;Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method public onLogoutFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onLogoutFail(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public onLogoutSuccess()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onLogoutSuccess()V

    .line 175
    return-void
.end method

.method public onPayFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 164
    const-string v0, "pay_cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    const-string v1, "error_pay"

    invoke-virtual {v0, v1, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->postEventSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onPaySuccess(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 157
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPaySuccess(Landroid/os/Bundle;)V

    .line 160
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$100(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/controller/PlatformLogCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformLogCore;->onPayFinish(Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public onUserSwitchFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 146
    const-string v0, "switch_cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    const-string v1, "error_switch"

    invoke-virtual {v0, v1, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->postEventSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onUserSwitchFail(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onUserSwitchSuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 139
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    const/4 v1, 0x1

    # setter for: Lcom/maya/sdk/m/controller/MsdkManager;->isLoginSuccess:Z
    invoke-static {v0, v1}, Lcom/maya/sdk/m/controller/MsdkManager;->access$302(Lcom/maya/sdk/m/controller/MsdkManager;Z)Z

    .line 140
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onUserSwitchSuccess(Landroid/os/Bundle;)V

    .line 142
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # invokes: Lcom/maya/sdk/m/controller/MsdkManager;->reportPlatformLoginLog(Landroid/os/Bundle;)V
    invoke-static {v0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->access$400(Lcom/maya/sdk/m/controller/MsdkManager;Landroid/os/Bundle;)V

    .line 143
    return-void
.end method
