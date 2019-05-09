.class Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;
.super Ljava/lang/Object;
.source "AutoLoginDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    .line 82
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 87
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    # getter for: Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->access$000(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    # getter for: Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->access$100(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/maya/sdk/s/app/login/AutoLoginDialog;->startAnimate(Landroid/view/View;Landroid/content/Context;)V
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->access$200(Lcom/maya/sdk/s/app/login/AutoLoginDialog;Landroid/view/View;Landroid/content/Context;)V

    .line 88
    return-void
.end method
