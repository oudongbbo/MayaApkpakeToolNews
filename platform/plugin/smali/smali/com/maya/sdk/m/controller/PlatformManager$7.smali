.class Lcom/maya/sdk/m/controller/PlatformManager$7;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager;->doAppActiveFuction(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/PlatformManager;

.field final synthetic val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager;Lcom/maya/sdk/m/interfaces/MResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/PlatformManager;

    .line 975
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$7;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/PlatformManager$7;->val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1001
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$7;->val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/interfaces/MResultCallback;->onSuccess()V

    .line 1002
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 979
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, "url":Ljava/lang/String;
    const-string v1, "a_qq_group_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 981
    .local v1, "a_qq_group_key":Ljava/lang/String;
    const-string v2, "code_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 983
    .local v2, "code_id":Ljava/lang/String;
    iget-object v3, p0, Lcom/maya/sdk/m/controller/PlatformManager$7;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<a_qq_group_key>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<url>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<code_id>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 985
    iget-object v3, p0, Lcom/maya/sdk/m/controller/PlatformManager$7;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    new-instance v4, Lcom/maya/sdk/m/controller/PlatformManager$7$1;

    invoke-direct {v4, p0}, Lcom/maya/sdk/m/controller/PlatformManager$7$1;-><init>(Lcom/maya/sdk/m/controller/PlatformManager$7;)V

    # invokes: Lcom/maya/sdk/m/controller/PlatformManager;->handleAppActiveAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MResultCallback;)V
    invoke-static {v3, v2, v1, v0, v4}, Lcom/maya/sdk/m/controller/PlatformManager;->access$200(Lcom/maya/sdk/m/controller/PlatformManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MResultCallback;)V

    .line 997
    return-void
.end method
