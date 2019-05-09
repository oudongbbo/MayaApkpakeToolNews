.class Lcom/maya/sdk/s/app/FMSdkCore$12;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore;->openUserHasGuard(Landroid/content/Context;ZLcom/maya/sdk/framework/interfaces/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/FMSdkCore;

.field final synthetic val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore;Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/FMSdkCore;

    .line 556
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$12;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iput-object p2, p0, Lcom/maya/sdk/s/app/FMSdkCore$12;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/maya/sdk/s/app/FMSdkCore$12;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$12;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$12;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserCanAdultClose(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$12;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$12;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$12;->val$context:Landroid/content/Context;

    .line 567
    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserGuard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 568
    .local v0, "hasGuard":Z
    if-eqz v0, :cond_1

    .line 569
    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$12;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    goto :goto_0

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$12;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    const-string v2, "\u60a8\u8fd8\u672a\u6dfb\u52a0\u76d1\u62a4\u4eba\u4fe1\u606f"

    invoke-interface {v1, v2}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 576
    .end local v0    # "hasGuard":Z
    :goto_0
    return-void
.end method
