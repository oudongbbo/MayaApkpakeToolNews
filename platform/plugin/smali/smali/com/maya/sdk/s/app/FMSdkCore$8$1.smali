.class Lcom/maya/sdk/s/app/FMSdkCore$8$1;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore$8;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/s/app/FMSdkCore$8;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/s/app/FMSdkCore$8;

    .line 325
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$8$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$8$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$8;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$8;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0, p2}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$8$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$8;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$8;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    # getter for: Lcom/maya/sdk/s/app/FMSdkCore;->responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;
    invoke-static {v0}, Lcom/maya/sdk/s/app/FMSdkCore;->access$400(Lcom/maya/sdk/s/app/FMSdkCore;)Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/s/app/FMSdkCore$8$1$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/FMSdkCore$8$1$1;-><init>(Lcom/maya/sdk/s/app/FMSdkCore$8$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleUserAuth(Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback2;)V

    .line 368
    return-void
.end method