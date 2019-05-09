.class public Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;
.super Ljava/lang/Object;
.source "SdkWebJsInterface.java"


# instance fields
.field public isJumpWeixinPay:Z

.field public jsContext:Landroid/app/Activity;

.field public jsWebview:Landroid/webkit/WebView;

.field public queryUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->isJumpWeixinPay:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->isJumpWeixinPay:Z

    .line 41
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "webview"    # Landroid/webkit/WebView;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->isJumpWeixinPay:Z

    .line 36
    iput-object p2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsWebview:Landroid/webkit/WebView;

    .line 37
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    .line 38
    return-void
.end method

.method public static checkApkExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 423
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 424
    const/4 v1, 0x1

    return v1

    .line 426
    :cond_0
    return v1
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 431
    const-string v0, "webjs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebviewJS\u63a5\u53e3\u8c03\u7528]--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method


# virtual methods
.method public copyText(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 161
    const-string v0, "copyText"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 166
    .local v0, "c":Landroid/content/ClipboardManager;
    const-string v1, "code"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 167
    return-void
.end method

.method public enClose()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 70
    const-string v0, "enClose"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$2;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$2;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public enRefresh()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 58
    const-string v0, "enRefresh"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$1;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public formalizeSdkVisitorAccount()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 314
    const-string v0, "formalizeSdkVisitorAccount()"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "oldName":Ljava/lang/String;
    new-instance v1, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-direct {v1}, Lcom/maya/sdk/framework/user/UserInfoBean;-><init>()V

    .line 319
    .local v1, "user":Lcom/maya/sdk/framework/user/UserInfoBean;
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/user/UserInfoBean;->setUname(Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/user/UserInfoBean;->setVname(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/user/UserInfoBean;->setPwd(Ljava/lang/String;)V

    .line 322
    new-instance v2, Lcom/maya/sdk/framework/user/AccountManager;

    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    .line 324
    .local v2, "AccountManager":Lcom/maya/sdk/framework/user/AccountManager;
    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/maya/sdk/framework/user/AccountManager;->addAccountToFile(Landroid/content/Context;Lcom/maya/sdk/framework/user/UserInfoBean;)V

    .line 326
    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Lcom/maya/sdk/framework/user/AccountManager;->delVisitorAccountFromFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public formalizeSdkVisitorAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "formalizeSdkVisitorAccount("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "oldName":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserVname(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    new-instance v1, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-direct {v1}, Lcom/maya/sdk/framework/user/UserInfoBean;-><init>()V

    .line 295
    .local v1, "user":Lcom/maya/sdk/framework/user/UserInfoBean;
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/user/UserInfoBean;->setUname(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/user/UserInfoBean;->setVname(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/user/UserInfoBean;->setPwd(Ljava/lang/String;)V

    .line 298
    new-instance v2, Lcom/maya/sdk/framework/user/AccountManager;

    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    .line 300
    .local v2, "accountManager":Lcom/maya/sdk/framework/user/AccountManager;
    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/maya/sdk/framework/user/AccountManager;->addAccountToFile(Landroid/content/Context;Lcom/maya/sdk/framework/user/UserInfoBean;)V

    .line 302
    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Lcom/maya/sdk/framework/user/AccountManager;->delVisitorAccountFromFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->logoutSdkAccount()V

    .line 308
    :cond_0
    return-void

    .line 289
    .end local v1    # "user":Lcom/maya/sdk/framework/user/UserInfoBean;
    .end local v2    # "accountManager":Lcom/maya/sdk/framework/user/AccountManager;
    :cond_1
    const-string v1, "\u65b0\u7684\u7528\u6237\u540d\u548c\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public getCertificationInfo(Ljava/lang/String;)V
    .locals 13
    .param p1, "info"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCertificationInfo()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 337
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "guardName"

    const-string v2, "\u76d1\u62a4\u4eba\u59d3\u540d"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "guardName":Ljava/lang/String;
    const-string v2, "guardName"

    const-string v3, "\u76d1\u62a4\u4eba\u8eab\u4efd\u8bc1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "guardNumber":Ljava/lang/String;
    const-string v3, "isNameAuth"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 341
    .local v3, "isNameAuth":I
    const-string v5, "isAdult"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 342
    .local v5, "isAdult":I
    const-string v6, "userAge"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 343
    .local v6, "userAge":I
    const-string v7, "userNumber"

    const-string v8, "\u7528\u6237\u8eab\u4efd\u8bc1"

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 344
    .local v7, "userNumber":Ljava/lang/String;
    const-string v8, "userRealName"

    const-string v9, "\u7528\u6237\u59d3\u540d"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 347
    .local v8, "userRealName":Ljava/lang/String;
    iget-object v9, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    iget-object v10, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v10}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    if-ne v5, v11, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    invoke-static {v9, v10, v12}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserAdult(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 349
    iget-object v9, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    iget-object v10, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v10}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-ne v3, v11, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    invoke-static {v9, v10, v4}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserAuth(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 351
    iget-object v4, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    iget-object v9, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v9}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v6}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserAge(Landroid/content/Context;Ljava/lang/String;I)V

    .line 352
    iget-object v4, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    iget-object v9, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v9}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 353
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 352
    xor-int/2addr v10, v11

    invoke-static {v4, v9, v10}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserGuard(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "guardName":Ljava/lang/String;
    .end local v2    # "guardNumber":Ljava/lang/String;
    .end local v3    # "isNameAuth":I
    .end local v5    # "isAdult":I
    .end local v6    # "userAge":I
    .end local v7    # "userNumber":Ljava/lang/String;
    .end local v8    # "userRealName":Ljava/lang/String;
    goto :goto_1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 357
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public getDeviceIMEI()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 151
    const-string v0, "getDeviceIMEI"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 146
    const-string v0, "getMacAddress"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkDeviceID()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 229
    const-string v0, "getSdkDeviceID"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getMobileDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 224
    const-string v0, "getSdkVersion"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebOrientation()I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 109
    const-string v0, "getWebOrientation"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 113
    .local v0, "ori":I
    if-ne v0, v1, :cond_0

    .line 114
    const/4 v1, 0x0

    return v1

    .line 116
    :cond_0
    return v1

    .line 119
    .end local v0    # "ori":I
    :cond_1
    return v1
.end method

.method public goBack()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 82
    const-string v0, "goBack"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$3;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$3;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public goForward()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 94
    const-string v0, "goForward"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$4;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$4;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public installApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 136
    const-string v0, "installApp"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public isAppInstalled(Ljava/lang/String;)I
    .locals 2
    .param p1, "appPackageName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 127
    const-string v0, "isAppInstalled"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "state":I
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->isInstallApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 132
    :cond_0
    return v0
.end method

.method public joinQQGroup(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 174
    const-string v0, "joinQQGroup"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    const/4 v1, 0x1

    return v1

    .line 184
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    const-string v2, "\u672a\u5b89\u88c5\u624bQ\u6216\u5b89\u88c5\u7684\u7248\u672c\u4e0d\u652f\u6301"

    invoke-virtual {p0, v2}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    .line 188
    const/4 v2, 0x0

    return v2
.end method

.method public launchApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "appPackageName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 141
    const-string v0, "launchApp"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->launchApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public logoutSdkAccount()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 360
    const-string v0, "logoutSdkAccount"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public openMail(Ljava/lang/String;)V
    .locals 3
    .param p1, "mailAddress"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 207
    const-string v0, "openMail"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method public openPhone(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 215
    const-string v0, "openPhone"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method public openQQ(Ljava/lang/String;)V
    .locals 1
    .param p1, "qqNumber"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 193
    const-string v0, "openQQ"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->copyText(Ljava/lang/String;)V

    .line 195
    const-string v0, "\u5df2\u590d\u5236QQ\u53f7\u7801\u5230\u526a\u8d34\u677f"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    .line 196
    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->launchApp(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public openWechat(Ljava/lang/String;)V
    .locals 1
    .param p1, "wxNumber"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 200
    const-string v0, "openWechat"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->copyText(Ljava/lang/String;)V

    .line 202
    const-string v0, "\u5df2\u590d\u5236\u5fae\u4fe1\u53f7\u7801\u5230\u526a\u8d34\u677f"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    .line 203
    const-string v0, "com.tencent.mm"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->launchApp(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public payClose()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 364
    const-string v0, "payClose"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public payDismiss(I)V
    .locals 1
    .param p1, "type"    # I

    .line 389
    const-string v0, "payDismiss"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public payFail()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 372
    const-string v0, "payFail"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public payQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 376
    const-string v0, "payQuery"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public paySuccess()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 368
    const-string v0, "paySuccess"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public payUpomp(Ljava/lang/String;)V
    .locals 2
    .param p1, "tn"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payUpomp\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 382
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "maya_tips_pay_failed"

    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    .line 384
    return-void

    .line 386
    :cond_0
    return-void
.end method

.method public payWeixin(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payWeixin\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 395
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "payUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "payUrl":Ljava/lang/String;
    const-string v2, "queryUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->queryUrl:Ljava/lang/String;

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->queryUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 402
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    const-string v2, "maya_tips_pay_not_support"

    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    .line 404
    return-void

    .line 407
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v2, "it":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 409
    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->checkApkExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->isJumpWeixinPay:Z

    .line 411
    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 413
    :cond_1
    const-string v3, "maya_tips_pay_need_wechat"

    iget-object v4, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "payUrl":Ljava/lang/String;
    .end local v2    # "it":Landroid/content/Intent;
    :goto_0
    goto :goto_1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 418
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .line 53
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    .line 54
    return-void
.end method

.method public setWebview(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "webview"    # Landroid/webkit/WebView;

    .line 49
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsWebview:Landroid/webkit/WebView;

    .line 50
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 156
    const-string v0, "showToast"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    return-void
.end method

.method public switchAccount()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 269
    return-void
.end method

.method public syncSdkAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncSdkAccount("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    new-instance v0, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-direct {v0}, Lcom/maya/sdk/framework/user/UserInfoBean;-><init>()V

    .line 242
    .local v0, "user":Lcom/maya/sdk/framework/user/UserInfoBean;
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/user/UserInfoBean;->setUname(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/user/UserInfoBean;->setVname(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/user/UserInfoBean;->setPwd(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserVname(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/user/UserInfoBean;->setUname(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/user/UserInfoBean;->setVname(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/user/UserInfoBean;->setPwd(Ljava/lang/String;)V

    .line 260
    :goto_0
    new-instance v1, Lcom/maya/sdk/framework/user/AccountManager;

    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/maya/sdk/framework/user/AccountManager;->addAccountToFile(Landroid/content/Context;Lcom/maya/sdk/framework/user/UserInfoBean;)V

    .line 263
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->logoutSdkAccount()V

    .line 264
    return-void

    .line 236
    .end local v0    # "user":Lcom/maya/sdk/framework/user/UserInfoBean;
    :cond_2
    :goto_1
    const-string v0, "\u7528\u6237\u540d\u548c\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    .line 237
    return-void
.end method
