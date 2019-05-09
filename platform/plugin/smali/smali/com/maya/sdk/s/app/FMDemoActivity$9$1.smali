.class Lcom/maya/sdk/s/app/FMDemoActivity$9$1;
.super Ljava/lang/Object;
.source "FMDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMDemoActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/s/app/FMDemoActivity$9;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMDemoActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/s/app/FMDemoActivity$9;

    .line 289
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$9$1;->this$1:Lcom/maya/sdk/s/app/FMDemoActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 293
    new-instance v0, Lcom/maya/sdk/framework/pay/PayInfoBean;

    invoke-direct {v0}, Lcom/maya/sdk/framework/pay/PayInfoBean;-><init>()V

    .line 294
    .local v0, "info":Lcom/maya/sdk/framework/pay/PayInfoBean;
    const-string v1, "0.01"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setMoney(Ljava/lang/String;)V

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s_oder_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_no(Ljava/lang/String;)V

    .line 296
    const-string v1, "\u4e00\u6bdb\u94b1\u90fd\u4e0d\u7ed9\u6211"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_name(Ljava/lang/String;)V

    .line 297
    const-string v1, "!*()"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_ext(Ljava/lang/String;)V

    .line 298
    const-string v1, "110"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setRole_id(Ljava/lang/String;)V

    .line 299
    const-string v1, "\u5f20\u4e09\u674e\u56db"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setRole_name(Ljava/lang/String;)V

    .line 300
    const-string v1, "12"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setRole_level(Ljava/lang/String;)V

    .line 301
    const-string v1, "131415"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setServer_id(Ljava/lang/String;)V

    .line 302
    const-string v1, "\u68a6\u56de\u5927\u5510"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setServer_name(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$9$1;->this$1:Lcom/maya/sdk/s/app/FMDemoActivity$9;

    iget-object v1, v1, Lcom/maya/sdk/s/app/FMDemoActivity$9;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    # getter for: Lcom/maya/sdk/s/app/FMDemoActivity;->mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;
    invoke-static {v1}, Lcom/maya/sdk/s/app/FMDemoActivity;->access$000(Lcom/maya/sdk/s/app/FMDemoActivity;)Lcom/maya/sdk/s/app/FMSdkCore;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/s/app/FMDemoActivity$9$1;->this$1:Lcom/maya/sdk/s/app/FMDemoActivity$9;

    iget-object v2, v2, Lcom/maya/sdk/s/app/FMDemoActivity$9;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    new-instance v3, Lcom/maya/sdk/s/app/FMDemoActivity$9$1$1;

    invoke-direct {v3, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$9$1$1;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity$9$1;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/maya/sdk/s/app/FMSdkCore;->userPay(Landroid/content/Context;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 320
    return-void
.end method
