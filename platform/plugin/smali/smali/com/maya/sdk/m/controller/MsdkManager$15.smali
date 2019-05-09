.class Lcom/maya/sdk/m/controller/MsdkManager$15;
.super Landroid/os/Handler;
.source "MsdkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/m/controller/MsdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/MsdkManager;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/MsdkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 689
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager$15;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 691
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 693
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$15;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$600(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/http/MReqManager;

    move-result-object v0

    const-string v1, "init_success"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/http/MReqManager;->submitSdkAction(Ljava/lang/String;)V

    .line 696
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 698
    .local v0, "isShowSplash":Z
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager$15;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # invokes: Lcom/maya/sdk/m/controller/MsdkManager;->initAction(Z)V
    invoke-static {v1, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$1300(Lcom/maya/sdk/m/controller/MsdkManager;Z)V

    .line 699
    return-void
.end method
