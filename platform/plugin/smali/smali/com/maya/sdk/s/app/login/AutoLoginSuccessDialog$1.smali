.class Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog$1;
.super Ljava/lang/Object;
.source "AutoLoginSuccessDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;

    .line 79
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog$1;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 84
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog$1;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog$1;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;

    # getter for: Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->mContent:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->access$000(Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog$1;->this$0:Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;

    # getter for: Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->access$100(Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->startAnimate(Landroid/view/View;Landroid/content/Context;)V
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->access$200(Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;Landroid/view/View;Landroid/content/Context;)V

    .line 85
    return-void
.end method
