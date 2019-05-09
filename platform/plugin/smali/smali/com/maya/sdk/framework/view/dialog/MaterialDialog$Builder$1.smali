.class Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder$1;
.super Ljava/lang/Object;
.source "MaterialDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->setView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;

    .line 424
    iput-object p1, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder$1;->this$1:Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 427
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder$1;->this$1:Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->mAlertDialogWindow:Landroid/view/Window;
    invoke-static {v0}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->access$2400(Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;)Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 429
    iget-object v0, p0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder$1;->this$1:Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog$Builder;->this$0:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    # getter for: Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->access$200(Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 431
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 432
    return-void
.end method
