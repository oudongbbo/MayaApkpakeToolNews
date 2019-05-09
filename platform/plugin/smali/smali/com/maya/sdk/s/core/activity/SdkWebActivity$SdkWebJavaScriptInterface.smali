.class public Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;
.super Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;
.source "SdkWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/core/activity/SdkWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdkWebJavaScriptInterface"
.end annotation


# instance fields
.field jsContext:Landroid/content/Context;

.field jsDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

.field final synthetic this$0:Lcom/maya/sdk/s/core/activity/SdkWebActivity;


# direct methods
.method public constructor <init>(Lcom/maya/sdk/s/core/activity/SdkWebActivity;Lcom/maya/sdk/framework/web/SdkWebDialog;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/maya/sdk/s/core/activity/SdkWebActivity;
    .param p2, "dialog"    # Lcom/maya/sdk/framework/web/SdkWebDialog;
    .param p3, "context"    # Landroid/content/Context;

    .line 102
    iput-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->this$0:Lcom/maya/sdk/s/core/activity/SdkWebActivity;

    .line 103
    move-object v0, p3

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;-><init>(Landroid/app/Activity;)V

    .line 105
    iput-object p3, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->jsContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->jsDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 108
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->jsDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->getWebview()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->setWebview(Landroid/webkit/WebView;)V

    .line 109
    return-void
.end method


# virtual methods
.method public bindVistor()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 154
    const-string v0, "bindVistor"

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/maya/sdk/s/app/FMSdkCore;->getInstance()Lcom/maya/sdk/s/app/FMSdkCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/FMSdkCore;->vistorBind()V

    .line 156
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->this$0:Lcom/maya/sdk/s/core/activity/SdkWebActivity;

    invoke-virtual {v0}, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->closeWebActivity()V

    .line 157
    return-void
.end method

.method public enClose()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 122
    invoke-super {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->enClose()V

    .line 123
    const-string v0, "wap \u8c03\u7528enClose"

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->jsDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->closeWeb()V

    .line 125
    return-void
.end method

.method public enRefresh()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 114
    invoke-super {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->enRefresh()V

    .line 115
    const-string v0, "wap \u8c03\u7528enRefresh"

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->jsDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->refreshWeb()V

    .line 117
    return-void
.end method

.method public logoutSdkAccount()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 147
    const-string v0, "logoutSdkAccount"

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->userLogout()V

    .line 149
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;->this$0:Lcom/maya/sdk/s/core/activity/SdkWebActivity;

    invoke-virtual {v0}, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->closeWebActivity()V

    .line 150
    return-void
.end method

.method public userLogout()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 137
    const-string v0, "userLogout"

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkUserLogoutCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkUserLogoutCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 141
    :cond_0
    return-void
.end method

.method public userSwitch()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 129
    const-string v0, "userSwitch"

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/maya/sdk/s/app/FMSdkCore;->getInstance()Lcom/maya/sdk/s/app/FMSdkCore;

    move-result-object v0

    sget-object v1, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    sget-object v2, Lcom/maya/sdk/s/core/SdkManager;->sdkUserSwitchCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/s/app/FMSdkCore;->userSwitch(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 133
    :cond_0
    return-void
.end method
