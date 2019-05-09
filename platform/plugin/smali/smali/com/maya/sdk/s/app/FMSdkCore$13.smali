.class Lcom/maya/sdk/s/app/FMSdkCore$13;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore;->openUserNameAuth(Landroid/content/Context;ZLcom/maya/sdk/framework/interfaces/ResultCallback;)V
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

    .line 593
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$13;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iput-object p2, p0, Lcom/maya/sdk/s/app/FMSdkCore$13;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/maya/sdk/s/app/FMSdkCore$13;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 613
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$13;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$13;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserCanAuthClose(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$13;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$13;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$13;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserAuth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 604
    .local v0, "isAuth":Z
    if-eqz v0, :cond_1

    .line 605
    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$13;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    goto :goto_0

    .line 607
    :cond_1
    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$13;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    const-string v2, "\u60a8\u8fd8\u672a\u8fdb\u884c\u5b9e\u540d\u8ba4\u8bc1"

    invoke-interface {v1, v2}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 610
    .end local v0    # "isAuth":Z
    :goto_0
    return-void
.end method
