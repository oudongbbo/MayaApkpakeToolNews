.class Lcom/maya/sdk/m/controller/PlatformManager$5;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager;->mLoginSuccess(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/PlatformManager;

.field final synthetic val$callback:Lcom/maya/sdk/m/interfaces/MLoginCallback;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager;Lcom/maya/sdk/m/interfaces/MLoginCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/PlatformManager;

    .line 874
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$5;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/PlatformManager$5;->val$callback:Lcom/maya/sdk/m/interfaces/MLoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 939
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$5;->val$callback:Lcom/maya/sdk/m/interfaces/MLoginCallback;

    invoke-interface {v0, p2}, Lcom/maya/sdk/m/interfaces/MLoginCallback;->onFail(Ljava/lang/String;)V

    .line 940
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 878
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$5;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    # getter for: Lcom/maya/sdk/m/controller/PlatformManager;->responseManager:Lcom/maya/sdk/m/http/MRepManager;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/PlatformManager;->access$000(Lcom/maya/sdk/m/controller/PlatformManager;)Lcom/maya/sdk/m/http/MRepManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/m/controller/PlatformManager$5$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/controller/PlatformManager$5$1;-><init>(Lcom/maya/sdk/m/controller/PlatformManager$5;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/m/http/MRepManager;->handleLoginSuccess(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    .line 936
    return-void
.end method
