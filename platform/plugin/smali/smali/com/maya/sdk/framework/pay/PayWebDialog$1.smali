.class Lcom/maya/sdk/framework/pay/PayWebDialog$1;
.super Ljava/lang/Object;
.source "PayWebDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/pay/PayWebDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

.field final synthetic val$mMaterialDialog:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/pay/PayWebDialog;Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;

    .line 172
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$1;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    iput-object p2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$1;->val$mMaterialDialog:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$1;->val$mMaterialDialog:Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->dismiss()V

    .line 175
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$1;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->payWebDismiss(I)V

    .line 176
    return-void
.end method
