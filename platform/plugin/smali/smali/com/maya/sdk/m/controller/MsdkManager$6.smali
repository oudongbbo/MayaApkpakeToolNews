.class Lcom/maya/sdk/m/controller/MsdkManager$6;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/MsdkManager;->userPayCommon(Landroid/content/Context;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/MsdkManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$payinfos:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/MsdkManager;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 384
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager$6;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/MsdkManager$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/maya/sdk/m/controller/MsdkManager$6;->val$payinfos:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$6;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->sdkCallBack:Lcom/maya/sdk/m/MyMsdkCallback;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$800(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/MyMsdkCallback;

    move-result-object v0

    const-string v1, "pay_cancel"

    invoke-interface {v0, v1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 388
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$6;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager$6;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/maya/sdk/m/controller/MsdkManager$6;->val$payinfos:Ljava/util/HashMap;

    # invokes: Lcom/maya/sdk/m/controller/MsdkManager;->startPay(Landroid/content/Context;Ljava/util/HashMap;)V
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/m/controller/MsdkManager;->access$900(Lcom/maya/sdk/m/controller/MsdkManager;Landroid/content/Context;Ljava/util/HashMap;)V

    .line 389
    return-void
.end method
