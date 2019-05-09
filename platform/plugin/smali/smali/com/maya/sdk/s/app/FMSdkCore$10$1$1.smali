.class Lcom/maya/sdk/s/app/FMSdkCore$10$1$1;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore$10$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/s/app/FMSdkCore$10$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore$10$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/s/app/FMSdkCore$10$1;

    .line 481
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$10$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$10$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$10$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$10$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$10;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$10;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 484
    const-string v0, "amount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 485
    .local v0, "money":I
    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$10$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$10$1;

    iget-object v1, v1, Lcom/maya/sdk/s/app/FMSdkCore$10$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$10;

    iget-object v1, v1, Lcom/maya/sdk/s/app/FMSdkCore$10;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    # getter for: Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/s/app/FMSdkCore;->access$000(Lcom/maya/sdk/s/app/FMSdkCore;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserNoAdultPayMax(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 488
    new-instance v1, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    iget-object v2, p0, Lcom/maya/sdk/s/app/FMSdkCore$10$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$10$1;

    iget-object v2, v2, Lcom/maya/sdk/s/app/FMSdkCore$10$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$10;

    iget-object v2, v2, Lcom/maya/sdk/s/app/FMSdkCore$10;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    # getter for: Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/s/app/FMSdkCore;->access$000(Lcom/maya/sdk/s/app/FMSdkCore;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;-><init>(Landroid/content/Context;)V

    .line 489
    .local v1, "dialog":Lcom/maya/sdk/framework/view/dialog/MaterialDialog;
    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 490
    const-string v2, "\u60a8\u672a\u6ee118\u5c81\uff0c\u8bf7\u8c28\u614e\u6d88\u8d39!"

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 491
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/maya/sdk/s/app/FMSdkCore$10$1$1$1;

    invoke-direct {v3, p0}, Lcom/maya/sdk/s/app/FMSdkCore$10$1$1$1;-><init>(Lcom/maya/sdk/s/app/FMSdkCore$10$1$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 498
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setCancelable(Z)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 499
    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setCanceledOnTouchOutside(Z)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 500
    invoke-virtual {v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->show()V

    .line 502
    .end local v1    # "dialog":Lcom/maya/sdk/framework/view/dialog/MaterialDialog;
    :cond_0
    return-void
.end method
