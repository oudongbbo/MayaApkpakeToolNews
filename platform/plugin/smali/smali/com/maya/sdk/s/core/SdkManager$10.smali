.class Lcom/maya/sdk/s/core/SdkManager$10;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/core/SdkManager;->login(Ljava/lang/String;Ljava/lang/String;ZLcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/core/SdkManager;

.field final synthetic val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

.field final synthetic val$isPhoneQuickLogin:Z

.field final synthetic val$uame:Ljava/lang/String;

.field final synthetic val$vname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/core/SdkManager;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/core/SdkManager;

    .line 548
    iput-object p1, p0, Lcom/maya/sdk/s/core/SdkManager$10;->this$0:Lcom/maya/sdk/s/core/SdkManager;

    iput-object p2, p0, Lcom/maya/sdk/s/core/SdkManager$10;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    iput-object p3, p0, Lcom/maya/sdk/s/core/SdkManager$10;->val$uame:Ljava/lang/String;

    iput-object p4, p0, Lcom/maya/sdk/s/core/SdkManager$10;->val$vname:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/maya/sdk/s/core/SdkManager$10;->val$isPhoneQuickLogin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoEnd()V
    .locals 9

    .line 558
    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "token":Ljava/lang/String;
    const-string v1, "maya_login_ing"

    sget-object v2, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 560
    .local v8, "tips":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/core/SdkManager$10;->this$0:Lcom/maya/sdk/s/core/SdkManager;

    # getter for: Lcom/maya/sdk/s/core/SdkManager;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;
    invoke-static {v1}, Lcom/maya/sdk/s/core/SdkManager;->access$100(Lcom/maya/sdk/s/core/SdkManager;)Lcom/maya/sdk/s/core/http/RequsetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/s/core/SdkManager$10;->val$uame:Ljava/lang/String;

    iget-object v3, p0, Lcom/maya/sdk/s/core/SdkManager$10;->val$vname:Ljava/lang/String;

    new-instance v5, Lcom/maya/sdk/s/core/SdkManager$10$1;

    invoke-direct {v5, p0}, Lcom/maya/sdk/s/core/SdkManager$10$1;-><init>(Lcom/maya/sdk/s/core/SdkManager$10;)V

    const/4 v6, 0x0

    move-object v4, v0

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestAccessTokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V

    .line 581
    return-void
.end method

.method public clickSwitch()V
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager$10;->this$0:Lcom/maya/sdk/s/core/SdkManager;

    sget-object v1, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/maya/sdk/s/core/SdkManager$10;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/s/core/SdkManager;->showLoginDialog(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 554
    return-void
.end method
