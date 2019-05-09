.class Lcom/maya/sdk/s/core/SdkManager$3$1$1;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/core/SdkManager$3$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/s/core/SdkManager$3$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/core/SdkManager$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/s/core/SdkManager$3$1;

    .line 230
    iput-object p1, p0, Lcom/maya/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/maya/sdk/s/core/SdkManager$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/maya/sdk/s/core/SdkManager$3$1;

    iget-object v0, v0, Lcom/maya/sdk/s/core/SdkManager$3$1;->this$1:Lcom/maya/sdk/s/core/SdkManager$3;

    iget-object v0, v0, Lcom/maya/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    const-string v1, "cancel pay"

    invoke-interface {v0, v1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/maya/sdk/s/core/SdkManager$3$1;

    iget-object v0, v0, Lcom/maya/sdk/s/core/SdkManager$3$1;->this$1:Lcom/maya/sdk/s/core/SdkManager$3;

    iget-object v0, v0, Lcom/maya/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 233
    new-instance v0, Lcom/maya/sdk/framework/pay/PayInfoBean;

    invoke-direct {v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;-><init>()V

    .line 234
    .local v0, "temp":Lcom/maya/sdk/framework/pay/PayInfoBean;
    iget-object v1, p0, Lcom/maya/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/maya/sdk/s/core/SdkManager$3$1;

    iget-object v1, v1, Lcom/maya/sdk/s/core/SdkManager$3$1;->this$1:Lcom/maya/sdk/s/core/SdkManager$3;

    iget-object v1, v1, Lcom/maya/sdk/s/core/SdkManager$3;->val$payinfo:Lcom/maya/sdk/framework/pay/PayInfoBean;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->copyToAFromB(Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/pay/PayInfoBean;)V

    .line 236
    const-string v1, "no"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "m_no":Ljava/lang/String;
    const-string v2, "ext"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "m_ext":Ljava/lang/String;
    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_PAY_PAGE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "url"

    .line 240
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "host":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_no_m(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_ext_m(Ljava/lang/String;)V

    .line 244
    iget-object v4, p0, Lcom/maya/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/maya/sdk/s/core/SdkManager$3$1;

    iget-object v4, v4, Lcom/maya/sdk/s/core/SdkManager$3$1;->this$1:Lcom/maya/sdk/s/core/SdkManager$3;

    iget-object v4, v4, Lcom/maya/sdk/s/core/SdkManager$3;->this$0:Lcom/maya/sdk/s/core/SdkManager;

    iget-object v5, p0, Lcom/maya/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/maya/sdk/s/core/SdkManager$3$1;

    iget-object v5, v5, Lcom/maya/sdk/s/core/SdkManager$3$1;->this$1:Lcom/maya/sdk/s/core/SdkManager$3;

    iget-object v5, v5, Lcom/maya/sdk/s/core/SdkManager$3;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/maya/sdk/s/core/SdkManager$3$1$1;->this$2:Lcom/maya/sdk/s/core/SdkManager$3$1;

    iget-object v6, v6, Lcom/maya/sdk/s/core/SdkManager$3$1;->this$1:Lcom/maya/sdk/s/core/SdkManager$3;

    iget-object v6, v6, Lcom/maya/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-virtual {v4, v5, v3, v0, v6}, Lcom/maya/sdk/s/core/SdkManager;->showPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 245
    return-void
.end method
