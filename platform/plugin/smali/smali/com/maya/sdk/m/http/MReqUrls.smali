.class public Lcom/maya/sdk/m/http/MReqUrls;
.super Ljava/lang/Object;
.source "MReqUrls.java"


# static fields
.field public static API_M_CHANNEL_LOGIN:Ljava/lang/String;

.field public static API_M_COLLECT_DEVICE:Ljava/lang/String;

.field public static API_M_COLLECT_ROLE:Ljava/lang/String;

.field public static API_M_COLLECT_SDK_ERROR:Ljava/lang/String;

.field public static API_M_COLLECT_SDK_RUNNING:Ljava/lang/String;

.field public static API_M_INIT:Ljava/lang/String;

.field public static API_M_ORDER_CREATE:Ljava/lang/String;

.field public static API_M_ORDER_QUERY:Ljava/lang/String;

.field public static API_M_USER_ACTIVE:Ljava/lang/String;

.field public static API_M_USER_ACTIVE_CHECK:Ljava/lang/String;

.field public static API_M_USER_PUSH:Ljava/lang/String;

.field public static WEB_KEFU_SERVICE:Ljava/lang/String;

.field public static WEB_USER_HELP:Ljava/lang/String;

.field public static WEB_USER_SUPERVIP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "https://sdkapi.mayauc.com/api/v1/sy/init"

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->API_M_INIT:Ljava/lang/String;

    .line 17
    const-string v0, "https://logapi.mayauc.com/api/v1/device/index"

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_DEVICE:Ljava/lang/String;

    .line 19
    const-string v0, "https://logapi.mayauc.com/api/v1/sdkRun/index"

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_RUNNING:Ljava/lang/String;

    .line 21
    const-string v0, "https://logapi.mayauc.com/api/v1/sdkEx/index"

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_ERROR:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_ROLE:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->API_M_ORDER_CREATE:Ljava/lang/String;

    .line 29
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->API_M_ORDER_QUERY:Ljava/lang/String;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->API_M_CHANNEL_LOGIN:Ljava/lang/String;

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->API_M_USER_ACTIVE_CHECK:Ljava/lang/String;

    .line 34
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->API_M_USER_ACTIVE:Ljava/lang/String;

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->API_M_USER_PUSH:Ljava/lang/String;

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->WEB_KEFU_SERVICE:Ljava/lang/String;

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/m/http/MReqUrls;->WEB_USER_HELP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, "MReqUrls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u6709\u66f4\u65b0\uff01\u65b0\u5730\u5740\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/m/utils/MLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    return-object p2
.end method

.method public static initApis(Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "commonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    const-string v0, "collect"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "collect"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "log":Lorg/json/JSONObject;
    const-string v1, "device"

    sget-object v2, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_DEVICE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_DEVICE:Ljava/lang/String;

    .line 50
    const-string v1, "role"

    sget-object v2, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_ROLE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_ROLE:Ljava/lang/String;

    .line 51
    const-string v1, "sdkEx"

    sget-object v2, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_ERROR:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_ERROR:Ljava/lang/String;

    .line 52
    const-string v1, "sdkRun"

    sget-object v2, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_RUNNING:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_RUNNING:Ljava/lang/String;

    .line 53
    const-string v1, "sdkRun"

    sget-object v2, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_RUNNING:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->API_COLLECT_SDK_RUNNING:Ljava/lang/String;

    .line 55
    .end local v0    # "log":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method public static initChannel(Lorg/json/JSONObject;)V
    .locals 5
    .param p0, "channelObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    .local v0, "urlsObj":Lorg/json/JSONObject;
    const-string v1, "api"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "api"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 76
    .local v1, "apiObj":Lorg/json/JSONObject;
    const-string v2, "user"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string v2, "user"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 78
    .local v2, "userObj":Lorg/json/JSONObject;
    const-string v3, "login"

    sget-object v4, Lcom/maya/sdk/m/http/MReqUrls;->API_M_CHANNEL_LOGIN:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/maya/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_CHANNEL_LOGIN:Ljava/lang/String;

    .line 81
    .end local v2    # "userObj":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "order"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const-string v2, "order"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 84
    .local v2, "pay":Lorg/json/JSONObject;
    const-string v3, "createOrder"

    sget-object v4, Lcom/maya/sdk/m/http/MReqUrls;->API_M_ORDER_CREATE:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/maya/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_ORDER_CREATE:Ljava/lang/String;

    .line 85
    const-string v3, "queryOrder"

    sget-object v4, Lcom/maya/sdk/m/http/MReqUrls;->API_M_ORDER_QUERY:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/maya/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_ORDER_QUERY:Ljava/lang/String;

    .line 89
    .end local v0    # "urlsObj":Lorg/json/JSONObject;
    .end local v1    # "apiObj":Lorg/json/JSONObject;
    .end local v2    # "pay":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method

.method public static initWebpages(Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "commonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    const-string v0, "bar"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "bar"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 61
    .local v0, "barObj":Lorg/json/JSONObject;
    const-string v1, "customerService"

    sget-object v2, Lcom/maya/sdk/m/http/MReqUrls;->WEB_KEFU_SERVICE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/m/http/MReqUrls;->WEB_KEFU_SERVICE:Ljava/lang/String;

    .line 62
    const-string v1, "superVip"

    sget-object v2, Lcom/maya/sdk/m/http/MReqUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/m/http/MReqUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    .line 63
    const-string v1, "help"

    sget-object v2, Lcom/maya/sdk/m/http/MReqUrls;->WEB_KEFU_SERVICE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/m/http/MReqUrls;->handleStaticString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/m/http/MReqUrls;->WEB_USER_HELP:Ljava/lang/String;

    .line 66
    .end local v0    # "barObj":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method
