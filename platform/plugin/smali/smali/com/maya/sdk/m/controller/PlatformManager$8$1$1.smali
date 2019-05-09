.class Lcom/maya/sdk/m/controller/PlatformManager$8$1$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager$8$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/m/controller/PlatformManager$8$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/m/controller/PlatformManager$8$1;

    .line 1021
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 1046
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$8$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$8;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$8;->val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;

    invoke-interface {v0, p2}, Lcom/maya/sdk/m/interfaces/MResultCallback;->onFail(Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .line 1026
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    new-instance v0, Lcom/maya/sdk/m/views/ActivationDialog;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$8$1;

    iget-object v1, v1, Lcom/maya/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$8;

    iget-object v1, v1, Lcom/maya/sdk/m/controller/PlatformManager$8;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v1, v1, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/m/views/ActivationDialog;-><init>(Landroid/content/Context;)V

    .line 1029
    .local v0, "activeDialog":Lcom/maya/sdk/m/views/ActivationDialog;
    iget-object v1, p0, Lcom/maya/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$8$1;

    iget-object v1, v1, Lcom/maya/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$8;

    iget-object v1, v1, Lcom/maya/sdk/m/controller/PlatformManager$8;->val$code_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/maya/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$8$1;

    iget-object v2, v2, Lcom/maya/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$8;

    iget-object v2, v2, Lcom/maya/sdk/m/controller/PlatformManager$8;->val$a_qq_group_key:Ljava/lang/String;

    iget-object v3, p0, Lcom/maya/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$8$1;

    iget-object v3, v3, Lcom/maya/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$8;

    iget-object v3, v3, Lcom/maya/sdk/m/controller/PlatformManager$8;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/maya/sdk/m/views/ActivationDialog;->setActivateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    new-instance v1, Lcom/maya/sdk/m/controller/PlatformManager$8$1$1$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/controller/PlatformManager$8$1$1$1;-><init>(Lcom/maya/sdk/m/controller/PlatformManager$8$1$1;)V

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/views/ActivationDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1037
    invoke-virtual {v0}, Lcom/maya/sdk/m/views/ActivationDialog;->show()V

    .line 1038
    .end local v0    # "activeDialog":Lcom/maya/sdk/m/views/ActivationDialog;
    goto :goto_0

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$8$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$8$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$8;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$8;->val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/interfaces/MResultCallback;->onSuccess()V

    .line 1042
    :goto_0
    return-void
.end method
