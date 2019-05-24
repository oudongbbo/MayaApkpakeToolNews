.class public Lcom/maya/sdk/m/model/bean/MsdkBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 15
    iput v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->a:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->b:I

    const/4 v1, 0x1

    .line 17
    iput v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->c:I

    .line 18
    iput v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->d:I

    .line 19
    iput v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->e:I

    .line 20
    iput v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->f:I

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->g:Ljava/lang/String;

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->h:Ljava/lang/String;

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->i:Ljava/lang/String;

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->j:Ljava/lang/String;

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->k:Ljava/lang/String;

    const/16 v0, 0xa

    .line 30
    iput v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->n:I

    .line 31
    iput v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->o:I

    .line 32
    iput v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->p:I

    return-void
.end method

.method public static getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static inflactBean(Landroid/content/Context;Ljava/util/Properties;)Lcom/maya/sdk/m/model/bean/MsdkBean;
    .locals 3

    if-eqz p1, :cond_1a

    .line 48
    new-instance v0, Lcom/maya/sdk/m/model/bean/MsdkBean;

    invoke-direct {v0}, Lcom/maya/sdk/m/model/bean/MsdkBean;-><init>()V

    const-string v1, "sdk"

    .line 49
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

    const-string v1, "debug"

    .line 50
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

    const-string v1, "sdk_id"

    .line 52
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

    const-string v1, "showSplash"

    .line 53
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

    const-string v1, "showExit"

    .line 54
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

    const-string v1, "pushDelay"

    .line 55
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

    const-string v1, "mAppId"

    .line 57
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

    const-string v1, "mAppKey"

    .line 58
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

    const-string v1, "mPayId"

    .line 59
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

    const-string v1, "mPayKey"

    .line 60
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

    const-string v1, "mRefer"

    .line 61
    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p0, ""

    goto :goto_a

    :cond_a
    const-string v1, "mRefer"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/maya/sdk/m/model/bean/MsdkBean;->unzip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_a
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setmRefer(Ljava/lang/String;)V

    const-string p0, "gameId"

    .line 63
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, ""

    goto :goto_b

    :cond_b
    const-string p0, "gameId"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_b
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setGameId(Ljava/lang/String;)V

    const-string p0, "gameName"

    .line 64
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, ""

    goto :goto_c

    :cond_c
    const-string p0, "gameName"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_c
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setGameName(Ljava/lang/String;)V

    const-string p0, "gameRate"

    .line 65
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0xa

    goto :goto_d

    :cond_d
    const-string p0, "gameRate"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->string2Int(Ljava/lang/String;)I

    move-result p0

    :goto_d
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setGameRate(I)V

    const-string p0, "gameLand"

    .line 66
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_e

    :cond_e
    const-string p0, "gameLand"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->string2Int(Ljava/lang/String;)I

    move-result p0

    :goto_e
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setGameLand(I)V

    const-string p0, "gameFinal"

    .line 67
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_f

    :cond_f
    const-string p0, "gameFinal"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->string2Int(Ljava/lang/String;)I

    move-result v2

    :goto_f
    invoke-virtual {v0, v2}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setGameFinal(I)V

    const-string p0, "extra1"

    .line 69
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, ""

    goto :goto_10

    :cond_10
    const-string p0, "extra1"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_10
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra1(Ljava/lang/String;)V

    const-string p0, "extra2"

    .line 70
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, ""

    goto :goto_11

    :cond_11
    const-string p0, "extra2"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_11
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra2(Ljava/lang/String;)V

    const-string p0, "extra3"

    .line 71
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, ""

    goto :goto_12

    :cond_12
    const-string p0, "extra3"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_12
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra3(Ljava/lang/String;)V

    const-string p0, "extra4"

    .line 72
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, ""

    goto :goto_13

    :cond_13
    const-string p0, "extra4"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_13
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra4(Ljava/lang/String;)V

    const-string p0, "extra5"

    .line 73
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, ""

    goto :goto_14

    :cond_14
    const-string p0, "extra5"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_14
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra5(Ljava/lang/String;)V

    const-string p0, "extra6"

    .line 74
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, ""

    goto :goto_15

    :cond_15
    const-string p0, "extra6"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_15
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra6(Ljava/lang/String;)V

    const-string p0, "extra7"

    .line 75
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, ""

    goto :goto_16

    :cond_16
    const-string p0, "extra7"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_16
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra7(Ljava/lang/String;)V

    const-string p0, "extra8"

    .line 76
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, ""

    goto :goto_17

    :cond_17
    const-string p0, "extra8"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_17
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra8(Ljava/lang/String;)V

    const-string p0, "extra9"

    .line 77
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const-string p0, ""

    goto :goto_18

    :cond_18
    const-string p0, "extra9"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_18
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra9(Ljava/lang/String;)V

    const-string p0, "extra10"

    .line 78
    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->isTextEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, ""

    goto :goto_19

    :cond_19
    const-string p0, "extra10"

    invoke-static {p1, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getValue(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_19
    invoke-virtual {v0, p0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->setExtra10(Ljava/lang/String;)V

    goto :goto_1a

    :cond_1a
    const-string p0, "maya_m"

    const-string p1, "msdkbean is null"

    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1a
    return-object v0
.end method

.method public static isTextEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static string2Int(Ljava/lang/String;)I
    .locals 0

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static unzip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "maya.com"

    .line 101
    invoke-static {p1, p0}, Lcom/maya/sdk/m/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDebug()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->f:I

    return v0
.end method

.method public getExtra1()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra10()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra2()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra3()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra4()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra5()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra6()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra7()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra8()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra9()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getGameFinal()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->p:I

    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getGameLand()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->o:I

    return v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getGameRate()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->n:I

    return v0
.end method

.method public getPushDelay()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->e:I

    return v0
.end method

.method public getSdk()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->a:I

    return v0
.end method

.method public getSdkId()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->b:I

    return v0
.end method

.method public getShowExit()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->d:I

    return v0
.end method

.method public getShowSplash()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->c:I

    return v0
.end method

.method public getmAppId()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getmAppKey()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getmPayId()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getmPayKey()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getmRefer()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->k:Ljava/lang/String;

    return-object v0
.end method

.method public setDebug(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->f:I

    return-void
.end method

.method public setExtra1(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->q:Ljava/lang/String;

    return-void
.end method

.method public setExtra10(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->z:Ljava/lang/String;

    return-void
.end method

.method public setExtra2(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->r:Ljava/lang/String;

    return-void
.end method

.method public setExtra3(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->s:Ljava/lang/String;

    return-void
.end method

.method public setExtra4(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->t:Ljava/lang/String;

    return-void
.end method

.method public setExtra5(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->u:Ljava/lang/String;

    return-void
.end method

.method public setExtra6(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->v:Ljava/lang/String;

    return-void
.end method

.method public setExtra7(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->w:Ljava/lang/String;

    return-void
.end method

.method public setExtra8(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->x:Ljava/lang/String;

    return-void
.end method

.method public setExtra9(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->y:Ljava/lang/String;

    return-void
.end method

.method public setGameFinal(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->p:I

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->l:Ljava/lang/String;

    return-void
.end method

.method public setGameLand(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->o:I

    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->m:Ljava/lang/String;

    return-void
.end method

.method public setGameRate(I)V
    .locals 0

    .line 214
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->n:I

    return-void
.end method

.method public setPushDelay(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->e:I

    return-void
.end method

.method public setSdk(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->a:I

    return-void
.end method

.method public setSdkId(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->b:I

    return-void
.end method

.method public setShowExit(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->d:I

    return-void
.end method

.method public setShowSplash(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->c:I

    return-void
.end method

.method public setmAppId(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->g:Ljava/lang/String;

    return-void
.end method

.method public setmAppKey(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->h:Ljava/lang/String;

    return-void
.end method

.method public setmPayId(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->i:Ljava/lang/String;

    return-void
.end method

.method public setmPayKey(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->j:Ljava/lang/String;

    return-void
.end method

.method public setmRefer(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->k:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MacBean [sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sdkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showSplash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showExit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pushDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAppKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPayKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gameLand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gameFinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra9="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/model/bean/MsdkBean;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
