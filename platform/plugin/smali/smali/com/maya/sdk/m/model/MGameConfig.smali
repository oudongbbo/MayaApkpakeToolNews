.class public Lcom/maya/sdk/m/model/MGameConfig;
.super Ljava/lang/Object;
.source "MGameConfig.java"


# static fields
.field public static CONFIG_FILE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "mayaGame.ini"

    sput-object v0, Lcom/maya/sdk/m/model/MGameConfig;->CONFIG_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 21
    new-instance v0, Lcom/maya/sdk/m/model/bean/MAppBean;

    invoke-direct {v0}, Lcom/maya/sdk/m/model/bean/MAppBean;-><init>()V

    .line 22
    .local v0, "bean":Lcom/maya/sdk/m/model/bean/MAppBean;
    sget-object v1, Lcom/maya/sdk/m/model/MGameConfig;->CONFIG_FILE_NAME:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->readPropertites(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    .line 23
    .local v1, "pro":Ljava/util/Properties;
    if-eqz v1, :cond_6

    .line 24
    const-string v2, "gid"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "gid":Ljava/lang/String;
    const-string v3, "pid"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "pid":Ljava/lang/String;
    const-string v4, "mid"

    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "mid":Ljava/lang/String;
    const-string v5, "sdkversion"

    invoke-virtual {v1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, "sdkver":Ljava/lang/String;
    const-string v6, "sdk_debug"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "debug":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 32
    const-string v7, "please cheak assets/mayaGame.ini\uff0cgid is null!"

    invoke-static {p0, v7}, Lcom/maya/sdk/m/model/MGameConfig;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 34
    const-string v7, "please cheak assets/mayaGame.ini\uff0cpid  is null!"

    invoke-static {p0, v7}, Lcom/maya/sdk/m/model/MGameConfig;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 36
    const-string v7, "please cheak assets/mayaGame.ini\uff0cmid  is null!"

    invoke-static {p0, v7}, Lcom/maya/sdk/m/model/MGameConfig;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 38
    const-string v7, "please cheak assets/mayaGame.ini\uff0csdkversion is null!"

    invoke-static {p0, v7}, Lcom/maya/sdk/m/model/MGameConfig;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 40
    const-string v6, "0"

    goto :goto_0

    .line 41
    :cond_4
    const-string v7, "2.0.0"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 42
    const-string v7, "please cheak assets/mayaGame.ini\uff0csdkversion is old!"

    invoke-static {p0, v7}, Lcom/maya/sdk/m/model/MGameConfig;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    :cond_5
    :goto_0
    invoke-static {p0, v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setGameId(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    invoke-static {p0, v3}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setGamePid(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-static {p0, v4}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setGameMid(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-static {p0, v5}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setSdkVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v2}, Lcom/maya/sdk/m/model/bean/MAppBean;->setGid(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v3}, Lcom/maya/sdk/m/model/bean/MAppBean;->setPid(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v4}, Lcom/maya/sdk/m/model/bean/MAppBean;->setMid(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v5}, Lcom/maya/sdk/m/model/bean/MAppBean;->setSdkVer(Ljava/lang/String;)V

    .line 54
    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/maya/sdk/m/model/bean/MAppBean;->setDebug(Z)V

    .line 56
    return-object v0

    .line 59
    .end local v2    # "gid":Ljava/lang/String;
    .end local v3    # "pid":Ljava/lang/String;
    .end local v4    # "mid":Ljava/lang/String;
    .end local v5    # "sdkver":Ljava/lang/String;
    .end local v6    # "debug":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    return-object v2
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "words"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    return-void
.end method
