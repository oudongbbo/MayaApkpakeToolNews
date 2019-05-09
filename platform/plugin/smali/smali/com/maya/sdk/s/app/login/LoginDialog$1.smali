.class Lcom/maya/sdk/s/app/login/LoginDialog$1;
.super Landroid/os/Handler;
.source "LoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/LoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/LoginDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/LoginDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/LoginDialog;

    .line 119
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/LoginDialog$1;->this$0:Lcom/maya/sdk/s/app/login/LoginDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 123
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 124
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog$1;->this$0:Lcom/maya/sdk/s/app/login/LoginDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->dismiss()V

    .line 125
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog$1;->this$0:Lcom/maya/sdk/s/app/login/LoginDialog;

    # getter for: Lcom/maya/sdk/s/app/login/LoginDialog;->loginListener:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->access$000(Lcom/maya/sdk/s/app/login/LoginDialog;)Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog$1;->this$0:Lcom/maya/sdk/s/app/login/LoginDialog;

    # getter for: Lcom/maya/sdk/s/app/login/LoginDialog;->loginListener:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->access$000(Lcom/maya/sdk/s/app/login/LoginDialog;)Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method
