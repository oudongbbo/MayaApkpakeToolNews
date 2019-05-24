.class public Lcom/maya/sdk/m/controller/MsdkCore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MsdkInterface;


# instance fields
.field public f:Lcom/maya/sdk/m/controller/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/maya/sdk/m/controller/a;

    invoke-direct {v0}, Lcom/maya/sdk/m/controller/a;-><init>()V

    iput-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    return-void
.end method


# virtual methods
.method public doExitGame(Landroid/content/Context;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/a;->doExitGame(Landroid/content/Context;)V

    return-void
.end method

.method public doInit(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/m/MyMsdkCallback;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/m/controller/a;->doInit(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/m/MyMsdkCallback;)V

    return-void
.end method

.method public getAppConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;
    .locals 0

    .line 120
    invoke-static {p1}, Lcom/maya/sdk/m/model/a;->a(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;

    move-result-object p1

    return-object p1
.end method

.method public getGid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/MsdkCore;->getAppConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/sdk/m/model/bean/MAppBean;->getGid()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/MsdkCore;->getAppConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/sdk/m/model/bean/MAppBean;->getMid()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/MsdkCore;->getAppConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/sdk/m/model/bean/MAppBean;->getPid()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSdkVer(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/MsdkCore;->getAppConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/sdk/m/model/bean/MAppBean;->getSdkVer()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/m/controller/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/a;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/a;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/a;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/a;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/a;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/a;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/a;->onStop()V

    return-void
.end method

.method public openSdkCustomerService(Landroid/content/Context;)V
    .locals 2

    .line 168
    sget-object v0, Lcom/maya/sdk/m/http/c;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "maya_tips_url_not_exit"

    .line 169
    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 172
    :cond_0
    new-instance v0, Lcom/maya/sdk/m/utils/b;

    invoke-direct {v0}, Lcom/maya/sdk/m/utils/b;-><init>()V

    sget-object v1, Lcom/maya/sdk/m/http/c;->l:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/m/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public openUserNameAuth(Landroid/content/Context;Z)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1, p2}, Lcom/maya/sdk/m/controller/a;->openUserNameAuth(Landroid/content/Context;Z)V

    return-void
.end method

.method public openUserSuperVip(Landroid/content/Context;)V
    .locals 3

    .line 148
    sget-object v0, Lcom/maya/sdk/m/http/c;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "maya_tips_url_not_exit"

    .line 149
    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 153
    :cond_0
    sget-object v0, Lcom/maya/sdk/m/http/c;->m:Ljava/lang/String;

    new-instance v1, Lcom/maya/sdk/m/controller/MsdkCore$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/controller/MsdkCore$1;-><init>(Lcom/maya/sdk/m/controller/MsdkCore;)V

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v2, v1}, Lcom/maya/sdk/m/utils/b;->a(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V

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

    .line 78
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/a;->roleChangeName(Ljava/util/HashMap;)V

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

    .line 66
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/a;->roleCreate(Ljava/util/HashMap;)V

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

    .line 70
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/a;->roleEnterGame(Ljava/util/HashMap;)V

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

    .line 74
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/a;->roleLevelUp(Ljava/util/HashMap;)V

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

    .line 62
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/a;->serverSelect(Ljava/util/HashMap;)V

    return-void
.end method

.method public userLogin(Landroid/content/Context;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/a;->userLogin(Landroid/content/Context;)V

    return-void
.end method

.method public userLogout(Landroid/content/Context;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/a;->userLogout(Landroid/content/Context;)V

    return-void
.end method

.method public userPay(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
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

    .line 53
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1, p2}, Lcom/maya/sdk/m/controller/a;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method public userSwitch(Landroid/content/Context;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkCore;->f:Lcom/maya/sdk/m/controller/a;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/a;->userSwitch(Landroid/content/Context;)V

    return-void
.end method
