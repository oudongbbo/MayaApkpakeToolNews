.class Lcom/maya/sdk/m/controller/MsdkManager$1$1;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/MsdkManager$1;->onExitGameSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/m/controller/MsdkManager$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/MsdkManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/m/controller/MsdkManager$1;

    .line 210
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager$1$1;->this$1:Lcom/maya/sdk/m/controller/MsdkManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1$1;->this$1:Lcom/maya/sdk/m/controller/MsdkManager$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onExitGameSuccess()V

    .line 218
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$1$1;->this$1:Lcom/maya/sdk/m/controller/MsdkManager$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/MsdkManager$1;->val$callback:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onExitGameSuccess()V

    .line 214
    return-void
.end method
