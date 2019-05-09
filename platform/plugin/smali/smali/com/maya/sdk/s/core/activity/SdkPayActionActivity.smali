.class public Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;
.super Landroid/app/Activity;
.source "SdkPayActionActivity.java"


# instance fields
.field final PLUGIN_NEED_UPGRADE:I

.field final PLUGIN_NOT_INSTALLED:I

.field private payBundle:Landroid/os/Bundle;

.field private payDataString:Ljava/lang/String;

.field payHandler:Landroid/os/Handler;

.field private payType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->PLUGIN_NOT_INSTALLED:I

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->PLUGIN_NEED_UPGRADE:I

    .line 55
    new-instance v0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity$1;-><init>(Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;)V

    iput-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;

    .line 14
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payDataString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payUmpop(Ljava/lang/String;)V

    return-void
.end method

.method private callbackFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->finish()V

    .line 195
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_0
    const-string v0, "PayWebDialog.payCallBack is null"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->printLog(Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void
.end method

.method private callbackSuccess()V
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->finish()V

    .line 204
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    .line 207
    :cond_0
    const-string v0, "PayWebDialog.payCallBack is null"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->printLog(Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void
.end method

.method private payUmpop(Ljava/lang/String;)V
    .locals 0
    .param p1, "tn"    # Ljava/lang/String;

    .line 123
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->PayActivity:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/utils/SLogUtil;->w(Ljava/lang/String;)V

    .line 213
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 157
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult-->requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--->resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--->data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult-->requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--->resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--->data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->printLog(Ljava/lang/String;)V

    .line 160
    if-nez p3, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 166
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->printLog(Ljava/lang/String;)V

    .line 168
    if-eqz v0, :cond_6

    .line 169
    const-string v1, "pay_upomp"

    iget-object v2, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "str":Ljava/lang/String;
    const-string v2, "success"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->callbackSuccess()V

    goto :goto_0

    .line 173
    :cond_1
    const-string v2, "fail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->finish()V

    .line 175
    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-direct {p0, v2}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->callbackFail(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_2
    const-string v2, "cancel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    const-string v2, "\u652f\u4ed8\u53d6\u6d88"

    invoke-direct {p0, v2}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->callbackFail(Ljava/lang/String;)V

    .line 179
    .end local v1    # "str":Ljava/lang/String;
    :cond_3
    :goto_0
    goto :goto_1

    .line 180
    :cond_4
    const-string v1, "resultCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "respCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 183
    invoke-direct {p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->callbackSuccess()V

    goto :goto_1

    .line 185
    :cond_5
    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-direct {p0, v2}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->callbackFail(Ljava/lang/String;)V

    .line 190
    .end local v1    # "respCode":Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payBundle:Landroid/os/Bundle;

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payBundle:Landroid/os/Bundle;

    const-string v1, "pay_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payType:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payBundle:Landroid/os/Bundle;

    const-string v1, "pay_data_string"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payDataString:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\npayDataString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payDataString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    const-string v0, "\u652f\u4ed8\u5931\u8d25\uff0c\u83b7\u53d6\u652f\u4ed8\u4fe1\u606f\u5931\u8d25"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->callbackFail(Ljava/lang/String;)V

    .line 39
    :goto_0
    const-string v0, "pay_upomp"

    iget-object v1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0xc8

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 43
    :cond_1
    const-string v0, "pay_wx_wft"

    iget-object v3, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 47
    :cond_2
    const-string v0, "pay_alipay_wft"

    iget-object v3, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->payHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 52
    :cond_3
    :goto_1
    return-void
.end method
