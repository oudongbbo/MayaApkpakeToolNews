.class Lcom/maya/sdk/m/views/ActivationDialog$1$1$1;
.super Ljava/lang/Object;
.source "ActivationDialog.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/views/ActivationDialog$1$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/m/views/ActivationDialog$1$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/views/ActivationDialog$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/m/views/ActivationDialog$1$1;

    .line 172
    iput-object p1, p0, Lcom/maya/sdk/m/views/ActivationDialog$1$1$1;->this$2:Lcom/maya/sdk/m/views/ActivationDialog$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog$1$1$1;->this$2:Lcom/maya/sdk/m/views/ActivationDialog$1$1;

    iget-object v0, v0, Lcom/maya/sdk/m/views/ActivationDialog$1$1;->this$1:Lcom/maya/sdk/m/views/ActivationDialog$1;

    iget-object v0, v0, Lcom/maya/sdk/m/views/ActivationDialog$1;->this$0:Lcom/maya/sdk/m/views/ActivationDialog;

    const/4 v1, 0x1

    # invokes: Lcom/maya/sdk/m/views/ActivationDialog;->controlErrorTips(ZLjava/lang/String;)V
    invoke-static {v0, v1, p2}, Lcom/maya/sdk/m/views/ActivationDialog;->access$000(Lcom/maya/sdk/m/views/ActivationDialog;ZLjava/lang/String;)V

    .line 194
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, "active":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/maya/sdk/m/views/ActivationDialog$1$1$1;->this$2:Lcom/maya/sdk/m/views/ActivationDialog$1$1;

    iget-object v1, v1, Lcom/maya/sdk/m/views/ActivationDialog$1$1;->this$1:Lcom/maya/sdk/m/views/ActivationDialog$1;

    iget-object v1, v1, Lcom/maya/sdk/m/views/ActivationDialog$1;->this$0:Lcom/maya/sdk/m/views/ActivationDialog;

    invoke-virtual {v1}, Lcom/maya/sdk/m/views/ActivationDialog;->dismiss()V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/maya/sdk/m/views/ActivationDialog$1$1$1;->this$2:Lcom/maya/sdk/m/views/ActivationDialog$1$1;

    iget-object v2, v2, Lcom/maya/sdk/m/views/ActivationDialog$1$1;->this$1:Lcom/maya/sdk/m/views/ActivationDialog$1;

    iget-object v2, v2, Lcom/maya/sdk/m/views/ActivationDialog$1;->this$0:Lcom/maya/sdk/m/views/ActivationDialog;

    const-string v3, "\u6fc0\u6d3b\u5931\u8d25"

    # invokes: Lcom/maya/sdk/m/views/ActivationDialog;->controlErrorTips(ZLjava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/maya/sdk/m/views/ActivationDialog;->access$000(Lcom/maya/sdk/m/views/ActivationDialog;ZLjava/lang/String;)V

    .line 187
    :goto_0
    return-void
.end method
