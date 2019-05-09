.class public Lcom/maya/sdk/framework/model/config/ConfigManager;
.super Lcom/maya/sdk/framework/model/config/ConfigBase;
.source "ConfigManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/maya/sdk/framework/model/config/ConfigBase;-><init>()V

    return-void
.end method

.method public static getGameId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 24
    const-string v0, "gid"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGameKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    const-string v0, "gKey"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGameMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    const-string v0, "mid"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGamePid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    const-string v0, "pid"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInitGameData(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 14
    const-string v0, "data_init"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileDevid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    const-string v0, "dev"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    const-string v0, "device_imei"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    const-string v0, "device_mac"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOtherSdkReyunAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 289
    const-string v0, "reyun_appkey"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 193
    const-string v0, "user_phone_number"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoleBalance(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 247
    const-string v0, "balance"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoleCreateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 280
    const-string v0, "createtime"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoleExtra(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 271
    const-string v0, "extra"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoleId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 207
    const-string v0, "roleId"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoleLevel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 223
    const-string v0, "roleLevel"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoleName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 215
    const-string v0, "roleName"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRolePartyName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 263
    const-string v0, "partyName"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoleServerId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 231
    const-string v0, "serverId"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoleServerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 239
    const-string v0, "serverName"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoleVip(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 255
    const-string v0, "vip"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkDebugS(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    const-string v0, "sdk_debug"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkFloatPosition(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 86
    const-string v0, "sdk_float_position"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSdkRunID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 184
    const-string v0, "sdk_run_id"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkSpecial(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    const-string v0, "sdk_special"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSdkVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 77
    const-string v0, "sdkversion"

    const-string v1, "1.0.0"

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAdult(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_adult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserAge(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_age"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUserAuth(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_auth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserGuard(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_guard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 111
    const-string v0, "user_id"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    const-string v0, "user_name"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 135
    const-string v0, "user_pwd"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 143
    const-string v0, "user_token"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserVname(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    const-string v0, "user_vname"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isSdkSpecial(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "special"    # Z

    .line 90
    const-string v0, "sdk_special"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 91
    return-void
.end method

.method public static setGameId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gid"    # Ljava/lang/String;

    .line 20
    const-string v0, "gid"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static setGameKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;

    .line 28
    const-string v0, "gKey"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static setGameMid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chid"    # Ljava/lang/String;

    .line 44
    const-string v0, "mid"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static setGamePid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # Ljava/lang/String;

    .line 36
    const-string v0, "pid"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static setInitGameData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;

    .line 10
    const-string v0, "data_init"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public static setMobileDevid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dev"    # Ljava/lang/String;

    .line 53
    const-string v0, "dev"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static setMobileIMEI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dev"    # Ljava/lang/String;

    .line 66
    const-string v0, "device_imei"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static setMobileMac(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dev"    # Ljava/lang/String;

    .line 59
    const-string v0, "device_mac"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static setOtherSdkReyunAppkey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reyunAppkey"    # Ljava/lang/String;

    .line 285
    const-string v0, "reyun_appkey"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public static setPhoneNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 189
    const-string v0, "user_phone_number"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static setRoleBalance(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role_id"    # Ljava/lang/String;

    .line 243
    const-string v0, "balance"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public static setRoleCreateTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Ljava/lang/String;

    .line 276
    const-string v0, "createtime"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public static setRoleExtra(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role_id"    # Ljava/lang/String;

    .line 267
    const-string v0, "extra"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public static setRoleId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role_id"    # Ljava/lang/String;

    .line 203
    const-string v0, "roleId"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public static setRoleLevel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role_id"    # Ljava/lang/String;

    .line 219
    const-string v0, "roleLevel"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static setRoleName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role_id"    # Ljava/lang/String;

    .line 211
    const-string v0, "roleName"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public static setRolePartyName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role_id"    # Ljava/lang/String;

    .line 259
    const-string v0, "partyName"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public static setRoleServerId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role_id"    # Ljava/lang/String;

    .line 227
    const-string v0, "serverId"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static setRoleServerName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role_id"    # Ljava/lang/String;

    .line 235
    const-string v0, "serverName"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static setRoleVip(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role_id"    # Ljava/lang/String;

    .line 251
    const-string v0, "vip"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public static setSdkDebugS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "debug"    # Ljava/lang/String;

    .line 98
    const-string v0, "sdk_debug"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static setSdkFloatPosition(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # I

    .line 81
    const-string v0, "sdk_float_position"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public static setSdkRunID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "run_id"    # Ljava/lang/String;

    .line 180
    const-string v0, "sdk_run_id"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public static setSdkVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "debug"    # Ljava/lang/String;

    .line 73
    const-string v0, "sdkversion"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static setUserAdult(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "adult"    # Z

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_adult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 157
    return-void
.end method

.method public static setUserAge(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "age"    # I

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_age"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 173
    return-void
.end method

.method public static setUserAuth(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "auth"    # Z

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_auth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 149
    return-void
.end method

.method public static setUserGuard(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "guard"    # Z

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_guard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 165
    return-void
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userid"    # Ljava/lang/String;

    .line 107
    const-string v0, "user_id"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static setUserName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;

    .line 115
    const-string v0, "user_name"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static setUserPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "password"    # Ljava/lang/String;

    .line 131
    const-string v0, "user_pwd"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static setUserToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .line 139
    const-string v0, "user_token"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static setUserVname(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vname"    # Ljava/lang/String;

    .line 123
    const-string v0, "user_vname"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method
