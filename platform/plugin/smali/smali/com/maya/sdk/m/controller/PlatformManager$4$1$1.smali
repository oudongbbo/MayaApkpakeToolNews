.class Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager$4$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    .line 307
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$4;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 310
    const-string v0, "no"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "no":Ljava/lang/String;
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "type":Ljava/lang/String;
    const-string v2, "cch_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "cch_data":Ljava/lang/String;
    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "url":Ljava/lang/String;
    const-string v4, "new"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    iget-object v4, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v4, v4, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v4, v4, Lcom/maya/sdk/m/controller/PlatformManager$4;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v4, v4, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/maya/sdk/m/model/MConfigManager;->setIsNewPay(Landroid/content/Context;Z)V

    .line 320
    new-instance v4, Lcom/maya/sdk/framework/pay/PayInfoBean;

    invoke-direct {v4}, Lcom/maya/sdk/framework/pay/PayInfoBean;-><init>()V

    .line 321
    .local v4, "infos":Lcom/maya/sdk/framework/pay/PayInfoBean;
    iget-object v5, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v6, "money"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setMoney(Ljava/lang/String;)V

    .line 322
    iget-object v5, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v6, "order_no"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_no(Ljava/lang/String;)V

    .line 323
    iget-object v5, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v6, "order_name"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_name(Ljava/lang/String;)V

    .line 324
    iget-object v5, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v6, "order_ext"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_ext(Ljava/lang/String;)V

    .line 325
    iget-object v5, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v6, "role_id"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setRole_id(Ljava/lang/String;)V

    .line 326
    iget-object v5, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v6, "role_name"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setRole_name(Ljava/lang/String;)V

    .line 327
    iget-object v5, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v6, "role_level"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setRole_level(Ljava/lang/String;)V

    .line 328
    iget-object v5, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v6, "server_id"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setServer_id(Ljava/lang/String;)V

    .line 329
    iget-object v5, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v6, "server_name"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setServer_name(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v4, v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_no_m(Ljava/lang/String;)V

    .line 331
    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_ext_m(Ljava/lang/String;)V

    .line 333
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_PAY_PAGE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, v3

    .line 335
    .local v5, "host":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v6, v6, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v6, v6, Lcom/maya/sdk/m/controller/PlatformManager$4;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v6, v6, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1$1;

    invoke-direct {v7, p0}, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1$1;-><init>(Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;)V

    invoke-static {v6, v5, v4, v7}, Lcom/maya/sdk/m/utils/MsdkUtils;->showSdkPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 349
    .end local v4    # "infos":Lcom/maya/sdk/framework/pay/PayInfoBean;
    .end local v5    # "host":Ljava/lang/String;
    goto :goto_1

    .line 351
    :cond_1
    iget-object v4, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v4, v4, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v4, v4, Lcom/maya/sdk/m/controller/PlatformManager$4;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v4, v4, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/maya/sdk/m/model/MConfigManager;->setIsNewPay(Landroid/content/Context;Z)V

    .line 353
    iget-object v4, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v4, v4, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v4, v4, Lcom/maya/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v5, "order_no_m"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v4, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v4, v4, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v4, v4, Lcom/maya/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    const-string v5, "order_cch_data"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v4, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v4, v4, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v4, v4, Lcom/maya/sdk/m/controller/PlatformManager$4;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v4, v4, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    iget-object v5, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager$4;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v5, v5, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v6, v6, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v6, v6, Lcom/maya/sdk/m/controller/PlatformManager$4;->val$payinfos:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6}, Lcom/maya/sdk/m/controller/PlatformCore;->mUserPay(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 357
    :goto_1
    return-void
.end method
