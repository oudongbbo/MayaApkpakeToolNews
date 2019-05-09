.class Lcom/maya/sdk/m/controller/PlatformManager$8;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager;->handleAppActiveAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/PlatformManager;

.field final synthetic val$a_qq_group_key:Ljava/lang/String;

.field final synthetic val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;

.field final synthetic val$code_id:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/PlatformManager;

    .line 1013
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$8;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/PlatformManager$8;->val$code_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/maya/sdk/m/controller/PlatformManager$8;->val$a_qq_group_key:Ljava/lang/String;

    iput-object p4, p0, Lcom/maya/sdk/m/controller/PlatformManager$8;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/maya/sdk/m/controller/PlatformManager$8;->val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 1060
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$8;->val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;

    invoke-interface {v0, p2}, Lcom/maya/sdk/m/interfaces/MResultCallback;->onFail(Ljava/lang/String;)V

    .line 1061
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 1017
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$8;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    # getter for: Lcom/maya/sdk/m/controller/PlatformManager;->responseManager:Lcom/maya/sdk/m/http/MRepManager;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/PlatformManager;->access$000(Lcom/maya/sdk/m/controller/PlatformManager;)Lcom/maya/sdk/m/http/MRepManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/m/controller/PlatformManager$8$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/controller/PlatformManager$8$1;-><init>(Lcom/maya/sdk/m/controller/PlatformManager$8;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/m/http/MRepManager;->handleRepContent(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 1056
    return-void
.end method
