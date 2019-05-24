.class public Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:I

.field c:Landroid/os/Handler;

.field private d:Landroid/os/Bundle;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->a:I

    const/4 v0, 0x2

    .line 18
    iput v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->b:I

    .line 55
    new-instance v0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity$1;-><init>(Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;)V

    iput-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->f:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->finish()V

    .line 204
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v0, "PayWebDialog.payCallBack is null"

    .line 207
    invoke-direct {p0, v0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->finish()V

    .line 195
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "PayWebDialog.payCallBack is null"

    .line 198
    invoke-direct {p0, p1}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->PayActivity:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/maya/sdk/s/core/c/b;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

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

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->c(Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    const-string v1, "pay_upomp"

    .line 169
    iget-object v2, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "pay_result"

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->a()V

    goto :goto_0

    :cond_1
    const-string v1, "fail"

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->finish()V

    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    .line 175
    invoke-direct {p0, v0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "cancel"

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u652f\u4ed8\u53d6\u6d88"

    .line 177
    invoke-direct {p0, v0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "resultCode"

    .line 180
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    invoke-direct {p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->a()V

    goto :goto_0

    :cond_4
    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    .line 185
    invoke-direct {p0, v0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->b(Ljava/lang/String;)V

    .line 190
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->d:Landroid/os/Bundle;

    .line 29
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->d:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->d:Landroid/os/Bundle;

    const-string v0, "pay_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->e:Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->d:Landroid/os/Bundle;

    const-string v0, "pay_data_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->f:Ljava/lang/String;

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "payType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\npayDataString="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u652f\u4ed8\u5931\u8d25\uff0c\u83b7\u53d6\u652f\u4ed8\u4fe1\u606f\u5931\u8d25"

    .line 36
    invoke-direct {p0, p1}, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->b(Ljava/lang/String;)V

    :goto_0
    const-string p1, "pay_upomp"

    .line 39
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0xc8

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_1
    const-string p1, "pay_wx_wft"

    .line 43
    iget-object v2, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->c:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_2
    const-string p1, "pay_alipay_wft"

    .line 47
    iget-object v2, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 49
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkPayActionActivity;->c:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_1
    return-void
.end method
