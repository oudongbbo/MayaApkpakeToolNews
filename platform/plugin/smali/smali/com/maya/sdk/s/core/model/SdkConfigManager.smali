.class public Lcom/maya/sdk/s/core/model/SdkConfigManager;
.super Lcom/maya/sdk/framework/model/config/ConfigManager;
.source "SdkConfigManager.java"


# static fields
.field public static final SDK_IS_SWITCH_LOGIN:Ljava/lang/String; = "sdk_is_switch_login"

.field public static final SDK_IS_SWITCH_TYPE:Ljava/lang/String; = "sdk_is_switch_type"

.field public static final SDK_USER_CAN_ADULT_CLOSE:Ljava/lang/String; = "sdk_user_noAdultClose"

.field public static final SDK_USER_CAN_AUTH_CLOSE:Ljava/lang/String; = "sdk_user_noAuthClose"

.field public static final SDK_USER_IS_ADULT_NOTICE:Ljava/lang/String; = "sdk_user_isAdultNotice"

.field public static final SDK_USER_IS_ADULT_NOTICE_TIME:Ljava/lang/String; = "sdk_user_isAdultNoticeTime"

.field public static final SDK_USER_IS_AUTH_NOTICE:Ljava/lang/String; = "sdk_user_isAuthNotice"

.field public static final SDK_USER_IS_AUTH_NOTICE_TIME:Ljava/lang/String; = "sdk_user_isAuthNoticeTime"

.field public static final SDK_USER_IS_LOGIN_AUTH:Ljava/lang/String; = "sdk_user_isLoginAuth"

.field public static final SDK_USER_IS_PAY_AUTH:Ljava/lang/String; = "sdk_user_isPayAuth"

.field public static final SDK_USER_IS_PAY_NOTICE:Ljava/lang/String; = "sdk_user_isPayNotice"

.field public static final SDK_USER_NO_ADULT_PAYMAX:Ljava/lang/String; = "sdk_user_noAdultPayMax"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/maya/sdk/framework/model/config/ConfigManager;-><init>()V

    return-void
.end method

