.class Lcom/maya/sdk/s/app/login/view/LoginContent$1;
.super Ljava/lang/Object;
.source "LoginContent.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/view/LoginContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginContent;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginContent;

    .line 172
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginContent$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 190
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginContent;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getCallBack()Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 177
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginContent;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getCallBack()Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 178
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginContent;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->closeLoginDialog()V

    .line 179
    return-void
.end method
