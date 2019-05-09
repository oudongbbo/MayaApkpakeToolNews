.class public Lcom/maya/sdk/s/core/model/GameConfig;
.super Ljava/lang/Object;
.source "GameConfig.java"


# static fields
.field public static CONFIG_FILE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "mayaGame.ini"

    sput-object v0, Lcom/maya/sdk/s/core/model/GameConfig;->CONFIG_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initConfig(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    sget-object v0, Lcom/maya/sdk/s/core/model/GameConfig;->CONFIG_FILE_NAME:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->readPropertites(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 21
    .local v0, "pro":Ljava/util/Properties;
    if-eqz v0, :cond_7

    .line 22
    const-string v1, "gid"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "appid":Ljava/lang/String;
    const-string v2, "pid"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "cchid":Ljava/lang/String;
    const-string v3, "mid"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "mdid":Ljava/lang/String;
    const-string v4, "sdkversion"

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "sdkversion":Ljava/lang/String;
    const-string v5, "sdk_float_position"

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, "sdkFloatPosition":Ljava/lang/String;
    const-string v6, "sdk_id"

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 29
    .local v6, "sdkid":Ljava/lang/String;
    const-string v7, "sdk_float_switch"

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 31
    .local v7, "floatSwitch":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 32
    const-string v8, "check assets/mayaGame.ini\uff0cgid is null!"

    invoke-static {p0, v8}, Lcom/maya/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 35
    const-string v8, "check assets/mayaGame.ini\uff0cpid is null!"

    invoke-static {p0, v8}, Lcom/maya/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 38
    const-string v8, "check assets/mayaGame.ini\uff0cmid is null!"

    invoke-static {p0, v8}, Lcom/maya/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 41
    const-string v8, "check assets/mayaGame.ini\uff0csdkversion is null!"

    invoke-static {p0, v8}, Lcom/maya/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 44
    const-string v5, "2"

    .line 46
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 47
    const-string v6, "0"

    .line 49
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 50
    const-string v7, "1"

    .line 53
    :cond_6
    invoke-static {p0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setGameId(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    invoke-static {p0, v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setGamePid(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, v3}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setGameMid(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    invoke-static {p0, v4}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setSdkVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {p0, v8}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setSdkFloatPosition(Landroid/content/Context;I)V

    .line 59
    invoke-static {p0, v6}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setSdkId(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, v7}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setSdkFloatSwitch(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    .end local v1    # "appid":Ljava/lang/String;
    .end local v2    # "cchid":Ljava/lang/String;
    .end local v3    # "mdid":Ljava/lang/String;
    .end local v4    # "sdkversion":Ljava/lang/String;
    .end local v5    # "sdkFloatPosition":Ljava/lang/String;
    .end local v6    # "sdkid":Ljava/lang/String;
    .end local v7    # "floatSwitch":Ljava/lang/String;
    :cond_7
    return-void
.end method
