.class Lcom/maya/sdk/s/core/SdkManager$1;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/core/SdkManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/core/SdkManager;

.field final synthetic val$resultCallback:Lcom/maya/sdk/framework/interfaces/ResultCallback;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/core/SdkManager;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/core/SdkManager;

    .line 110
    iput-object p1, p0, Lcom/maya/sdk/s/core/SdkManager$1;->this$0:Lcom/maya/sdk/s/core/SdkManager;

    iput-object p2, p0, Lcom/maya/sdk/s/core/SdkManager$1;->val$resultCallback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager$1;->val$resultCallback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0, p2}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager$1;->val$resultCallback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 114
    return-void
.end method
