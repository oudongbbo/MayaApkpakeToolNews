.class Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;
.super Ljava/lang/Object;
.source "ExitDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/exit/ExitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExitDialogExitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/exit/ExitDialog;

    .line 184
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    const/4 v1, 0x1

    # setter for: Lcom/maya/sdk/s/app/exit/ExitDialog;->isExitClick:Z
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialog;->access$002(Lcom/maya/sdk/s/app/exit/ExitDialog;Z)Z

    .line 188
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    # getter for: Lcom/maya/sdk/s/app/exit/ExitDialog;->mCallback:Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;
    invoke-static {v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->access$100(Lcom/maya/sdk/s/app/exit/ExitDialog;)Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;->exit()V

    .line 189
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->dismiss()V

    .line 190
    return-void
.end method
