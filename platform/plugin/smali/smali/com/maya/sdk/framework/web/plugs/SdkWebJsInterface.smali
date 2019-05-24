.class public Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;
.super Ljava/lang/Object;
.source "SourceFile"


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

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->isJumpWeixinPay:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->isJumpWeixinPay:Z

    .line 41
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->isJumpWeixinPay:Z

    .line 36
    iput-object p2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsWebview:Landroid/webkit/WebView;

    .line 37
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    return-void
.end method

.method public static checkApkExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 423
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "webjs"

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebviewJS\u63a5\u53e3\u8c03\u7528]--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public copyText(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "copyText"

    .line 161
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "code"

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public enClose()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "enClose"

    .line 70
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$2;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$2;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enRefresh()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "enRefresh"

    .line 58
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$1;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public formalizeSdkVisitorAccount()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "formalizeSdkVisitorAccount()"

    .line 314
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/maya/sdk/framework/model/a/b;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/maya/sdk/framework/b/b;

    invoke-direct {v1}, Lcom/maya/sdk/framework/b/b;-><init>()V

    .line 319
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/a/b;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/b/b;->b(Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/a/b;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/b/b;->a(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/a/b;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/b/b;->c(Ljava/lang/String;)V

    .line 322
    new-instance v2, Lcom/maya/sdk/framework/b/a;

    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/maya/sdk/framework/b/a;-><init>(Landroid/content/Context;)V

    .line 324
    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/maya/sdk/framework/b/a;->a(Landroid/content/Context;Lcom/maya/sdk/framework/b/b;)V

    .line 326
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Lcom/maya/sdk/framework/b/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public formalizeSdkVisitorAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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

    invoke-static {v0}, Lcom/maya/sdk/framework/model/a/b;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/maya/sdk/framework/model/a/b;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/maya/sdk/framework/model/a/b;->setUserVname(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/maya/sdk/framework/model/a/b;->setUserPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    new-instance p2, Lcom/maya/sdk/framework/b/b;

    invoke-direct {p2}, Lcom/maya/sdk/framework/b/b;-><init>()V

    .line 295
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/framework/model/a/b;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/maya/sdk/framework/b/b;->b(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/framework/model/a/b;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/maya/sdk/framework/b/b;->a(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/framework/model/a/b;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/maya/sdk/framework/b/b;->c(Ljava/lang/String;)V

    .line 298
    new-instance v1, Lcom/maya/sdk/framework/b/a;

    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/maya/sdk/framework/b/a;-><init>(Landroid/content/Context;)V

    .line 300
    iget-object v2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v1, v2, p2}, Lcom/maya/sdk/framework/b/a;->a(Landroid/content/Context;Lcom/maya/sdk/framework/b/b;)V

    .line 302
    iget-object p2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {v1, p2, v0}, Lcom/maya/sdk/framework/b/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->logoutSdkAccount()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "\u65b0\u7684\u7528\u6237\u540d\u548c\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 289
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public getCertificationInfo(Ljava/lang/String;)V
    .locals 7
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

    const-string p1, "guardName"

    const-string v1, "\u76d1\u62a4\u4eba\u59d3\u540d"

    .line 338
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "guardName"

    const-string v2, "\u76d1\u62a4\u4eba\u8eab\u4efd\u8bc1"

    .line 339
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "isNameAuth"

    const/4 v2, 0x0

    .line 340
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "isAdult"

    .line 341
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "userAge"

    .line 342
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "userNumber"

    const-string v6, "\u7528\u6237\u8eab\u4efd\u8bc1"

    .line 343
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "userRealName"

    const-string v6, "\u7528\u6237\u59d3\u540d"

    .line 344
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    iget-object v5, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v5}, Lcom/maya/sdk/framework/model/a/b;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v5, v3}, Lcom/maya/sdk/framework/model/a/b;->setUserAdult(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 349
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/maya/sdk/framework/model/a/b;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-ne v1, v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v0, v3, v2}, Lcom/maya/sdk/framework/model/a/b;->setUserAuth(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 351
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/framework/model/a/b;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/maya/sdk/framework/model/a/b;->setUserAge(Landroid/content/Context;Ljava/lang/String;I)V

    .line 352
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/framework/model/a/b;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v6

    .line 352
    invoke-static {v0, v1, p1}, Lcom/maya/sdk/framework/model/a/b;->setUserGuard(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 355
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getDeviceIMEI()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "getDeviceIMEI"

    .line 151
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

    const-string v0, "getMacAddress"

    .line 146
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

    const-string v0, "getSdkDeviceID"

    .line 229
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

    const-string v0, "getSdkVersion"

    .line 224
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/maya/sdk/framework/model/a/b;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebOrientation()I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "getWebOrientation"

    .line 109
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

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public goBack()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "goBack"

    .line 82
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$3;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$3;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public goForward()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "goForward"

    .line 94
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$4;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$4;-><init>(Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public installApp(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "installApp"

    .line 136
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public isAppInstalled(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "isAppInstalled"

    .line 127
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->isInstallApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public joinQQGroup(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "joinQQGroup"

    .line 174
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 182
    :try_start_0
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u672a\u5b89\u88c5\u624bQ\u6216\u5b89\u88c5\u7684\u7248\u672c\u4e0d\u652f\u6301"

    .line 187
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public launchApp(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "launchApp"

    .line 141
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->launchApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public logoutSdkAccount()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "logoutSdkAccount"

    .line 360
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public openMail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "openMail"

    .line 207
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 211
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openPhone(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "openPhone"

    .line 215
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.DIAL"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 219
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openQQ(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "openQQ"

    .line 193
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->copyText(Ljava/lang/String;)V

    const-string p1, "\u5df2\u590d\u5236QQ\u53f7\u7801\u5230\u526a\u8d34\u677f"

    .line 195
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    const-string p1, "com.tencent.mobileqq"

    .line 196
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->launchApp(Ljava/lang/String;)V

    return-void
.end method

.method public openWechat(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "openWechat"

    .line 200
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->copyText(Ljava/lang/String;)V

    const-string p1, "\u5df2\u590d\u5236\u5fae\u4fe1\u53f7\u7801\u5230\u526a\u8d34\u677f"

    .line 202
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    const-string p1, "com.tencent.mm"

    .line 203
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->launchApp(Ljava/lang/String;)V

    return-void
.end method

.method public payClose()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "payClose"

    .line 364
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public payDismiss(I)V
    .locals 0

    const-string p1, "payDismiss"

    .line 389
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public payFail()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "payFail"

    .line 372
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public payQuery(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "payQuery"

    .line 376
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public paySuccess()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "paySuccess"

    .line 368
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public payUpomp(Ljava/lang/String;)V
    .locals 2
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

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "maya_tips_pay_failed"

    .line 383
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public payWeixin(Ljava/lang/String;)V
    .locals 2
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

    const-string p1, "payUrl"

    .line 396
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "queryUrl"

    .line 397
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->queryUrl:Ljava/lang/String;

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->queryUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "maya_tips_pay_not_support"

    .line 403
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    return-void

    .line 407
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 409
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->checkApkExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 410
    iput-boolean p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->isJumpWeixinPay:Z

    .line 411
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "maya_tips_pay_need_wechat"

    .line 413
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 416
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    return-void
.end method

.method public setWebview(Landroid/webkit/WebView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsWebview:Landroid/webkit/WebView;

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "showToast"

    .line 156
    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->printLog(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public switchAccount()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public syncSdkAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    new-instance v0, Lcom/maya/sdk/framework/b/b;

    invoke-direct {v0}, Lcom/maya/sdk/framework/b/b;-><init>()V

    .line 242
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/framework/model/a/b;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/maya/sdk/framework/model/a/b;->setUserPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/maya/sdk/framework/model/a/b;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/b/b;->b(Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/maya/sdk/framework/model/a/b;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/b/b;->a(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/maya/sdk/framework/model/a/b;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/b/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/maya/sdk/framework/model/a/b;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/maya/sdk/framework/model/a/b;->setUserVname(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/maya/sdk/framework/model/a/b;->setUserPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/maya/sdk/framework/model/a/b;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/b/b;->b(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/maya/sdk/framework/model/a/b;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/b/b;->a(Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/maya/sdk/framework/model/a/b;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/b/b;->c(Ljava/lang/String;)V

    .line 260
    :goto_0
    new-instance p1, Lcom/maya/sdk/framework/b/a;

    iget-object p2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/maya/sdk/framework/b/a;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsContext:Landroid/app/Activity;

    invoke-virtual {p1, p2, v0}, Lcom/maya/sdk/framework/b/a;->a(Landroid/content/Context;Lcom/maya/sdk/framework/b/b;)V

    .line 263
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->logoutSdkAccount()V

    return-void

    :cond_2
    :goto_1
    const-string p1, "\u7528\u6237\u540d\u548c\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 236
    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->showToast(Ljava/lang/String;)V

    return-void
.end method
