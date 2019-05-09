.class public Lcom/maya/sdk/m/model/MsdkConfig;
.super Ljava/lang/Object;
.source "MsdkConfig.java"


# static fields
.field public static CONFIG_FILE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "mayaMsdk.ini"

    sput-object v0, Lcom/maya/sdk/m/model/MsdkConfig;->CONFIG_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static initConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MsdkBean;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "initBean":Lcom/maya/sdk/m/model/bean/MsdkBean;
    sget-object v1, Lcom/maya/sdk/m/model/MsdkConfig;->CONFIG_FILE_NAME:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->readPropertites(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    .line 25
    .local v1, "pro":Ljava/util/Properties;
    invoke-static {p0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->inflactBean(Landroid/content/Context;Ljava/util/Properties;)Lcom/maya/sdk/m/model/bean/MsdkBean;

    move-result-object v0

    .line 27
    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 28
    new-instance v3, Lcom/maya/sdk/m/model/bean/MsdkBean;

    invoke-direct {v3}, Lcom/maya/sdk/m/model/bean/MsdkBean;-><init>()V

    move-object v0, v3

    .line 29
    const/16 v3, 0x65

    invoke-virtual {v0, v3}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setSdk(I)V

    .line 30
    invoke-virtual {v0, v2}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setShowSplash(I)V

    .line 31
    invoke-virtual {v0, v2}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setShowExit(I)V

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getPushDelay()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 36
    invoke-static {p0, v2}, Lcom/maya/sdk/m/model/MConfigManager;->setIsPushDelay(Landroid/content/Context;Z)V

    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/maya/sdk/m/model/MConfigManager;->setIsPushDelay(Landroid/content/Context;Z)V

    .line 41
    :goto_0
    return-object v0
.end method
