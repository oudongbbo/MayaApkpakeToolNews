.class Lcom/maya/sdk/s/core/SdkManager$3;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/core/SdkManager;->userPay(Landroid/content/Context;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/core/SdkManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$paycallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

.field final synthetic val$payinfo:Lcom/maya/sdk/framework/pay/PayInfoBean;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/core/SdkManager;Lcom/maya/sdk/framework/pay/PayInfoBean;Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/core/SdkManager;

    .line 222
    iput-object p1, p0, Lcom/maya/sdk/s/core/SdkManager$3;->this$0:Lcom/maya/sdk/s/core/SdkManager;

    iput-object p2, p0, Lcom/maya/sdk/s/core/SdkManager$3;->val$payinfo:Lcom/maya/sdk/framework/pay/PayInfoBean;

    iput-object p3, p0, Lcom/maya/sdk/s/core/SdkManager$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/maya/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager$3;->val$paycallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p2}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager$3;->this$0:Lcom/maya/sdk/s/core/SdkManager;

    # getter for: Lcom/maya/sdk/s/core/SdkManager;->responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;
    invoke-static {v0}, Lcom/maya/sdk/s/core/SdkManager;->access$000(Lcom/maya/sdk/s/core/SdkManager;)Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/s/core/SdkManager$3$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/core/SdkManager$3$1;-><init>(Lcom/maya/sdk/s/core/SdkManager$3;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 268
    return-void
.end method
