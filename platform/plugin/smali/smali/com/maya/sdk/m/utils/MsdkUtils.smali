.class public Lcom/maya/sdk/m/utils/MsdkUtils;
.super Ljava/lang/Object;
.source "MsdkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAccount(Landroid/content/Context;Lcom/maya/sdk/framework/user/UserInfoBean;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/maya/sdk/framework/user/UserInfoBean;

    .line 69
    new-instance v0, Lcom/maya/sdk/framework/user/AccountManager;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1}, Lcom/maya/sdk/framework/user/AccountManager;->addAccountToFile(Landroid/content/Context;Lcom/maya/sdk/framework/user/UserInfoBean;)V

    .line 70
    return-void
.end method

.method public static showSdkPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "payinfo"    # Lcom/maya/sdk/framework/pay/PayInfoBean;
    .param p3, "paycallback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/maya/sdk/framework/web/SdkWebManager;->showSdkPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 44
    return-void
.end method

.method public static showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "canBack"    # Z
    .param p3, "isTransparent"    # Z
    .param p4, "sdkcallback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Lcom/maya/sdk/framework/web/SdkWebManager;->showSdkWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 38
    return-void
.end method

.method public static unZipString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .line 57
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/encrypt/CodeManager;->decodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unZipString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 49
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/encrypt/CodeManager;->decodeSpecial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zipString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .line 61
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zipString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 53
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeSpecial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public showSdkCustomerServiceActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/maya/sdk/m/http/MReqUtils;

    invoke-direct {v0}, Lcom/maya/sdk/m/http/MReqUtils;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/maya/sdk/m/http/MReqUtils;->buildCustomerServiceWebParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "webUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method
