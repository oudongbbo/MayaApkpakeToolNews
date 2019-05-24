.class public abstract Lcom/maya/sdk/m/controller/PlatformCore;
.super Lcom/maya/sdk/m/controller/b;
.source "SourceFile"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MsdkInterfaceExpand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/maya/sdk/m/controller/b;-><init>()V

    return-void
.end method


# virtual methods
.method public doInit(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/m/MyMsdkCallback;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->setPlatform(Lcom/maya/sdk/m/controller/PlatformCore;Landroid/content/Context;)V

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/maya/sdk/m/controller/b;->doInit(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/m/MyMsdkCallback;)V

    return-void
.end method

.method public getPlatformCallBack()Lcom/maya/sdk/m/MyMsdkCallback;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->c:Lcom/maya/sdk/m/MyMsdkCallback;

    return-object v0
.end method

.method public getPlatformConfig()Lcom/maya/sdk/m/model/bean/MsdkBean;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->h:Lcom/maya/sdk/m/model/bean/MsdkBean;

    return-object v0
.end method

.method public getPlatformContext()Landroid/content/Context;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getPlatformPayData()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformSingle()Lcom/maya/sdk/s/app/a;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->a:Lcom/maya/sdk/s/app/a;

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
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method public isNeedInputMoney()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/maya/sdk/m/controller/PlatformCore;->f:Z

    return v0
.end method

.method public mExitGame(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public mInit(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public mOnActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public mOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public mOnDestroy()V
    .locals 0

    return-void
.end method

.method public mOnNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public mOnPause()V
    .locals 0

    return-void
.end method

.method public mOnRestart()V
    .locals 0

    return-void
.end method

.method public mOnResume()V
    .locals 0

    return-void
.end method

.method public mOnStart()V
    .locals 0

    return-void
.end method

.method public mOnStop()V
    .locals 0

    return-void
.end method

.method public mOpenUserNameAuth(Landroid/content/Context;Z)V
    .locals 0

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

    return-void
.end method

.method public mUserLogin(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public mUserLogout(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public mUserPay(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
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

    return-void
.end method

.method public mUserSwitch(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setNeedInputMoney(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/maya/sdk/m/controller/PlatformCore;->f:Z

    return-void
.end method

.method public setPlatformCallBack(Lcom/maya/sdk/m/MyMsdkCallback;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformCore;->c:Lcom/maya/sdk/m/MyMsdkCallback;

    return-void
.end method

.method public setPlatformConfig(Lcom/maya/sdk/m/model/bean/MsdkBean;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformCore;->h:Lcom/maya/sdk/m/model/bean/MsdkBean;

    return-void
.end method

.method public setPlatformContext(Landroid/content/Context;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformCore;->b:Landroid/content/Context;

    return-void
.end method

.method public setPlatformPayData(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformCore;->g:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformCore;->i:Ljava/util/HashMap;

    return-void
.end method
