.class Lcom/maya/sdk/m/controller/PlatformManager$9;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/m/MyMsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager;->initPlatformCallBack(Lcom/maya/sdk/m/MyMsdkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/PlatformManager;

.field final synthetic val$callback:Lcom/maya/sdk/m/MyMsdkCallback;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager;Lcom/maya/sdk/m/MyMsdkCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/PlatformManager;

    .line 1067
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitGameFail()V
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onExitGameFail()V

    .line 1131
    return-void
.end method

.method public onExitGameSuccess()V
    .locals 3

    .line 1122
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->roleInfos:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    const-string v1, "exitGame"

    iget-object v2, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v2, v2, Lcom/maya/sdk/m/controller/PlatformManager;->roleInfos:Ljava/util/HashMap;

    # invokes: Lcom/maya/sdk/m/controller/PlatformManager;->postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/m/controller/PlatformManager;->access$300(Lcom/maya/sdk/m/controller/PlatformManager;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onExitGameSuccess()V

    .line 1127
    return-void
.end method

.method public onInitFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1117
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onInitFail(Ljava/lang/String;)V

    .line 1118
    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onInitSuccess()V

    .line 1114
    return-void
.end method

.method public onLoginFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1109
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onLoginFail(Ljava/lang/String;)V

    .line 1110
    return-void
.end method

.method public onLoginSuccess(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1105
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onLoginSuccess(Landroid/os/Bundle;)V

    .line 1106
    return-void
.end method

.method public onLogoutFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1101
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onLogoutFail(Ljava/lang/String;)V

    .line 1102
    return-void
.end method

.method public onLogoutSuccess()V
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/maya/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    .line 1097
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onLogoutSuccess()V

    .line 1098
    return-void
.end method

.method public onPayFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1092
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method public onPaySuccess(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1088
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPaySuccess(Landroid/os/Bundle;)V

    .line 1089
    return-void
.end method

.method public onUserSwitchFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1080
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-boolean v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onLoginFail(Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onUserSwitchFail(Ljava/lang/String;)V

    .line 1085
    :goto_0
    return-void
.end method

.method public onUserSwitchSuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1070
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-boolean v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/maya/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    .line 1073
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onLoginSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$9;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onUserSwitchSuccess(Landroid/os/Bundle;)V

    .line 1077
    :goto_0
    return-void
.end method
