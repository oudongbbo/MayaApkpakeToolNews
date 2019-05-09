.class public Lcom/maya/sdk/s/core/http/RequestUrls;
.super Ljava/lang/Object;
.source "RequestUrls.java"


# static fields
.field public static API_COLLECT_SDK_RUNNING:Ljava/lang/String;

.field public static API_FINDPWD:Ljava/lang/String;

.field public static API_FINDPWD_GET_USER:Ljava/lang/String;

.field public static API_GET_USER_PAYMONEY:Ljava/lang/String;

.field public static API_GET_VCODE:Ljava/lang/String;

.field public static API_LOGIN:Ljava/lang/String;

.field public static API_LOGIN_BY_ACCESSTOKEN:Ljava/lang/String;

.field public static API_LOGIN_MOBILE_QUICK:Ljava/lang/String;

.field public static API_PAY_ORDER_CREATE:Ljava/lang/String;

.field public static API_PAY_ORDER_QUERY:Ljava/lang/String;

.field public static API_REG_ACCOUNT:Ljava/lang/String;

.field public static API_REG_GETNAME:Ljava/lang/String;

.field public static API_REG_MOBILE:Ljava/lang/String;

.field public static API_REG_VISITOR:Ljava/lang/String;

.field public static API_USER_GUARD_AUTH:Ljava/lang/String;

.field public static API_USER_NAME_AUTH:Ljava/lang/String;

.field public static URL_EXIT_IMAGE:Ljava/lang/String;

.field public static URL_EXIT_URL:Ljava/lang/String;

.field public static WEB_AGREMENT:Ljava/lang/String;

.field public static WEB_HELP:Ljava/lang/String;

.field public static WEB_PAY_PAGE:Ljava/lang/String;

.field public static WEB_SIDEBAR_BBS:Ljava/lang/String;

.field public static WEB_SIDEBAR_GAME_CENTER:Ljava/lang/String;

.field public static WEB_SIDEBAR_GAME_GIFT:Ljava/lang/String;

.field public static WEB_SIDEBAR_HOME:Ljava/lang/String;

.field public static WEB_SIDEBAR_KEFU:Ljava/lang/String;

.field public static WEB_SIDEBAR_MESSAGE:Ljava/lang/String;

.field public static WEB_SIDEBAR_USERCENTER:Ljava/lang/String;

.field public static WEB_USER_CERTIFICATION:Ljava/lang/String;

.field public static WEB_USER_NAMEAUTH:Ljava/lang/String;

