.class Lcom/maya/sdk/m/views/UpdateDialog$2;
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

    .line 114
    iput-object p1, p0, Lcom/maya/sdk/m/views/UpdateDialog$2;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog$2;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    iget-object v1, p0, Lcom/maya/sdk/m/views/UpdateDialog$2;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/maya/sdk/m/views/UpdateDialog;->access$300(Lcom/maya/sdk/m/views/UpdateDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/views/UpdateDialog;->checkDownload(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog$2;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # getter for: Lcom/maya/sdk/m/views/UpdateDialog;->isForceUpdate:Z
    invoke-static {v0}, Lcom/maya/sdk/m/views/UpdateDialog;->access$400(Lcom/maya/sdk/m/views/UpdateDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog$2;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    # invokes: Lcom/maya/sdk/m/views/UpdateDialog;->back2Launcher()V
    invoke-static {v0}, Lcom/maya/sdk/m/views/UpdateDialog;->access$500(Lcom/maya/sdk/m/views/UpdateDialog;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/views/UpdateDialog$2;->this$0:Lcom/maya/sdk/m/views/UpdateDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/m/views/UpdateDialog;->dismiss()V

    .line 130
    :goto_0
    return-void
.end method
