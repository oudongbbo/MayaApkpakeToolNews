.class Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;
.super Ljava/lang/Object;
.source "ExitDialogForSecond.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExitDialogExitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    .line 209
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    const/4 v1, 0x1

    # setter for: Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->isExitClick:Z
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->access$002(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;Z)Z

    .line 214
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    # getter for: Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mCallback:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;
    invoke-static {v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->access$100(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;->exit()V

    .line 215
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;->this$0:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->dismiss()V

    .line 216
    return-void
.end method