.method public static getExitGameData(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 148
    const-string v0, "data_exitgame"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIsPhoneQuickLogin(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    const-string v0, "sdk_boolean_visitor"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getScrollMessageText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 131
    const-string v0, "scroll_message_text"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScrollMessageUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 139
    const-string v0, "scroll_message_url"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkFloatSwitch(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    const-string v0, "sdk_float_switch"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    const-string v0, "sdk_id"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkInitFirstTime(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 16
    const-string v0, "sdk_init_firsttime"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSdkSelfLogin(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 24
    const-string v0, "sdk_self_login"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSkinFloatLogo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    const-string v0, "skin_float_logo_icon_full"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSkinFloatLogoLeft(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    const-string v0, "skin_float_logo_icon_left"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSkinFloatLogoRight(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 117
    const-string v0, "skin_float_logo_icon_right"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSkinLgoinBg(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 65
    const-string v0, "skin_login_bg_url"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSkinLgoinBgStartTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 74
    const-string v0, "skin_login_bg_starttime"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSkinLgoinLogo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    const-string v0, "skin_login_logo_url"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSkinLgoinLogoDisplay(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 92
    const-string v0, "skin_login_logo_display"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserCanAdultClose(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 246
    const-string v0, "sdk_user_noAdultClose"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserCanAuthClose(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 238
    const-string v0, "sdk_user_noAuthClose"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserIsAdultNotice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 196
    const-string v0, "sdk_user_isAdultNotice"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserIsAdultNoticeTime(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 221
    const-string v0, "sdk_user_isAdultNoticeTime"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUserIsAuthNotice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 188
    const-string v0, "sdk_user_isAuthNotice"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserIsAuthNoticeTime(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 213
    const-string v0, "sdk_user_isAuthNoticeTime"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUserIsLoginAuth(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 173
    const-string v0, "sdk_user_isLoginAuth"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserIsPayAuth(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 180
    const-string v0, "sdk_user_isPayAuth"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserIsPayNotice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 204
    const-string v0, "sdk_user_isPayNotice"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserIsVisitor(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    const-string v0, "sdk_boolean_visitor"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getUserNoAdultPayMax(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 229
    const-string v0, "sdk_user_noAdultPayMax"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setExitGameData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;

    .line 144
    const-string v0, "data_exitgame"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static setIsPhoneQuickLogin(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "boolean_visitor"    # Z

    .line 52
    const-string v0, "sdk_boolean_visitor"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 53
    return-void
.end method

.method public static setScrollMessageText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .line 127
    const-string v0, "scroll_message_text"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static setScrollMessageUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 135
    const-string v0, "scroll_message_url"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static setSdkFloatSwitch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "debug"    # Ljava/lang/String;

    .line 36
    const-string v0, "sdk_float_switch"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static setSdkId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "debug"    # Ljava/lang/String;

    .line 28
    const-string v0, "sdk_id"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static setSdkInitFirstTime(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "first"    # Z

    .line 12
    const-string v0, "sdk_init_firsttime"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 13
    return-void
.end method

.method public static setSdkSelfLogin(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSelfLogin"    # Z

    .line 20
    const-string v0, "sdk_self_login"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 21
    return-void
.end method

.method public static setSkinFloatLogo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 97
    const-string v0, "skin_float_logo_icon_full"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static setSkinFloatLogoLeft(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 105
    const-string v0, "skin_float_logo_icon_left"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static setSkinFloatLogoRight(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 113
    const-string v0, "skin_float_logo_icon_right"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static setSkinLgoinBg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 61
    const-string v0, "skin_login_bg_url"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static setSkinLgoinBgStartTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Ljava/lang/String;

    .line 70
    const-string v0, "skin_login_bg_starttime"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static setSkinLgoinLogo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 79
    const-string v0, "skin_login_logo_url"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static setSkinLgoinLogoDisplay(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "show"    # Z

    .line 88
    const-string v0, "skin_login_logo_display"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 89
    return-void
.end method

.method public static setUserCanAdultClose(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "auth"    # Z

    .line 242
    const-string v0, "sdk_user_noAdultClose"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 243
    return-void
.end method

.method public static setUserCanAuthClose(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "auth"    # Z

    .line 234
    const-string v0, "sdk_user_noAuthClose"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 235
    return-void
.end method

.method public static setUserIsAdultNotice(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "auth"    # Z

    .line 192
    const-string v0, "sdk_user_isAdultNotice"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public static setUserIsAdultNoticeTime(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # I

    .line 217
    const-string v0, "sdk_user_isAdultNoticeTime"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 218
    return-void
.end method

.method public static setUserIsAuthNotice(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "auth"    # Z

    .line 184
    const-string v0, "sdk_user_isAuthNotice"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method public static setUserIsAuthNoticeTime(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # I

    .line 209
    const-string v0, "sdk_user_isAuthNoticeTime"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 210
    return-void
.end method

.method public static setUserIsLoginAuth(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "auth"    # Z

    .line 169
    const-string v0, "sdk_user_isLoginAuth"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 170
    return-void
.end method

.method public static setUserIsPayAuth(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "auth"    # Z

    .line 176
    const-string v0, "sdk_user_isPayAuth"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 177
    return-void
.end method

.method public static setUserIsPayNotice(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "auth"    # Z

    .line 200
    const-string v0, "sdk_user_isPayNotice"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 201
    return-void
.end method

.method public static setUserIsVisitor(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "boolean_visitor"    # Z

    .line 44
    const-string v0, "sdk_boolean_visitor"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 45
    return-void
.end method

.method public static setUserNoAdultPayMax(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # I

    .line 225
    const-string v0, "sdk_user_noAdultPayMax"

    invoke-static {p0, v0, p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 226
    return-void
.end method

.method public static skipUserSwitchView(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "isSkipLogin":Z
    return v0
.end method
