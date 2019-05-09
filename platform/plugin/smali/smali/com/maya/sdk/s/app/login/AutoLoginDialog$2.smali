.class Lcom/maya/sdk/s/app/login/AutoLoginDialog$2;
.super Ljava/lang/Object;
.source "AutoLoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/AutoLoginDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    .line 95
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$2;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$2;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->dismiss()V

    .line 100
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$2;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$2;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    # getter for: Lcom/maya/sdk/s/app/login/AutoLoginDialog;->autoListener:Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->access$300(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;->clickSwitch()V

    .line 102
    return-void
.end method
