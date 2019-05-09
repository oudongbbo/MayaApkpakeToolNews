.class public Lcom/maya/sdk/m/model/bean/MsdkBean;
.super Ljava/lang/Object;
.source "MsdkBean.java"


# instance fields
.field public debug:I

.field public extra1:Ljava/lang/String;

.field public extra10:Ljava/lang/String;

.field public extra2:Ljava/lang/String;

.field public extra3:Ljava/lang/String;

.field public extra4:Ljava/lang/String;

.field public extra5:Ljava/lang/String;

.field public extra6:Ljava/lang/String;

.field public extra7:Ljava/lang/String;

.field public extra8:Ljava/lang/String;

.field public extra9:Ljava/lang/String;

.field public gameFinal:I

.field public gameId:Ljava/lang/String;

.field public gameLand:I

.field public gameName:Ljava/lang/String;

.field public gameRate:I

.field public mAppId:Ljava/lang/String;

.field public mAppKey:Ljava/lang/String;

.field public mPayId:Ljava/lang/String;

.field public mPayKey:Ljava/lang/String;

.field public mRefer:Ljava/lang/String;

.field public pushDelay:I

.field public sdk:I

.field public sdkId:I

.field public showExit:I

.field public showSplash:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x64

    iput v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->sdk:I

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->sdkId:I

    .line 17
    const/4 v1, 0x1

    iput v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->showSplash:I

    .line 18
    iput v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->showExit:I

    .line 19
    iput v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->pushDelay:I

    .line 20
    iput v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->debug:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mAppId:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mAppKey:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mPayId:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mPayKey:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mRefer:Ljava/lang/String;

    .line 30
    const/16 v0, 0xa

    iput v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameRate:I

    .line 31
    iput v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameLand:I

    .line 32
    iput v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameFinal:I

    return-void
.end method