.field public static WEB_USER_SUPERVIP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-string v0, "https://logapi.mayauc.com/api/v1/sdkRun/index"

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_COLLECT_SDK_RUNNING:Ljava/lang/String;

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_LOGIN:Ljava/lang/String;

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_LOGIN_MOBILE_QUICK:Ljava/lang/String;

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_LOGIN_BY_ACCESSTOKEN:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_GETNAME:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_VISITOR:Ljava/lang/String;

    .line 21
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_ACCOUNT:Ljava/lang/String;

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_MOBILE:Ljava/lang/String;

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_GET_VCODE:Ljava/lang/String;

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_FINDPWD_GET_USER:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_FINDPWD:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_USER_NAME_AUTH:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_USER_GUARD_AUTH:Ljava/lang/String;

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_PAY_ORDER_CREATE:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_PAY_ORDER_QUERY:Ljava/lang/String;

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->API_GET_USER_PAYMONEY:Ljava/lang/String;

    .line 34
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_PAY_PAGE:Ljava/lang/String;

    .line 38
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_HOME:Ljava/lang/String;

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_USERCENTER:Ljava/lang/String;

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_MESSAGE:Ljava/lang/String;

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_GIFT:Ljava/lang/String;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_CENTER:Ljava/lang/String;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_KEFU:Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_BBS:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_HELP:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_USER_NAMEAUTH:Ljava/lang/String;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_USER_CERTIFICATION:Ljava/lang/String;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->URL_EXIT_IMAGE:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->URL_EXIT_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6709\u66f4\u65b0\uff01\u65b0\u5730\u5740\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/utils/SLogUtil;->d(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    return-object p2
.end method

.method public static initApis(Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "urlObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    if-eqz p0, :cond_3

    const-string v0, "api"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    const-string v0, "api"

    invoke-static {p0, v0}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    .local v0, "apiObj":Lorg/json/JSONObject;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 77
    .local v1, "userObj":Lorg/json/JSONObject;
    const-string v2, "login"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_LOGIN:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_LOGIN:Ljava/lang/String;

    .line 78
    const-string v2, "accessTokenLogin"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_LOGIN_BY_ACCESSTOKEN:Ljava/lang/String;

    .line 79
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_LOGIN_BY_ACCESSTOKEN:Ljava/lang/String;

    .line 80
    const-string v2, "mobileQuickLogin"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_LOGIN_MOBILE_QUICK:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_LOGIN_MOBILE_QUICK:Ljava/lang/String;

    .line 81
    const-string v2, "regAccount"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_ACCOUNT:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_ACCOUNT:Ljava/lang/String;

    .line 82
    const-string v2, "regMobile"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_MOBILE:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_MOBILE:Ljava/lang/String;

    .line 83
    const-string v2, "getUname"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_GETNAME:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_GETNAME:Ljava/lang/String;

    .line 84
    const-string v2, "findPwd"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_FINDPWD:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_FINDPWD:Ljava/lang/String;

    .line 85
    const-string v2, "findPwdVerifyUser"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_FINDPWD_GET_USER:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_FINDPWD_GET_USER:Ljava/lang/String;

    .line 86
    const-string v2, "idConfirmInfo"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_USER_NAME_AUTH:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_USER_NAME_AUTH:Ljava/lang/String;

    .line 87
    const-string v2, "guardConfirmInfo"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_USER_GUARD_AUTH:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_USER_GUARD_AUTH:Ljava/lang/String;

    .line 92
    .end local v1    # "userObj":Lorg/json/JSONObject;
    :cond_0
    const-string v1, "smsCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const-string v1, "smsCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 94
    .local v1, "smsCodeObj":Lorg/json/JSONObject;
    const-string v2, "mobileCode"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_GET_VCODE:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_GET_VCODE:Ljava/lang/String;

    .line 97
    .end local v1    # "smsCodeObj":Lorg/json/JSONObject;
    :cond_1
    const-string v1, "order"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    const-string v1, "order"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 100
    .local v1, "pay":Lorg/json/JSONObject;
    const-string v2, "createOrder"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_PAY_ORDER_CREATE:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_PAY_ORDER_CREATE:Ljava/lang/String;

    .line 101
    const-string v2, "queryOrder"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_PAY_ORDER_QUERY:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_PAY_ORDER_QUERY:Ljava/lang/String;

    .line 103
    .end local v1    # "pay":Lorg/json/JSONObject;
    :cond_2
    const-string v1, "currech"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    const-string v1, "currech"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_GET_USER_PAYMONEY:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->API_GET_USER_PAYMONEY:Ljava/lang/String;

    .line 108
    .end local v0    # "apiObj":Lorg/json/JSONObject;
    :cond_3
    return-void
.end method

.method public static initWebpages(Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "urlObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    const-string v0, "sideBar"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "sideBar"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 126
    .local v0, "sideBar":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 127
    const-string v1, "gameGift"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_GIFT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_GIFT:Ljava/lang/String;

    .line 128
    const-string v1, "help"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_HELP:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_HELP:Ljava/lang/String;

    .line 129
    const-string v1, "userCenter"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_USERCENTER:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_USERCENTER:Ljava/lang/String;

    .line 130
    const-string v1, "msg"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_MESSAGE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_MESSAGE:Ljava/lang/String;

    .line 131
    const-string v1, "customerService"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_KEFU:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_KEFU:Ljava/lang/String;

    .line 132
    const-string v1, "gameCenter"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_CENTER:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_GAME_CENTER:Ljava/lang/String;

    .line 133
    const-string v1, "userVerified"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_USER_CERTIFICATION:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_USER_CERTIFICATION:Ljava/lang/String;

    .line 134
    const-string v1, "nameAuth"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_USER_NAMEAUTH:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_USER_NAMEAUTH:Ljava/lang/String;

    .line 135
    const-string v1, "superVip"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_USER_SUPERVIP:Ljava/lang/String;

    .line 136
    const-string v1, "agreement"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_AGREMENT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_AGREMENT:Ljava/lang/String;

    .line 137
    const-string v1, "sidebar"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_HOME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_SIDEBAR_HOME:Ljava/lang/String;

    .line 142
    .end local v0    # "sideBar":Lorg/json/JSONObject;
    :cond_0
    const-string v0, "play"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "play"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 144
    .local v0, "playObj":Lorg/json/JSONObject;
    const-string v1, "goToPlay"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_PAY_PAGE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequestUrls;->handleString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_PAY_PAGE:Ljava/lang/String;

    .line 146
    .end local v0    # "playObj":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method
