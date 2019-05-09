.class Lcom/maya/sdk/m/controller/PlatformManager$3;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/PlatformManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$payinfos:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager;Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/PlatformManager;

    .line 261
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$3;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/PlatformManager$3;->val$payinfos:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/maya/sdk/m/controller/PlatformManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$3;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    const-string v1, "pay_cancel"

    invoke-interface {v0, v1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onConfirm(Ljava/lang/String;)V
    .locals 3
    .param p1, "money"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$3;->val$payinfos:Ljava/util/HashMap;

    const-string v1, "money"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$3;->val$payinfos:Ljava/util/HashMap;

    const-string v1, "money"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$3;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/PlatformManager$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/maya/sdk/m/controller/PlatformManager$3;->val$payinfos:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/m/controller/PlatformManager;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 268
    return-void
.end method
