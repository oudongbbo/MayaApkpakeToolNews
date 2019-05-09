.class public Lcom/maya/sdk/m/controller/MsdkCore;
.super Ljava/lang/Object;
.source "MsdkCore.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MsdkInterface;


# instance fields
.field public sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-direct {v0}, Lcom/maya/sdk/m/controller/MsdkManager;-><init>()V

    iput-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    .line 27
    return-void
.end method


# virtual methods
.method public doExitGame(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->doExitGame(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public doInit(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/m/MyMsdkCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/maya/sdk/m/MyMsdkCallback;

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/m/controller/MsdkManager;->doInit(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/m/MyMsdkCallback;)V

    .line 33
    return-void
.end method

.method public getAppConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    invoke-static {p1}, Lcom/maya/sdk/m/model/MGameConfig;->initConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;

    move-result-object v0

    return-object v0
.end method

.method public getGid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/MsdkCore;->getAppConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/m/model/bean/MAppBean;->getGid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/MsdkCore;->getAppConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/m/model/bean/MAppBean;->getMid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/MsdkCore;->getAppConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/m/model/bean/MAppBean;->getPid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVer(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/MsdkCore;->getAppConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/m/model/bean/MAppBean;->getSdkVer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/m/controller/MsdkManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 112
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->onDestroy()V

    .line 97
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->onNewIntent(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->onPause()V

    .line 89
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->onRestart()V

    .line 101
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->onResume()V

    .line 85
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->onStart()V

    .line 81
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->onStop()V

    .line 93
    return-void
.end method

.method public openSdkCustomerService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 165
    sget-object v0, Lcom/maya/sdk/m/http/MReqUrls;->WEB_KEFU_SERVICE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "maya_tips_url_not_exit"

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Lcom/maya/sdk/m/utils/MsdkUtils;

    invoke-direct {v0}, Lcom/maya/sdk/m/utils/MsdkUtils;-><init>()V

    sget-object v1, Lcom/maya/sdk/m/http/MReqUrls;->WEB_KEFU_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/m/utils/MsdkUtils;->showSdkCustomerServiceActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void
.end method

.method public openUserNameAuth(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "canCancel"    # Z

    .line 139
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1, p2}, Lcom/maya/sdk/m/controller/MsdkManager;->openUserNameAuth(Landroid/content/Context;Z)V

    .line 140
    return-void
.end method

.method public openUserSuperVip(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    sget-object v0, Lcom/maya/sdk/m/http/MReqUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "maya_tips_url_not_exit"

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 150
    :cond_0
    sget-object v0, Lcom/maya/sdk/m/http/MReqUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    new-instance v1, Lcom/maya/sdk/m/controller/MsdkCore$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/controller/MsdkCore$1;-><init>(Lcom/maya/sdk/m/controller/MsdkCore;)V

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v2, v1}, Lcom/maya/sdk/m/utils/MsdkUtils;->showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 160
    :goto_0
    return-void
.end method

.method public roleChangeName(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->roleChangeName(Ljava/util/HashMap;)V

    .line 76
    return-void
.end method

.method public roleCreate(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->roleCreate(Ljava/util/HashMap;)V

    .line 64
    return-void
.end method

.method public roleEnterGame(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->roleEnterGame(Ljava/util/HashMap;)V

    .line 68
    return-void
.end method

.method public roleLevelUp(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->roleLevelUp(Ljava/util/HashMap;)V

    .line 72
    return-void
.end method

.method public serverSelect(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->serverSelect(Ljava/util/HashMap;)V

    .line 60
    return-void
.end method

.method public userLogin(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->userLogin(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public userLogout(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->userLogout(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public userPay(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p2, "payinfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1, p2}, Lcom/maya/sdk/m/controller/MsdkManager;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 51
    return-void
.end method

.method public userSwitch(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->sdkCore:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->userSwitch(Landroid/content/Context;)V

    .line 43
    return-void
.end method