.method public static getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pro"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;

    .line 96
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static inflactBean(Landroid/content/Context;Ljava/util/Properties;)Lcom/maya/sdk/m/model/bean/MsdkBean;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prop"    # Ljava/util/Properties;

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "bean":Lcom/maya/sdk/m/model/bean/MsdkBean;
    if-eqz p1, :cond_1a

    .line 48
    new-instance v1, Lcom/maya/sdk/m/model/bean/MsdkBean;

    invoke-direct {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;-><init>()V

    move-object v0, v1

    .line 49
    const-string v1, "sdk"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x65

    goto :goto_0

    :cond_0
    const-string v1, "sdk"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->string2Int(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setSdk(I)V

    .line 50
    const-string v1, "debug"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "debug"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->string2Int(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setDebug(I)V

    .line 52
    const-string v1, "sdk_id"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "sdk_id"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->string2Int(Ljava/lang/String;)I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setSdkId(I)V

    .line 53
    const-string v1, "showSplash"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const-string v1, "showSplash"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->string2Int(Ljava/lang/String;)I

    move-result v1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setShowSplash(I)V

    .line 54
    const-string v1, "showExit"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const-string v1, "showExit"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->string2Int(Ljava/lang/String;)I

    move-result v1

    :goto_4
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setShowExit(I)V

    .line 55
    const-string v1, "pushDelay"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const-string v1, "pushDelay"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->string2Int(Ljava/lang/String;)I

    move-result v1

    :goto_5
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setPushDelay(I)V

    .line 57
    const-string v1, "mAppId"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ""

    goto :goto_6

    :cond_6
    const-string v1, "mAppId"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->unzip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setmAppId(Ljava/lang/String;)V

    .line 58
    const-string v1, "mAppKey"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ""

    goto :goto_7

    :cond_7
    const-string v1, "mAppKey"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->unzip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setmAppKey(Ljava/lang/String;)V

    .line 59
    const-string v1, "mPayId"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ""

    goto :goto_8

    :cond_8
    const-string v1, "mPayId"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->unzip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setmPayId(Ljava/lang/String;)V

    .line 60
    const-string v1, "mPayKey"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, ""

    goto :goto_9

    :cond_9
    const-string v1, "mPayKey"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->unzip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setmPayKey(Ljava/lang/String;)V

    .line 61
    const-string v1, "mRefer"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, ""

    goto :goto_a

    :cond_a
    const-string v1, "mRefer"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->unzip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setmRefer(Ljava/lang/String;)V

    .line 63
    const-string v1, "gameId"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, ""

    goto :goto_b

    :cond_b
    const-string v1, "gameId"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_b
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setGameId(Ljava/lang/String;)V

    .line 64
    const-string v1, "gameName"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, ""

    goto :goto_c

    :cond_c
    const-string v1, "gameName"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setGameName(Ljava/lang/String;)V

    .line 65
    const-string v1, "gameRate"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0xa

    goto :goto_d

    :cond_d
    const-string v1, "gameRate"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->string2Int(Ljava/lang/String;)I

    move-result v1

    :goto_d
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setGameRate(I)V

    .line 66
    const-string v1, "gameLand"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_e

    :cond_e
    const-string v1, "gameLand"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->string2Int(Ljava/lang/String;)I

    move-result v1

    :goto_e
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setGameLand(I)V

    .line 67
    const-string v1, "gameFinal"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_f

    :cond_f
    const-string v1, "gameFinal"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->string2Int(Ljava/lang/String;)I

    move-result v2

    :goto_f
    invoke-virtual {v0, v2}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setGameFinal(I)V

    .line 69
    const-string v1, "extra1"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, ""

    goto :goto_10

    :cond_10
    const-string v1, "extra1"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra1(Ljava/lang/String;)V

    .line 70
    const-string v1, "extra2"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, ""

    goto :goto_11

    :cond_11
    const-string v1, "extra2"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra2(Ljava/lang/String;)V

    .line 71
    const-string v1, "extra3"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, ""

    goto :goto_12

    :cond_12
    const-string v1, "extra3"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra3(Ljava/lang/String;)V

    .line 72
    const-string v1, "extra4"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, ""

    goto :goto_13

    :cond_13
    const-string v1, "extra4"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra4(Ljava/lang/String;)V

    .line 73
    const-string v1, "extra5"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, ""

    goto :goto_14

    :cond_14
    const-string v1, "extra5"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_14
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra5(Ljava/lang/String;)V

    .line 74
    const-string v1, "extra6"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, ""

    goto :goto_15

    :cond_15
    const-string v1, "extra6"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra6(Ljava/lang/String;)V

    .line 75
    const-string v1, "extra7"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, ""

    goto :goto_16

    :cond_16
    const-string v1, "extra7"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_16
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra7(Ljava/lang/String;)V

    .line 76
    const-string v1, "extra8"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, ""

    goto :goto_17

    :cond_17
    const-string v1, "extra8"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_17
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra8(Ljava/lang/String;)V

    .line 77
    const-string v1, "extra9"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, ""

    goto :goto_18

    :cond_18
    const-string v1, "extra9"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_18
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra9(Ljava/lang/String;)V

    .line 78
    const-string v1, "extra10"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, ""

    goto :goto_19

    :cond_19
    const-string v1, "extra10"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_19
    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra10(Ljava/lang/String;)V

    goto :goto_1a

    .line 81
    :cond_1a
    const-string v1, "maya_m"

    const-string v2, "msdkbean is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_1a
    return-object v0
.end method

.method public static isTextEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static string2Int(Ljava/lang/String;)I
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static unzip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .line 101
    const-string v0, "maya.com"

    invoke-static {p1, v0}, Lcom/maya/sdk/m/utils/MsdkUtils;->unZipString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDebug()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->debug:I

    return v0
.end method

.method public getExtra1()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra1:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra10()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra10:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra2()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra2:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra3()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra3:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra4()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra4:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra5()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra5:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra6()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra6:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra7()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra7:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra8()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra8:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra9()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra9:Ljava/lang/String;

    return-object v0
.end method

.method public getGameFinal()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameFinal:I

    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameLand()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameLand:I

    return v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getGameRate()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameRate:I

    return v0
.end method

.method public getPushDelay()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->pushDelay:I

    return v0
.end method

.method public getSdk()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->sdk:I

    return v0
.end method

.method public getSdkId()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->sdkId:I

    return v0
.end method

.method public getShowExit()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->showExit:I

    return v0
.end method

.method public getShowSplash()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->showSplash:I

    return v0
.end method

.method public getmAppId()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getmAppKey()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getmPayId()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mPayId:Ljava/lang/String;

    return-object v0
.end method

.method public getmPayKey()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mPayKey:Ljava/lang/String;

    return-object v0
.end method

.method public getmRefer()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mRefer:Ljava/lang/String;

    return-object v0
.end method

.method public setDebug(I)V
    .locals 0
    .param p1, "debug"    # I

    .line 110
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->debug:I

    .line 111
    return-void
.end method

.method public setExtra1(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra1"    # Ljava/lang/String;

    .line 238
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra1:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setExtra10(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra10"    # Ljava/lang/String;

    .line 310
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra10:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setExtra2(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra2"    # Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra2:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setExtra3(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra3"    # Ljava/lang/String;

    .line 254
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra3:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setExtra4(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra4"    # Ljava/lang/String;

    .line 262
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra4:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setExtra5(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra5"    # Ljava/lang/String;

    .line 270
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra5:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setExtra6(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra6"    # Ljava/lang/String;

    .line 278
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra6:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setExtra7(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra7"    # Ljava/lang/String;

    .line 286
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra7:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setExtra8(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra8"    # Ljava/lang/String;

    .line 294
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra8:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setExtra9(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra9"    # Ljava/lang/String;

    .line 302
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra9:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setGameFinal(I)V
    .locals 0
    .param p1, "gameFinal"    # I

    .line 230
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameFinal:I

    .line 231
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameId"    # Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameId:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setGameLand(I)V
    .locals 0
    .param p1, "gameLand"    # I

    .line 222
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameLand:I

    .line 223
    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameName"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameName:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setGameRate(I)V
    .locals 0
    .param p1, "gameRate"    # I

    .line 214
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameRate:I

    .line 215
    return-void
.end method

.method public setPushDelay(I)V
    .locals 0
    .param p1, "pushDelay"    # I

    .line 150
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->pushDelay:I

    .line 151
    return-void
.end method

.method public setSdk(I)V
    .locals 0
    .param p1, "sdk"    # I

    .line 118
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->sdk:I

    .line 119
    return-void
.end method

.method public setSdkId(I)V
    .locals 0
    .param p1, "debug"    # I

    .line 126
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->sdkId:I

    .line 127
    return-void
.end method

.method public setShowExit(I)V
    .locals 0
    .param p1, "showExit"    # I

    .line 142
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->showExit:I

    .line 143
    return-void
.end method

.method public setShowSplash(I)V
    .locals 0
    .param p1, "showSplash"    # I

    .line 134
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->showSplash:I

    .line 135
    return-void
.end method

.method public setmAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAppId"    # Ljava/lang/String;

    .line 158
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mAppId:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setmAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAppKey"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mAppKey:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setmPayId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPayId"    # Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mPayId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setmPayKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPayKey"    # Ljava/lang/String;

    .line 182
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mPayKey:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setmRefer(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRefer"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mRefer:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MacBean [sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->sdk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sdkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->sdkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showSplash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->showSplash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showExit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->showExit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pushDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->pushDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mPayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPayKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mPayKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->mRefer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gameLand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameLand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gameFinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->gameFinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra8:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra9="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra9:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->extra10:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
