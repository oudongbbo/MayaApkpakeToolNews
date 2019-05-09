.class Lcom/maya/sdk/m/controller/MsdkManager$14$1;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/MsdkManager$14;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/m/controller/MsdkManager$14;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/MsdkManager$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/m/controller/MsdkManager$14;

    .line 646
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager$14$1;->this$1:Lcom/maya/sdk/m/controller/MsdkManager$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$14$1;->this$1:Lcom/maya/sdk/m/controller/MsdkManager$14;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/MsdkManager$14;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # invokes: Lcom/maya/sdk/m/controller/MsdkManager;->initCallBackFail(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/maya/sdk/m/controller/MsdkManager;->access$1000(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$14$1;->this$1:Lcom/maya/sdk/m/controller/MsdkManager$14;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/MsdkManager$14;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->repManager:Lcom/maya/sdk/m/http/MRepManager;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$1100(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/http/MRepManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/m/controller/MsdkManager$14$1$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/controller/MsdkManager$14$1$1;-><init>(Lcom/maya/sdk/m/controller/MsdkManager$14$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/m/http/MRepManager;->handleInit(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 661
    return-void
.end method
