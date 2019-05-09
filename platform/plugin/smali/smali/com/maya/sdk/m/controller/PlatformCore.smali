.class public abstract Lcom/maya/sdk/m/controller/PlatformCore;
.super Lcom/maya/sdk/m/controller/PlatformManager;
.source "PlatformCore.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MsdkInterfaceExpand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/maya/sdk/m/controller/PlatformManager;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public doInit(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/m/MyMsdkCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/maya/sdk/m/MyMsdkCallback;

    .line 66
    invoke-virtual {p0, p0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->setPlatform(Lcom/maya/sdk/m/controller/PlatformCore;Landroid/content/Context;)V

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/maya/sdk/m/controller/PlatformManager;->doInit(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/m/MyMsdkCallback;)V

    .line 68
    return-void
.end method

.method public getPlatformCallBack()Lcom/maya/sdk/m/MyMsdkCallback;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    return-object v0
.end method

.method public getPlatformConfig()Lcom/maya/sdk/m/model/bean/MsdkBean;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    return-object v0
.end method

.method public getPlatformContext()Landroid/content/Context;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPlatformPayData()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->payDataExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformSingle()Lcom/maya/sdk/s/app/FMSdkCore;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    return-object v0
.end method

.method public getRoleInfos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->roleInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method public isNeedInputMoney()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->isNeedInputMoney:Z

    return v0
.end method

.method public mExitGame(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    return-void
.end method

.method public mInit(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    return-void
.end method

.method public mOnActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 153
    return-void
.end method

.method public mOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 163
    return-void
.end method

.method public mOnDestroy()V
    .locals 0

    .line 143
    return-void
.end method

.method public mOnNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 158
    return-void
.end method

.method public mOnPause()V
    .locals 0

    .line 133
    return-void
.end method

.method public mOnRestart()V
    .locals 0

    .line 148
    return-void
.end method

.method public mOnResume()V
    .locals 0

    .line 128
    return-void
.end method

.method public mOnStart()V
    .locals 0

    .line 123
    return-void
.end method

.method public mOnStop()V
    .locals 0

    .line 138
    return-void
.end method

.method public mOpenUserNameAuth(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "canCancel"    # Z

    .line 167
    return-void
.end method

.method public mRoleCreate(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public mRoleEnterGame(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public mRoleUpdate(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public mRoleUpgrade(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public mUserLogin(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    return-void
.end method

.method public mUserLogout(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    return-void
.end method

.method public mUserPay(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
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

    .line 98
    .local p2, "payinfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public mUserSwitch(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    return-void
.end method

.method public setNeedInputMoney(Z)V
    .locals 0
    .param p1, "isNeedInputMoney"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/maya/sdk/m/controller/PlatformCore;->isNeedInputMoney:Z

    .line 54
    return-void
.end method

.method public setPlatformCallBack(Lcom/maya/sdk/m/MyMsdkCallback;)V
    .locals 0
    .param p1, "mCallBack"    # Lcom/maya/sdk/m/MyMsdkCallback;

    .line 41
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformCore;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    .line 42
    return-void
.end method

.method public setPlatformConfig(Lcom/maya/sdk/m/model/bean/MsdkBean;)V
    .locals 0
    .param p1, "mConfig"    # Lcom/maya/sdk/m/model/bean/MsdkBean;

    .line 59
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformCore;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    .line 60
    return-void
.end method

.method public setPlatformContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "sdkContext"    # Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformCore;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public setPlatformPayData(Ljava/lang/String;)V
    .locals 0
    .param p1, "payDataExtra"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformCore;->payDataExtra:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setRoleInfos(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "roleInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformCore;->roleInfos:Ljava/util/HashMap;

    .line 36
    return-void
.end method
