.class Lcom/maya/sdk/m/views/UpdateDialog$1;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/views/UpdateDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/views/UpdateDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/views/UpdateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/views/UpdateDialog;

    .line 99
    iput-object p1, p0, Lcom/maya/sdk/m/views/UpdateDialog$1;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog$1;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->switch_on:Z
    invoke-static {v0}, Lcom/maya/sdk/m/views/UpdateDialog;->access$000(Lcom/maya/sdk/m/views/UpdateDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog$1;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    const/4 v1, 0x0

    # setter for: Lcom/maya/sdk/m/views/UpdateDialog;->switch_on:Z
    invoke-static {v0, v1}, Lcom/maya/sdk/m/views/UpdateDialog;->access$002(Lcom/maya/sdk/m/views/UpdateDialog;Z)Z

    .line 105
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog$1;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->update_start:Landroid/widget/Button;
    invoke-static {v0}, Lcom/maya/sdk/m/views/UpdateDialog;->access$200(Lcom/maya/sdk/m/views/UpdateDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog$1;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    const-string v2, "maya_update_start"

    # invokes: Lcom/maya/sdk/m/views/UpdateDialog;->getString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/maya/sdk/m/views/UpdateDialog;->access$100(Lcom/maya/sdk/m/views/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog$1;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog$1;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/maya/sdk/m/views/UpdateDialog;->access$300(Lcom/maya/sdk/m/views/UpdateDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/views/UpdateDialog;->stopDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog$1;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog$1;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/maya/sdk/m/views/UpdateDialog;->access$300(Lcom/maya/sdk/m/views/UpdateDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/views/UpdateDialog;->checkDownload(Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void
.end method
