.class Lcom/maya/sdk/s/app/exit/ExitDialog$1;
.super Ljava/lang/Object;
.source "ExitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/exit/ExitDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/exit/ExitDialog;

    .line 61
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$1;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 64
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$1;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    # getter for: Lcom/maya/sdk/s/app/exit/ExitDialog;->isExitClick:Z
    invoke-static {v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->access$000(Lcom/maya/sdk/s/app/exit/ExitDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog$1;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialog;

    # getter for: Lcom/maya/sdk/s/app/exit/ExitDialog;->mCallback:Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;
    invoke-static {v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->access$100(Lcom/maya/sdk/s/app/exit/ExitDialog;)Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;->close()V

    .line 69
    :goto_0
    return-void
.end method
