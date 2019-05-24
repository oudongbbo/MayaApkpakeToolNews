.class public Lcom/maya/sdk/m/model/MConfigManager;
.super Lcom/maya/sdk/framework/model/a/b;
.source "SourceFile"


# static fields
.field public static final SDK_IS_NEW_LOGIN:Ljava/lang/String; = "isnewlogin"

.field public static final SDK_IS_NEW_LOGIN_AFTER_CCHLOGIN:Ljava/lang/String; = "isnewlogin_after_cchlogin"

.field public static final SDK_IS_NEW_PAY:Ljava/lang/String; = "isnewpay"

.field public static final SDK_PUSH_DELAY_STATE:Ljava/lang/String; = "push_delay_state"

.field public static final SDK_PUSH_DELAY_TIME:Ljava/lang/String; = "push_delay_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/maya/sdk/framework/model/a/b;-><init>()V

    return-void
.end method

.method public static getIsNewLogin(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "isnewlogin"

    const/4 v1, 0x0

    .line 40
    invoke-static {p0, v0, v1}, Lcom/maya/sdk/m/model/MConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getIsNewLoginAfterChannel(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "isnewlogin_after_cchlogin"

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Lcom/maya/sdk/m/model/MConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getIsNewPay(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "isnewpay"

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, v0, v1}, Lcom/maya/sdk/m/model/MConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getIsPushDelay(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "push_delay_state"

    const/4 v1, 0x1

    .line 20
    invoke-static {p0, v0, v1}, Lcom/maya/sdk/m/model/MConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getPushDelayTime(Landroid/content/Context;)J
    .locals 3

    const-string v0, "push_delay_time"

    const-wide/32 v1, 0x1499700

    .line 31
    invoke-static {p0, v0, v1, v2}, Lcom/maya/sdk/m/model/MConfigManager;->getLongData(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRoleCreateTimeByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 85
    invoke-static {p0, p1, v0}, Lcom/maya/sdk/m/model/MConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUpdateStartState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, p1, v0}, Lcom/maya/sdk/m/model/MConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setIsNewLogin(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "isnewlogin"

    .line 35
    invoke-static {p0, v0, p1}, Lcom/maya/sdk/m/model/MConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 36
    invoke-static {p0, p1}, Lcom/maya/sdk/m/model/MConfigManager;->isSdkSpecial(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setIsNewLoginAfterChannel(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "isnewlogin_after_cchlogin"

    .line 44
    invoke-static {p0, v0, p1}, Lcom/maya/sdk/m/model/MConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 45
    invoke-static {p0, p1}, Lcom/maya/sdk/m/model/MConfigManager;->isSdkSpecial(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setIsNewPay(Landroid/content/Context;Z)V
    .locals 1

    .line 54
    invoke-static {p0, p1}, Lcom/maya/sdk/m/model/MConfigManager;->isSdkSpecial(Landroid/content/Context;Z)V

    const-string v0, "isnewpay"

    .line 55
    invoke-static {p0, v0, p1}, Lcom/maya/sdk/m/model/MConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setIsPushDelay(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "push_delay_state"

    .line 16
    invoke-static {p0, v0, p1}, Lcom/maya/sdk/m/model/MConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setPushDelayTime(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "push_delay_time"

    .line 23
    invoke-static {p0, v0, p1, p2}, Lcom/maya/sdk/m/model/MConfigManager;->setLongData(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setRoleCreateTimeByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lcom/maya/sdk/m/model/MConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUpdateStartState(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 63
    invoke-static {p0, p1, p2}, Lcom/maya/sdk/m/model/MConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
