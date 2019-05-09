.class Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$1;
.super Ljava/lang/Object;
.source "ExitDialogForSecond.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    .line 73
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$1;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 77
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$1;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    # getter for: Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->isExitClick:Z
    invoke-static {v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->access$000(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$1;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    # getter for: Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mCallback:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;
    invoke-static {v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->access$100(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;->close()V

    .line 82
    :goto_0
    return-void
.end method
