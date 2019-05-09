.class Lcom/maya/sdk/m/controller/MsdkManager$4$1;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/MsdkManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/m/controller/MsdkManager$4;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/MsdkManager$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/m/controller/MsdkManager$4;

    .line 325
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager$4$1;->this$1:Lcom/maya/sdk/m/controller/MsdkManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$4$1;->this$1:Lcom/maya/sdk/m/controller/MsdkManager$4;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/MsdkManager$4;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->sdkCallBack:Lcom/maya/sdk/m/MyMsdkCallback;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$800(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/MyMsdkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onExitGameFail()V

    .line 333
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$4$1;->this$1:Lcom/maya/sdk/m/controller/MsdkManager$4;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/MsdkManager$4;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->sdkCallBack:Lcom/maya/sdk/m/MyMsdkCallback;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$800(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/MyMsdkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onExitGameSuccess()V

    .line 329
    return-void
.end method
